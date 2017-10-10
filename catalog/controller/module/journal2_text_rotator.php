<?php
class ControllerModuleJournal2TextRotator extends Controller {

    private static $CACHEABLE = null;
    private $google_fonts = array();

    protected $data = array();

    protected function render() {
        return Front::$IS_OC2 ? $this->load->view($this->template, $this->data) : parent::render();
    }

    public function __construct($registry) {
        parent::__construct($registry);
        if (!defined('JOURNAL_INSTALLED')) {
            return;
        }
        $this->load->model('journal2/module');
        $this->load->model('journal2/menu');
        $this->load->model('tool/image');

        if (self::$CACHEABLE === null) {
            self::$CACHEABLE = (bool)$this->journal2->settings->get('config_system_settings.text_rotator_cache');
        }
    }

    public function index($setting) {
        if (!defined('JOURNAL_INSTALLED')) {
            return;
        }

        Journal2::startTimer(get_class($this));

        /* get module data from db */
        $module_data = $this->model_journal2_module->getModule($setting['module_id']);
        if (!$module_data || !isset($module_data['module_data']) || !$module_data['module_data']) return;
        $module_data = $module_data['module_data'];

        /* hide on mobile */
        if (Journal2Utils::getProperty($module_data, 'disable_mobile') && (Journal2Cache::$mobile_detect->isMobile() && !Journal2Cache::$mobile_detect->isTablet()) && $this->journal2->settings->get('responsive_design')) {
            return;
        }

        $this->data['css'] = '';

        /* css for top / bottom positions */
        if (in_array($setting['position'], array('top', 'bottom'))) {
            $padding = $this->journal2->settings->get('module_margins', 20) . 'px';
            /* outer */
            $css = Journal2Utils::getBackgroundCssProperties(Journal2Utils::getProperty($module_data, 'background'));
            $css[] = 'padding-top: ' . Journal2Utils::getProperty($module_data, 'margin_top', 0) . 'px';
            $css[] = 'padding-bottom: ' . Journal2Utils::getProperty($module_data, 'margin_bottom', 0) . 'px';
            $this->journal2->settings->set('module_journal2_text_rotator_' . $setting['module_id'], implode('; ', $css));

            /* inner css */
            $css = array();
            if (Journal2Utils::getProperty($module_data, 'fullwidth')) {
                $css[] = 'max-width: 100%';
                $css[] = 'padding-left: ' . $padding;
                $css[] = 'padding-right: ' . $padding;
            } else {
                $css[] = 'max-width: ' . $this->journal2->settings->get('site_width', 1024) . 'px';
            }
            $this->data['css'] = implode('; ', $css);
        }

        $cache_property = "module_journal_text_rotator_{$setting['module_id']}_{$setting['layout_id']}_{$setting['position']}";

        $cache = $this->journal2->cache->get($cache_property);

        if ($cache === null || self::$CACHEABLE !== true) {
            $module = mt_rand();

            $this->data['hide_on_mobile_class'] = Journal2Utils::getProperty($module_data, 'disable_mobile') ? 'hide-on-mobile' : '';

            /* set global module properties */
            $this->data['module'] = $module;
            $this->data['transition_delay'] = Journal2Utils::getProperty($module_data, 'transition_delay', 4000);
            $this->data['bullets_position'] = Journal2Utils::getProperty($module_data, 'bullets_position', 'center');

            $this->data['title'] = Journal2Utils::getProperty($module_data, 'module_title.value.' . $this->config->get('config_language_id'), '');

            /* quote options */
            $css = array();

            $css[] = 'text-align: ' . Journal2Utils::getProperty($module_data, 'text_align', 'center');
            $this->data['text_align'] = Journal2Utils::getProperty($module_data, 'text_align', 'center');
            if (Journal2Utils::getProperty($module_data, 'text_font.value.font_type') === 'google') {
                $font_name = Journal2Utils::getProperty($module_data, 'text_font.value.font_name');
                $font_subset = Journal2Utils::getProperty($module_data, 'text_font.value.font_subset');
                $font_weight = Journal2Utils::getProperty($module_data, 'text_font.value.font_weight');
                $this->journal2->google_fonts->add($font_name, $font_subset, $font_weight);
                $this->google_fonts[] = array(
                    'name'  => $font_name,
                    'subset'=> $font_subset,
                    'weight'=> $font_weight
                );
                $weight = filter_var(Journal2Utils::getProperty($module_data, 'text_font.value.font_weight'), FILTER_SANITIZE_NUMBER_INT);
                $css[] = 'font-weight: ' . ($weight ? $weight : 400);
                $css[] = "font-family: '" . Journal2Utils::getProperty($module_data, 'text_font.value.font_name') . "'";
            }
            if (Journal2Utils::getProperty($module_data, 'text_font.value.font_type') === 'system') {
                $css[] = 'font-weight: ' . Journal2Utils::getProperty($module_data, 'text_font.value.font_weight');
                $css[] = 'font-family: ' . Journal2Utils::getProperty($module_data, 'text_font.value.font_family');
            }
            if (Journal2Utils::getProperty($module_data, 'text_font.value.font_type') !== 'none') {
                $css[] = 'font-size: ' . Journal2Utils::getProperty($module_data, 'text_font.value.font_size');
                $css[] = 'font-style: ' . Journal2Utils::getProperty($module_data, 'text_font.value.font_style');
                $css[] = 'text-transform: ' . Journal2Utils::getProperty($module_data, 'text_font.value.text_transform');
            }
            if (Journal2Utils::getProperty($module_data, 'text_font.value.color.value.color')) {
                $css[] = 'color: ' . Journal2Utils::getColor(Journal2Utils::getProperty($module_data, 'text_font.value.color.value.color'));
            }

            $this->data['quote_css'] = implode('; ', $css);

            /* author options */
            $css = array();

            if (Journal2Utils::getProperty($module_data, 'author_font.value.font_type') === 'google') {
                $font_name = Journal2Utils::getProperty($module_data, 'author_font.value.font_name');
                $font_subset = Journal2Utils::getProperty($module_data, 'author_font.value.font_subset');
                $font_weight = Journal2Utils::getProperty($module_data, 'author_font.value.font_weight');
                $this->journal2->google_fonts->add($font_name, $font_subset, $font_weight);
                $this->google_fonts[] = array(
                    'name'  => $font_name,
                    'subset'=> $font_subset,
                    'weight'=> $font_weight
                );
                $weight = filter_var(Journal2Utils::getProperty($module_data, 'author_font.value.font_weight'), FILTER_SANITIZE_NUMBER_INT);
                $css[] = 'font-weight: ' . ($weight ? $weight : 400);
                $css[] = "font-family: '" . Journal2Utils::getProperty($module_data, 'author_font.value.font_name') . "'";
            }
            if (Journal2Utils::getProperty($module_data, 'author_font.value.font_type') === 'system') {
                $css[] = 'font-weight: ' . Journal2Utils::getProperty($module_data, 'author_font.value.font_weight');
                $css[] = 'font-family: ' . Journal2Utils::getProperty($module_data, 'author_font.value.font_family');
            }
            $css[] = 'text-align: ' . Journal2Utils::getProperty($module_data, 'author_align', 'center');
            if (Journal2Utils::getProperty($module_data, 'author_font.value.font_type') !== 'none') {
                $css[] = 'font-size: ' . Journal2Utils::getProperty($module_data, 'author_font.value.font_size');
                $css[] = 'font-style: ' . Journal2Utils::getProperty($module_data, 'author_font.value.font_style');
                $css[] = 'text-transform: ' . Journal2Utils::getProperty($module_data, 'author_font.value.text_transform');
            }
            if (Journal2Utils::getProperty($module_data, 'author_font.value.color.value.color')) {
                $css[] = 'color: ' . Journal2Utils::getColor(Journal2Utils::getProperty($module_data, 'author_font.value.color.value.color'));
            }

            $this->data['author_css'] = implode('; ', $css);

            /* rotator options */
            $css = Journal2Utils::getBackgroundCssProperties(Journal2Utils::getProperty($module_data, 'text_background'));
            $this->data['rotator_css'] = implode('; ', $css);

            /* image options */
            $css = array();

            $css = array_merge($css, Journal2Utils::getBorderCssProperties(Journal2Utils::getProperty($module_data, 'image_border')));

            switch (Journal2Utils::getProperty($module_data, 'image_align')) {
                case 'left':
                    $this->data['image_align'] = 'left';
                    $css[] = 'float: left';
                    break;
                case 'center':
                    $this->data['image_align'] = 'center';
                    $css[] = 'float: none';
                    $css[] = 'margin:0 auto';
                    $css[] = 'margin-bottom:10px';
                    break;
                case 'right':
                    $this->data['image_align'] = 'right';
                    $css[] = 'float: right';
                    break;
            }

            $this->data['image_css'] = implode('; ', $css);

            /* sections */
            $this->data['sections'] = array();

            $sections = Journal2Utils::getProperty($module_data, 'sections', array());
            $sections = Journal2Utils::sortArray($sections);

            $image_width  = Journal2Utils::getProperty($module_data, 'image_width', 150);
            $image_height = Journal2Utils::getProperty($module_data, 'image_height', 150);

            foreach ($sections as $section) {
                if (!$section['status']) continue;
                $this->data['sections'][] = array(
                    'author'        => Journal2Utils::getProperty($section, 'author'),
                    'image'         => Journal2Utils::resizeImage($this->model_tool_image, $section, $image_width, $image_height, 'crop'),
                    'image_width'   => $image_width,
                    'image_height'  => $image_height,
                    'text'          => Journal2Utils::getProperty($section, 'text.value.' . $this->config->get('config_language_id')),
                    'icon'          => Journal2Utils::getIconOptions2(Journal2Utils::getProperty($section, 'icon'))
                );
            }

            /* bullets */
            $this->data['bullets'] = Journal2Utils::getProperty($module_data, 'bullets') && count($this->data['sections']) > 1 ? true : false;

            /* pause on hover */
            $this->data['pause_on_hover'] = Journal2Utils::getProperty($module_data, 'pause_on_hover', '1');

            $this->template = $this->config->get('config_template') . '/template/journal2/module/text_rotator.tpl';

            if (self::$CACHEABLE === true) {
                $html = Minify_HTML::minify($this->render(), array(
                    'xhtml' => false,
                    'jsMinifier' => 'j2_js_minify'
                ));
                $this->journal2->cache->set($cache_property, $html);
                $this->journal2->cache->set($cache_property . '_fonts', json_encode($this->google_fonts));
            }
        } else {
            if ($fonts = $this->journal2->cache->get($cache_property . '_fonts')) {
                $fonts = json_decode($fonts, true);
                if (is_array($fonts)) {
                    foreach ($fonts as $font) {
                        $this->journal2->google_fonts->add($font['name'], $font['subset'], $font['weight']);
                    }
                }
            }
            $this->template = $this->config->get('config_template') . '/template/journal2/cache/cache.tpl';
            $this->data['cache'] = $cache;
        }

        $this->document->addScript('catalog/view/theme/journal2/lib/quovolver/jquery.quovolver.js');

        $output = $this->render();

        Journal2::stopTimer(get_class($this));

        return $output;
    }

}
