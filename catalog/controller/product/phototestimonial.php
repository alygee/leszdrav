<?php 
class ControllerProductPhotoTestimonial extends Controller {
	
	protected function addhttp($url) {
	    if (!preg_match("~^(?:f|ht)tps?://~i", $url)) {
	        $url = "http://" . $url;
	    }
	    return $url;
	}

	public function index() {  
    	$this->language->load('product/phototestimonial');
		
		$this->load->model('catalog/phototestimonial');

		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', '', 'SSL'),
      		'separator' => false
   		);

		$this->document->addScript('catalog/view/javascript/jquery/colorbox/jquery.colorbox-min.js');
		$this->document->addStyle('catalog/view/javascript/jquery/colorbox/colorbox.css');

		$phototestimonial_total = $this->model_catalog_phototestimonial->getTotalphototestimonials();
			
//		if ($phototestimonial_total) {

	  		$this->document->SetTitle ($this->language->get('heading_title'));

	   		$this->data['breadcrumbs'][] = array(
	       		'text'      => $this->language->get('heading_title'),
				'href'      => $this->url->link('product/phototestimonial', '', 'SSL'),
	      		'separator' => $this->language->get('text_separator')
	   		);

						
      		$this->data['heading_title'] = $this->language->get('heading_title');
      		$this->data['text_auteur'] = $this->language->get('text_auteur');
      		$this->data['text_city'] = $this->language->get('text_city');
      		$this->data['button_continue'] = $this->language->get('button_continue');
      		$this->data['showall'] = $this->language->get('text_showall');
      		$this->data['write'] = $this->language->get('text_write');
      		$this->data['text_average'] = $this->language->get('text_average');
      		$this->data['text_stars'] = $this->language->get('text_stars');
      		$this->data['text_no_rating'] = $this->language->get('text_no_rating');
			
			$this->data['continue'] = $this->url->link('common/home', '', 'SSL');

			$phototestimonial_all_page_limit = $this->config->get('phototestimonial_all_page_limit');
			if (!isset($phototestimonial_all_page_limit)) $phototestimonial_all_page_limit = "20";

			$this->page_limit = $phototestimonial_all_page_limit;
			
			if (isset($this->request->get['page'])) {
				$page = $this->request->get['page'];
			} else { 
				$page = 1;
			}	

			$this->data['phototestimonials'] = array();

			if ( isset($this->request->get['phototestimonial_id']) ){
				$results = $this->model_catalog_phototestimonial->getphototestimonial($this->request->get['phototestimonial_id']);
			if (isset($results[0]))
				$this->document->SetTitle (strip_tags($results[0]['description']) /*$this->language->get('heading_title')*/);
			}
			else{
				$results = $this->model_catalog_phototestimonial->getphototestimonials(($page - 1) * $this->page_limit, $this->page_limit);
			}
			
			$this->load->model('tool/image');

			$phototestimonial_all_page_image_width = $this->config->get('phototestimonial_all_page_image_width');
			$phototestimonial_all_page_image_height = $this->config->get('phototestimonial_all_page_image_height');

			if (!isset($phototestimonial_all_page_image_width)) $phototestimonial_all_page_image_width = 120;
			if (!isset($phototestimonial_all_page_image_height)) $phototestimonial_all_page_image_height = 160;


			foreach ($results as $result) {
				
				$result['description'] = '«'.trim($result['description']).'»';
				$result['description'] = str_replace('«<p>', '«', $result['description']);
				$result['description'] = str_replace('</p>»', '»', $result['description']);


				if ($result['avatar']!="")
				{

					$avatar = $this->model_tool_image->resize($result['avatar'], $phototestimonial_all_page_image_width, $phototestimonial_all_page_image_height);	


					$width = 0;
					$height = 0;
					list($width, $height) = getimagesize(DIR_IMAGE . $result['avatar']);

					$avatar_big = $this->model_tool_image->resize($result['avatar'], $width, $height);	



				}
				else
				{
					$avatar = $this->model_tool_image->resize('data/phototestimonial/no_foto.jpg', $phototestimonial_all_page_image_width, $phototestimonial_all_page_image_height);

					$width = 0;
					$height = 0;
					list($width, $height) = getimagesize(DIR_IMAGE . 'data/phototestimonial/no_foto.jpg');

					$avatar_big = $this->model_tool_image->resize('data/phototestimonial/no_foto.jpg', $width, $height);

				}
				
				$page_icon = "";

				if ($result['page']!="")
				{
					$result['page'] = $this->addhttp($result['page']);
					$url = parse_url($result['page'], PHP_URL_HOST);
					if ($url != false)
						{
							if (file_exists("http://".  $url. "/favicon.ico"))
								$page_icon = "http://".  $url. "/favicon.ico";
						}
				}

				$images = array();
				foreach ($this->model_catalog_phototestimonial->getPhototestimonialImages($result['phototestimonial_id']) as $im)
				{


					$image = $this->model_tool_image->resize($im['path'], $phototestimonial_all_page_image_width, $phototestimonial_all_page_image_height);	


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
					'name'		=> $result['name'],
					'title'    		=> $result['title'],
					'rating'		=> $rating,
					'description'	=> $result['description'],
					'city'		=> $result['city'],
					'avatar'		=> $avatar,
					'avatar_big'	=> $avatar_big,
					'page'		=> $result['page'],
					'page_icon'		=> $page_icon,
					'date_added'	=> date($this->config->get('phototestimonial_all_page_date_format'), strtotime($result['date_added'])), 
					'images'		=> $images


				);
			}
			
			$url = '';
	
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
			
				$this->data['write_url'] = $this->url->link('product/isiphototestimonial', '', 'SSL'); 	
			
			if ( isset($this->request->get['phototestimonial_id']) ){
				$this->data['showall_url'] = $this->url->link('product/phototestimonial', '', 'SSL'); 	
			}
			else{
				$pagination = new Pagination();
				$pagination->total = $phototestimonial_total;
				$pagination->page = $page;
				$pagination->limit = $this->page_limit; 
				$pagination->text = $this->language->get('text_pagination');
				$pagination->url = $this->url->link('product/phototestimonial', '&page={page}', 'SSL');
				$this->data['pagination'] = $pagination->render();				

			}


			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/phototestimonial.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/product/phototestimonial.tpl';
			} else {
				$this->template = 'default/template/product/phototestimonial.tpl';
			}
			
			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header'
			);		
			
	  		$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
  /*  	} else {

				
	  		$this->document->SetTitle ( $this->language->get('text_error'));
			
      		$this->data['heading_title'] = $this->language->get('text_error');

      		$this->data['text_error'] = $this->language->get('text_error');

      		$this->data['button_continue'] = $this->language->get('button_continue');

	    		$this->data['continue'] = $this->url->link('common/home', '', 'SSL');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/error/not_found.tpl';
			} else {
				$this->template = 'default/template/error/not_found.tpl';
			}
			
			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header'
			);
		
	  		$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
    	}
*/
  	}
}
?>