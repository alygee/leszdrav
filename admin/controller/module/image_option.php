<?php
class ControllerModuleImageOption extends Controller {
	private $error = array();
		
	public function index() {   
		$this->load->language('module/image_option');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled']        = $this->language->get('text_enabled');
		$this->data['text_disabled']       = $this->language->get('text_disabled');
		$this->data['text_content_top']    = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left']    = $this->language->get('text_column_left');
		$this->data['text_column_right']   = $this->language->get('text_column_right');
				
		$this->data['entry_layout']     = $this->language->get('entry_layout');
		$this->data['entry_position']   = $this->language->get('entry_position');
		$this->data['entry_status']     = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
					
		$this->data['button_cancel']     = $this->language->get('button_cancel');
		
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/image_option', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['modules'] = $this->config->get('image_option_module');
		
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
						
		$this->template = 'module/image_option.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
  public function install() {
    $this->load->model('catalog/image_option');
    $this->model_catalog_image_option->install();
  }

  public function uninstall() {
    $this->load->model('catalog/image_option');
    $this->model_catalog_image_option->uninstall();
  }

	private function validate() {
	}
}