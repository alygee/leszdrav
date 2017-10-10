<?php
class ControllerCatalogPhototestimonial extends Controller { 
	private $error = array();

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

	public function index() {
		$this->load->language('catalog/phototestimonial');

		$this->document->SetTitle($this->language->get('heading_title'));
		 
		$this->load->model('catalog/phototestimonial');

		$this->getList();

	}

	public function insert() {
		$this->load->language('catalog/phototestimonial');

		$this->document->SetTitle($this->language->get('heading_title'));
		
		$this->load->model('catalog/phototestimonial');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_phototestimonial->addphototestimonial($this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			$this->redirect($this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token']. $url, 'SSL'));
		}

		$this->getForm(true);
	}

	public function update() {
		$this->load->language('catalog/phototestimonial');

		$this->document->SetTitle( $this->language->get('heading_title') );
		
		$this->load->model('catalog/phototestimonial');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_phototestimonial->editphototestimonial($this->request->get['phototestimonial_id'], $this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			$this->redirect($this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token']. $url, 'SSL'));

		}

		$this->getForm(false);
	}

	public function updatestatus() {
		//$this->load->language('catalog/phototestimonial');

		$this->load->model('catalog/phototestimonial');
		$output='';
//$this->response->setOutput('1');
//exit;
		if(isset($this->request->get['object_id'])){
			$phototestimonial_id = $this->request->get['object_id'];

			$result = $this->model_catalog_phototestimonial->getPhototestimonial($phototestimonial_id);

			if($result['status']){
				$this->model_catalog_phototestimonial->updatePhototestimonialStatus($phototestimonial_id, 0);
			} else {
				$this->model_catalog_phototestimonial->updatePhototestimonialStatus($phototestimonial_id, 1);
			}				

			$result = $this->model_catalog_phototestimonial->getPhototestimonial($phototestimonial_id);
			$output = $result['status'] ? '1' : '0';
		}

		//$this->response->setOutput($output);
		echo $output;
	}
 
	public function delete() {
		$this->load->language('catalog/phototestimonial');

		$this->document->SetTitle( $this->language->get('heading_title'));
		
		$this->load->model('catalog/phototestimonial');
		
		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $phototestimonial_id) {
				$this->model_catalog_phototestimonial->deletephototestimonial($phototestimonial_id);
			}
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}
			
			$this->redirect($this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token']. $url, 'SSL'));

		}

		$this->getList();
	}

