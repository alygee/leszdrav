<?php  
class ControllerModulePhotoTestimonial extends Controller {

	protected function addhttp($url) {
	    if (!preg_match("~^(?:f|ht)tps?://~i", $url)) {
	        $url = "http://" . $url;
	    }
	    return $url;
	}


	protected function url_exists($url) {
		$ch = @curl_init($url);
		@curl_setopt($ch, CURLOPT_HEADER, TRUE);
		@curl_setopt($ch, CURLOPT_NOBODY, TRUE);
		@curl_setopt($ch, CURLOPT_FOLLOWLOCATION, FALSE);
		@curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
		@curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 1);

		$status = array();
		preg_match('/HTTP\/.* ([0-9]+) .*/', @curl_exec($ch) , $status);

	    	if (isset($status[1])) return ($status[1] == 200);

		return false;
	}


	protected function index($setting) {
		$this->language->load('module/phototestimonial');

		$this->data['phototestimonial_title'] = html_entity_decode($setting['phototestimonial_title'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');

      	$this->data['heading_title'] = $this->language->get('heading_title');
      	$this->data['text_more'] = $this->language->get('text_more');
      	$this->data['text_more2'] = $this->language->get('text_more2');
		$this->data['isi_phototestimonial'] = $this->language->get('isi_phototestimonial');
		$this->data['show_all'] = $this->language->get('show_all');
		$this->data['showall_url'] = $this->url->link('product/phototestimonial', '', 'SSL'); 
		//$this->data['more'] = $this->url->link('product/phototestimonial', 'phototestimonial_id=' , 'SSL'); 
		$this->data['isitesti'] = $this->url->link('product/isiphototestimonial', '', 'SSL');

		$this->load->model('catalog/phototestimonial');
		
		$this->data['phototestimonials'] = array();
		
		$this->data['total'] = $this->model_catalog_phototestimonial->getTotalphototestimonials();
		$results = $this->model_catalog_phototestimonial->getphototestimonials(0, $setting['phototestimonial_limit'], (isset($setting['phototestimonial_random']))?true:false);

		$this->document->addScript('catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/colorbox/colorbox.css');

		$this->load->model('tool/image');

		foreach ($results as $result) {
			
			
			$result['description'] = '«'.trim($result['description']).'»';
			$result['description'] = str_replace('«<p>', '«', $result['description']);
			$result['description'] = str_replace('</p>»', '»', $result['description']);


			if (!isset($setting['phototestimonial_character_limit']))
				$setting['phototestimonial_character_limit'] = 0;

			if ($setting['phototestimonial_character_limit']>0)
			{
				$lim = $setting['phototestimonial_character_limit'];

				if (mb_strlen($result['description'],'UTF-8')>$lim) 
					$result['description'] = mb_substr($result['description'], 0, $lim-3, 'UTF-8') ;
				
			}

			$result['description'] = $result['description'] .' ' .'<a href="' . $this->url->link('product/phototestimonial', 'phototestimonial_id=' . $result['phototestimonial_id'], 'SSL') . '" title="'.$this->data['text_more2'].'">'. $this->data['text_more'] . '</a>';


			if (mb_strlen($result['title'],'UTF-8')>20)
					$result['title'] = mb_substr($result['title'], 0, 17, 'UTF-8').'...';

			if (mb_strlen($result['name'],'UTF-8')>10)
					$result['name'] = mb_substr($result['name'], 0, 7, 'UTF-8').'...';

			if (mb_strlen($result['city'],'UTF-8')>10)
					$result['city'] = mb_substr($result['city'], 0, 7, 'UTF-8').'...';


			if (isset($setting['phototestimonial_image_width'])) 
				$phototestimonial_image_width = $setting['phototestimonial_image_width'];
			else
				$phototestimonial_image_width = 60;

			if (isset($setting['phototestimonial_image_height'])) 
				$phototestimonial_image_height = $setting['phototestimonial_image_height'];
			else
				$phototestimonial_image_height = 80;

			if ($result['avatar']!="")
			{

				$avatar = $this->model_tool_image->resize($result['avatar'], $phototestimonial_image_width, $phototestimonial_image_height);
				
				$width = 0;
				$height = 0;

				if (is_file(DIR_IMAGE . $result['avatar']))
				list($width, $height) = getimagesize(DIR_IMAGE . $result['avatar']);

				$avatar_big = $this->model_tool_image->resize($result['avatar'], $width, $height);	

			}
			else
			{
				$avatar = $this->model_tool_image->resize('data/phototestimonial/no_foto.jpg', $phototestimonial_image_width, $phototestimonial_image_height);

				$width = 0;
				$height = 0;
				list($width, $height) = getimagesize(DIR_IMAGE . 'data/phototestimonial/no_foto.jpg');

				$avatar_big = $this->model_tool_image->resize('data/phototestimonial/no_foto.jpg', $width, $height);

			}

			if ($result['page']!="")
			{
				$result['page'] = $this->addhttp($result['page']);
				$url = parse_url($result['page'], PHP_URL_HOST);
				if ($url == false)
					$page_icon = "";
				else
					{
						$page_icon = "http://".  $url. "/favicon.ico";
						if ($this->url_exists($page_icon) == false) $page_icon = "";
					}
			}
			else
					$page_icon = "";


			$images = array();

			if (isset($setting['phototestimonial_show_add_photos'])) 
				$phototestimonial_show_add_photos = true;
			else
				$phototestimonial_show_add_photos = false;


			if ($phototestimonial_show_add_photos)
			foreach ($this->model_catalog_phototestimonial->getPhototestimonialImages($result['phototestimonial_id']) as $im)
			{


				$image = $this->model_tool_image->resize($im['path'], $phototestimonial_image_width, $phototestimonial_image_height);	


				$width = 0;
				$height = 0;
				list($width, $height) = getimagesize(DIR_IMAGE . $im['path']);

				$image_big = $this->model_tool_image->resize($im['path'], $width, $height);	

				$images[] = array('path' => $image, 'path_big' => $image_big);
			}
	

			$rating = $result['rating'];
			if ($rating == '0')
			{
				if ($this->config->get('phototestimonial_default_rating')=='')
					$rating = '3';
				else
					$rating = $this->config->get('phototestimonial_default_rating');
	
			}

			$this->data['phototestimonials'][] = array(
				'id'			=> $result['phototestimonial_id'],											  
				'title'		=> $result['title'],
				'description'	=> $result['description'],
				'rating'		=> $rating,
				'name'		=> $result['name'],
				'date_added'	=> $result['date_added'],
				'city'		=> $result['city'],
				'page'		=> $result['page'],
				'avatar'		=> $avatar,
				'avatar_big'	=> $avatar_big,
				'page_icon'		=> $page_icon,
				'images'		=> $images

			);
		}

		

		$this->id = 'phototestimonial';

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/phototestimonial.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/phototestimonial.tpl';
		} else {
			$this->template = 'default/template/module/phototestimonial.tpl';
		}
		
		$this->render();
	}
}
?>