	private function getList() {

		$this->document->addScript('view/javascript/jquery/phototestimonials/jquery.highlight-5.closure.js'); 

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'p.date_added';
		}
		
		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'DESC';
		}
		
		$url = '';
			
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		if (isset($this->request->get['filter_name']) && isset($url)) {
			$url .= '&filter_name=' . $this->request->get['filter_name'];
		}



		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);

							
		$this->data['insert'] = $this->url->link('catalog/phototestimonial/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$this->data['delete'] = $this->url->link('catalog/phototestimonial/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');	
		$this->data['update_status'] = $this->url->link('catalog/phototestimonial/updatestatus', 'token=' . $this->session->data['token'] . $url, 'SSL');	

		$this->data['module_settings_path'] = $this->url->link('module/phototestimonial', 'token=' . $this->session->data['token'] . $url, 'SSL');	
		$this->data['text_module_settings'] = $this->language->get('text_module_settings');

		$this->data['text_clear'] = $this->language->get('text_clear');
		$this->data['text_filter'] = $this->language->get('text_filter');

		$this->data['phototestimonials'] = array();

		$data = array(
			'sort'  => $sort,
			'order' => $order,
			'filter_name' => (isset($this->request->get['filter_name'])) ? $this->request->get['filter_name'] : '' ,
			'start' => ($page - 1) * 10,
			'limit' => 10
		);
		
		$phototestimonial_total = $this->model_catalog_phototestimonial->getTotalphototestimonials($data);
		$this->data['phototestimonial_total'] = $phototestimonial_total;
		
		if ($phototestimonial_total!=-1)
			$results = $this->model_catalog_phototestimonial->getPhototestimonials($data);
 		else
		{
			$results = array();
			$phototestimonial_total = 0;
		}


    		foreach ($results as $result) {
			$action = array();
						
			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('catalog/phototestimonial/update', 'token=' . $this->session->data['token']. '&phototestimonial_id=' . $result['phototestimonial_id'] , 'SSL')

			);
					

			$result['description'] = strip_tags(/*html_entity_decode*/($result['description']));

			$this->load->model('tool/image');

			if (!isset($setting['phototestimonial_image_width'])) $setting['phototestimonial_image_width'] = 60;
			if (!isset($setting['phototestimonial_image_height'])) $setting['phototestimonial_image_height'] = 80;

			if ($result['avatar']!="")
			{
				$avatar = $this->model_tool_image->resize($result['avatar'], $setting['phototestimonial_image_width'], $setting['phototestimonial_image_height']);
			}
			else
			{
				$avatar = $this->model_tool_image->resize('data/phototestimonial/no_foto.jpg', $setting['phototestimonial_image_width'], $setting['phototestimonial_image_height']);
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


			$images = $this->model_catalog_phototestimonial->getPhotoTestimonialImages($result['phototestimonial_id']);


			$this->data['phototestimonials'][] = array(
				'phototestimonial_id' => $result['phototestimonial_id'],
				'name'		=> $result['name'],
				'description'	=> $result['description'],
				'city'		=> $result['city'],
				'title'      	=> $result['title'],
				'date_added' 	=> $result['date_added'],
				'status' 		=> ($result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled')),
				'selected'   	=> isset($this->request->post['selected']) && in_array($result['phototestimonial_id'], $this->request->post['selected']),
				'action'     	=> $action,
				'avatar'     	=> $avatar,
				'page_icon'		=> $page_icon,
				'page'		=> $result['page'],
				'images'		=> $images

			);
		}	
	
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_no_results'] = $this->language->get('text_no_results');

		$this->data['column_title'] = $this->language->get('column_title');
		$this->data['column_description'] = $this->language->get('column_description');

		$this->data['column_date_added'] = $this->language->get('column_date_added');
		$this->data['column_status'] = $this->language->get('column_status');
		$this->data['column_action'] = $this->language->get('column_action');		
		$this->data['column_name'] = $this->language->get('column_name');		
		$this->data['column_city'] = $this->language->get('column_city');
		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');
		$this->data['entry_install_first'] = $this->language->get('entry_install_first');

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=' .  'DESC';
		} else {
			$url .= '&order=' .  'ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$this->data['sort_title'] = $this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token'] . '&sort=pd.title' . $url, 'SSL');
		$this->data['sort_date_added'] = $this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token'] . '&sort=p.date_added' . $url, 'SSL');		
		$this->data['sort_status'] = $this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token'] . '&sort=p.status' . $url, 'SSL');		
		$this->data['sort_name'] = $this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token'] . '&sort=p.name' . $url, 'SSL');		
		$this->data['sort_description'] = $this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token'] . '&sort=pd.description' . $url, 'SSL');		
		
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}
												
		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $phototestimonial_total;
		$pagination->page = $page;
		$pagination->limit = 10; 
		$pagination->text = $this->language->get('text_pagination');
		
		$pagination->url = $this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');		
			
		$this->data['pagination'] = $pagination->render();

		$this->data['sort'] = $sort;
		$this->data['order'] = $order;
		
		$this->template = 'catalog/phototestimonial_list.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
	}

	private function getForm($is_edit) {
	
		$this->data['is_edit'] = $is_edit;
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['entry_title'] = $this->language->get('entry_title');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_description'] = $this->language->get('entry_description');
		$this->data['entry_date_added'] = $this->language->get('entry_date_added');
		$this->data['entry_name'] = $this->language->get('entry_name');
		$this->data['entry_city'] = $this->language->get('entry_city');
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['entry_email'] = $this->language->get('entry_email');
		$this->data['entry_avatar'] = $this->language->get('entry_avatar');
		$this->data['entry_page'] = $this->language->get('entry_page');

		$this->data['entry_rating'] = $this->language->get('entry_rating');
		$this->data['entry_bad'] = $this->language->get('entry_bad');
		$this->data['entry_good'] = $this->language->get('entry_good');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');

		$this->data['entry_images'] = $this->language->get('entry_images');
		$this->data['entry_select_file'] = $this->language->get('entry_select_file');
		$this->data['entry_delete_file'] = $this->language->get('entry_delete_file');

		$this->data['entry_keyword'] = $this->language->get('entry_keyword');

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

 		if (isset($this->error['name'])) {
			$this->data['error_name'] = $this->error['name'];
		} else {
			$this->data['error_name'] = '';
		}
		
	 	if (isset($this->error['description'])) {
			$this->data['error_description'] = $this->error['description'];
		} else {
			$this->data['error_description'] = '';
		}

		$url = '';
			
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);

		$url = '';

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
							
		if (!isset($this->request->get['phototestimonial_id'])) {
			$this->data['action'] = $this->url->link('catalog/phototestimonial/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');		
		} else {
			$this->data['action'] = $this->url->link('catalog/phototestimonial/update', 'token=' . $this->session->data['token'] . '&phototestimonial_id=' . $this->request->get['phototestimonial_id'] . $url, 'SSL');
		}
		
		$this->data['cancel'] = $this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token'] . $url, 'SSL');

		$this->data['token'] = $this->session->data['token'];
		
		if (isset($this->request->get['phototestimonial_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$phototestimonial_info = $this->model_catalog_phototestimonial->getphototestimonial($this->request->get['phototestimonial_id']);
		}
		
		$this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		
		if (isset($this->request->post['phototestimonial_description'])) {
			$this->data['phototestimonial_description'] = $this->request->post['phototestimonial_description'];
		} elseif (isset($this->request->get['phototestimonial_id'])) {
			$this->data['phototestimonial_description'] = $this->model_catalog_phototestimonial->getphototestimonialDescriptions($phototestimonial_info['phototestimonial_id']);
		} else {
			$this->data['phototestimonial_description'] = array();
		}

		if (isset($this->request->post['status'])) {
			$this->data['status'] = $this->request->post['status'];
		} elseif (isset($phototestimonial_info)) {
			$this->data['status'] = $phototestimonial_info['status'];
		} else {
			$this->data['status'] = 1;
		}

		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} elseif (isset($phototestimonial_info)) {
			$this->data['name'] = $phototestimonial_info['name'];
		} else {
			$this->data['name'] = '';
		}

		if (isset($this->request->post['keyword'])) {
			$this->data['keyword'] = $this->request->post['keyword'];
		} elseif (isset($phototestimonial_info)) {
			$this->data['keyword'] = $phototestimonial_info['keyword'];
		} else {
			$this->data['keyword'] = '';
		}

		if (isset($this->request->post['city'])) {
			$this->data['city'] = $this->request->post['city'];
		} elseif (isset($phototestimonial_info)) {
			$this->data['city'] = $phototestimonial_info['city'];
		} else {
			$this->data['city'] = '';
		}

		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} elseif (isset($phototestimonial_info)) {
			$this->data['email'] = $phototestimonial_info['email'];
		} else {
			$this->data['email'] = '';
		}


		$image_width = 100;
		$image_height = 100;

		$this->load->model('tool/image');


		$this->data['no_photo'] = $this->model_tool_image->resize('data/phototestimonial/no_foto.jpg', $image_width, $image_height);
		//$this->data['no_photo_img'] = 'data/phototestimonial/no_foto.jpg';


		if (isset($this->request->post['avatar'])) {
			if ($this->request->post['avatar'] != '')
				$this->data['avatar_img'] = $this->model_tool_image->resize($this->request->post['avatar'], $image_width, $image_height);
			else
				$this->data['avatar_img'] = $this->model_tool_image->resize('data/phototestimonial/no_foto.jpg', $image_width, $image_height);

		} elseif (isset($phototestimonial_info)) {
			if ($phototestimonial_info['avatar'] != '')
				$this->data['avatar_img'] = $this->model_tool_image->resize($phototestimonial_info['avatar'], $image_width, $image_height); 
			else
				$this->data['avatar_img'] = $this->model_tool_image->resize('data/phototestimonial/no_foto.jpg', $image_width, $image_height); 
 
		} else {
			$this->data['avatar_img'] = $this->model_tool_image->resize('data/phototestimonial/no_foto.jpg', $image_width, $image_height);
		}


		if (isset($this->request->post['avatar'])) {
			$this->data['avatar'] = $this->request->post['avatar'];
		} elseif (isset($phototestimonial_info)) {
			$this->data['avatar'] = $phototestimonial_info['avatar'];
		} else {
			$this->data['avatar'] = '';//'data/phototestimonial/no_foto.jpg';
		}

		if (isset($this->request->post['page'])) {
			$this->data['page'] = $this->request->post['page'];
		} elseif (isset($phototestimonial_info)) {
			$this->data['page'] = $phototestimonial_info['page'];
		} else {
			$this->data['page'] = '';
		}

		if (isset($this->request->post['date_added'])) {
			$this->data['date_added'] = $this->request->post['date_added'];
		} elseif (isset($phototestimonial_info)) {
			$this->data['date_added'] = $phototestimonial_info['date_added'];
		} else {
			$this->data['date_added'] = $this->model_catalog_phototestimonial->getCurrentDateTime();
		}
		

		if (isset($this->request->post['rating'])) {
			$this->data['rating'] = $this->request->post['rating'];
		} elseif (isset($phototestimonial_info)) {
			$this->data['rating'] = $phototestimonial_info['rating'];
			if ($this->data['rating'] == '0')
			{
				if ($this->config->get('phototestimonial_default_rating')=='')
					$this->data['rating'] = '3';
				else
					$this->data['rating'] = $this->config->get('phototestimonial_default_rating');

			}
		} else {

			if ($this->config->get('phototestimonial_default_rating')=='')
				$this->data['rating'] = '3';
			else
				$this->data['rating'] = $this->config->get('phototestimonial_default_rating');

		}

		if (isset($this->request->post['images'])) {
			$this->data['images'] = $this->request->post['images'];
		} elseif (isset($phototestimonial_info)) {
			$this->data['images'] = $this->model_catalog_phototestimonial->getPhotoTestimonialImages($phototestimonial_info['phototestimonial_id']);
		} else {
			$this->data['images'] = array();//'data/phototestimonial/no_foto.jpg';
		}


		
		$this->template = 'catalog/phototestimonial_form.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		//$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
		$this->response->setOutput($this->render());

	}

	private function validateForm() {
		if (!$this->user->hasPermission('modify', 'catalog/phototestimonial')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}


		foreach ($this->request->post['phototestimonial_description'] as $language_id => $value) {
			if (strlen(utf8_decode($value['description'])) != 0) {
				$this->request->post['phototestimonial_description'][$language_id]['description'] = (html_entity_decode($value['description']));
			}		
		}


		$desc = '';
		foreach ($this->request->post['phototestimonial_description'] as $language_id => $value) {
			if (strlen(utf8_decode($value['description'])) != 0) {
				$desc = $value['description'];
				break;
			}		
		}

		if ($desc == '')
		{
			foreach ($this->request->post['phototestimonial_description'] as $language_id => $value) {
					$this->error['description'][$language_id] = $this->language->get('error_description');
			}
		}
		else
		{
			foreach ($this->request->post['phototestimonial_description'] as $language_id => $value) {
				if (strlen(utf8_decode($value['description'])) == 0) $this->request->post['phototestimonial_description'][$language_id]['description'] = $desc;
			}
		}


		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	private function validateDelete() {

		if (!$this->user->hasPermission('modify', 'catalog/phototestimonial')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
}
?>