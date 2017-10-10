<?php
class ControllerModulePhotoTestimonial extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->load->language('module/phototestimonial');

		$this->document->SetTitle( $this->language->get('heading_title'));

		$this->data['phototestimonial_version'] = "1.5.5 (OpenCart 1.5.x)";
		
		$this->load->model('setting/setting');
		$this->load->model('catalog/phototestimonial');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('phototestimonial', $this->request->post);	
			$this->model_catalog_phototestimonial->updatePhototestimonialAllPageKeyword($this->request->post['phototestimonial_all_page_keyword']);
			$this->model_catalog_phototestimonial->updatePhototestimonialFormKeyword($this->request->post['phototestimonial_form_keyword']);
	
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->data['entry_title'] = $this->language->get('entry_title');
		$this->data['entry_bedwords'] = $this->language->get('entry_bedwords');
		$this->data['entry_layout'] = $this->language->get('entry_layout');
		$this->data['entry_dimension'] = $this->language->get('entry_dimension');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		$this->data['text_required_field'] = $this->language->get('text_required_field');
		$this->data['text_help'] = $this->language->get('text_help');
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');
		$this->data['text_edit_phototestimonials'] = $this->language->get('text_edit_phototestimonials');

		$this->data['entry_all_page_keyword'] = $this->language->get('entry_all_page_keyword');
		$this->data['entry_form_keyword'] = $this->language->get('entry_form_keyword');

		$this->data['tab_module'] = $this->language->get('tab_module');
		
		$this->load->model('catalog/phototestimonial');	
		$this->data['phototestimonial_total'] = $this->model_catalog_phototestimonial->getTotalphototestimonials();

		if (isset($this->request->post['phototestimonial_title'])) {
			$this->data['phototestimonial_title'] = $this->request->post['phototestimonial_title'];
		} else {
			$this->data['phototestimonial_title'] = $this->config->get('phototestimonial_title');
		}

		if (isset($this->request->post['phototestimonial_module'])) {
			$this->data['modules'] = $this->request->post['phototestimonial_module'];
		} elseif ($this->config->get('phototestimonial_module')) { 
			$this->data['modules'] = $this->config->get('phototestimonial_module');
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_left'] = $this->language->get('text_left');
		$this->data['text_right'] = $this->language->get('text_right');
		
		$this->data['entry_limit'] = $this->language->get('entry_limit');
		$this->data['entry_image_size'] = $this->language->get('entry_image_size');
		$this->data['entry_all_page_image_size'] = $this->language->get('entry_all_page_image_size');
		$this->data['entry_all_page_limit'] = $this->language->get('entry_all_page_limit');
		$this->data['entry_all_page_date_format'] = $this->language->get('entry_all_page_date_format');

		$this->data['entry_character_limit'] = $this->language->get('entry_character_limit');
		$this->data['entry_admin_approved'] = $this->language->get('entry_admin_approved');
		$this->data['entry_default_rating'] = $this->language->get('entry_default_rating');
		$this->data['entry_good'] = $this->language->get('entry_good');
		$this->data['entry_bad'] = $this->language->get('entry_bad');
		$this->data['entry_random'] = $this->language->get('entry_random');
		$this->data['entry_send_to_admin'] = $this->language->get('entry_send_to_admin');
		$this->data['entry_load_image_size'] = $this->language->get('entry_load_image_size');
		$this->data['entry_load_image_count'] = $this->language->get('entry_load_image_count');


		$this->data['entry_position'] = $this->language->get('entry_position');
		$this->data['entry_status'] = $this->language->get('entry_status');
		
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['entry_badwords'] = $this->language->get('entry_badwords');
		$this->data['entry_blockedip'] = $this->language->get('entry_blockedip');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');

		$this->data['entry_show_add_photos'] = $this->language->get('entry_show_add_photos');

		$this->data['entry_format_items'] = $this->language->get('entry_format_items');
		$this->data['entry_format_item_name'] = $this->language->get('entry_format_item_name');
		$this->data['entry_format_item_view'] = $this->language->get('entry_format_item_view');


 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		$this->data['token'] = $this->session->data['token'];

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
			'href'      => $this->url->link('module/phototestimonial', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		

		$this->data['action'] = $this->url->link('module/phototestimonial', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['edit_phototestimonials_path'] = $this->url->link('catalog/phototestimonial', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['modules'] = array();
		
		if (isset($this->request->post['phototestimonial_module'])) {
			$this->data['modules'] = $this->request->post['phototestimonial_module'];
		} elseif ($this->config->get('phototestimonial_module')) { 
			$this->data['modules'] = $this->config->get('phototestimonial_module');
		}

		if (isset($this->request->post['phototestimonial_admin_approved'])) {
			$this->data['phototestimonial_admin_approved'] = $this->request->post['phototestimonial_admin_approved'];
		} else {
			$this->data['phototestimonial_admin_approved'] = $this->config->get('phototestimonial_admin_approved');
		}

		if (isset($this->request->post['phototestimonial_send_to_admin'])) {
			$this->data['phototestimonial_send_to_admin'] = $this->request->post['phototestimonial_send_to_admin'];
		} else {
			$this->data['phototestimonial_send_to_admin'] = $this->config->get('phototestimonial_send_to_admin');
		}

		if (isset($this->request->post['phototestimonial_default_rating'])) {
			$this->data['phototestimonial_default_rating'] = $this->request->post['phototestimonial_default_rating'];
		} else {
			$this->data['phototestimonial_default_rating'] = $this->config->get('phototestimonial_default_rating');
		}

		if (isset($this->request->post['phototestimonial_all_page_image_width'])) {
            	$this->data['phototestimonial_all_page_image_width'] = $this->request->post['phototestimonial_all_page_image_width'];
        	} else {
            	$this->data['phototestimonial_all_page_image_width'] = $this->config->get('phototestimonial_all_page_image_width');
        	}

	      if (isset($this->request->post['phototestimonial_all_page_image_height'])) {
            	$this->data['phototestimonial_all_page_image_height'] = $this->request->post['phototestimonial_all_page_image_height'];
        	} else {
            	$this->data['phototestimonial_all_page_image_height'] = $this->config->get('phototestimonial_all_page_image_height');
        	}

	      if (isset($this->request->post['phototestimonial_load_image_size'])) {
            	$this->data['phototestimonial_load_image_size'] = $this->request->post['phototestimonial_load_image_size'];
        	} else {
            	$this->data['phototestimonial_load_image_size'] = $this->config->get('phototestimonial_load_image_size');
        	}

	      if (isset($this->request->post['phototestimonial_all_page_limit'])) {
            	$this->data['phototestimonial_all_page_limit'] = $this->request->post['phototestimonial_all_page_limit'];
        	} else {
            	$this->data['phototestimonial_all_page_limit'] = $this->config->get('phototestimonial_all_page_limit');
        	}

	      if (isset($this->request->post['phototestimonial_all_page_date_format'])) {
            	$this->data['phototestimonial_all_page_date_format'] = $this->request->post['phototestimonial_all_page_date_format'];
        	} else {
            	$this->data['phototestimonial_all_page_date_format'] = $this->config->get('phototestimonial_all_page_date_format');
        	}

		$phototestimonial_all_page_keyword = $this->model_catalog_phototestimonial->getPhototestimonialAllPageKeyword();
	      if (isset($this->request->post['phototestimonial_all_page_keyword'])) {
            	$this->data['phototestimonial_all_page_keyword'] = $this->request->post['phototestimonial_all_page_keyword'];
		} elseif (isset($phototestimonial_all_page_keyword)) {
            	$this->data['phototestimonial_all_page_keyword'] = $phototestimonial_all_page_keyword;
        	} else {
            	$this->data['phototestimonial_all_page_keyword'] = '';
        	}

		$phototestimonial_form_keyword = $this->model_catalog_phototestimonial->getPhototestimonialFormKeyword();
	      if (isset($this->request->post['phototestimonial_form_keyword'])) {
            	$this->data['phototestimonial_form_keyword'] = $this->request->post['phototestimonial_form_keyword'];
		} elseif (isset($phototestimonial_form_keyword)) {
            	$this->data['phototestimonial_form_keyword'] = $phototestimonial_form_keyword;
        	} else {
            	$this->data['phototestimonial_form_keyword'] = '';
        	}


	      if (isset($this->request->post['phototestimonial_load_image_count'])) {
            	$this->data['phototestimonial_load_image_count'] = $this->request->post['phototestimonial_load_image_count'];
        	} else {
            	$this->data['phototestimonial_load_image_count'] = $this->config->get('phototestimonial_load_image_count');
        	}


	      if (isset($this->request->post['phototestimonial_format_item_name_avatar'])) {
            	$this->data['phototestimonial_format_item_name_avatar'] = $this->request->post['phototestimonial_format_item_name_avatar'];
        	} else {
            	$this->data['phototestimonial_format_item_name_avatar'] = $this->config->get('phototestimonial_format_item_name_avatar');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_view_avatar'])) {
            	$this->data['phototestimonial_format_item_view_avatar'] = $this->request->post['phototestimonial_format_item_view_avatar'];
        	} else {
            	$this->data['phototestimonial_format_item_view_avatar'] = $this->config->get('phototestimonial_format_item_view_avatar');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_name_title'])) {
            	$this->data['phototestimonial_format_item_name_title'] = $this->request->post['phototestimonial_format_item_name_title'];
        	} else {
            	$this->data['phototestimonial_format_item_name_title'] = $this->config->get('phototestimonial_format_item_name_title');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_view_title'])) {
            	$this->data['phototestimonial_format_item_view_title'] = $this->request->post['phototestimonial_format_item_view_title'];
        	} else {
            	$this->data['phototestimonial_format_item_view_title'] = $this->config->get('phototestimonial_format_item_view_title');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_name_description'])) {
            	$this->data['phototestimonial_format_item_name_description'] = $this->request->post['phototestimonial_format_item_name_description'];
        	} else {
            	$this->data['phototestimonial_format_item_name_description'] = $this->config->get('phototestimonial_format_item_name_description');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_view_description'])) {
            	$this->data['phototestimonial_format_item_view_description'] = $this->request->post['phototestimonial_format_item_view_description'];
        	} else {
            	$this->data['phototestimonial_format_item_view_description'] = $this->config->get('phototestimonial_format_item_view_description');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_name_name'])) {
            	$this->data['phototestimonial_format_item_name_name'] = $this->request->post['phototestimonial_format_item_name_name'];
        	} else {
            	$this->data['phototestimonial_format_item_name_name'] = $this->config->get('phototestimonial_format_item_name_name');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_view_name'])) {
            	$this->data['phototestimonial_format_item_view_name'] = $this->request->post['phototestimonial_format_item_view_name'];
        	} else {
            	$this->data['phototestimonial_format_item_view_name'] = $this->config->get('phototestimonial_format_item_view_name');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_name_page'])) {
            	$this->data['phototestimonial_format_item_name_page'] = $this->request->post['phototestimonial_format_item_name_page'];
        	} else {
            	$this->data['phototestimonial_format_item_name_page'] = $this->config->get('phototestimonial_format_item_name_page');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_view_page'])) {
            	$this->data['phototestimonial_format_item_view_page'] = $this->request->post['phototestimonial_format_item_view_page'];
        	} else {
            	$this->data['phototestimonial_format_item_view_page'] = $this->config->get('phototestimonial_format_item_view_page');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_name_city'])) {
            	$this->data['phototestimonial_format_item_name_city'] = $this->request->post['phototestimonial_format_item_name_city'];
        	} else {
            	$this->data['phototestimonial_format_item_name_city'] = $this->config->get('phototestimonial_format_item_name_city');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_view_city'])) {
            	$this->data['phototestimonial_format_item_view_city'] = $this->request->post['phototestimonial_format_item_view_city'];
        	} else {
            	$this->data['phototestimonial_format_item_view_city'] = $this->config->get('phototestimonial_format_item_view_city');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_name_email'])) {
            	$this->data['phototestimonial_format_item_name_email'] = $this->request->post['phototestimonial_format_item_name_email'];
        	} else {
            	$this->data['phototestimonial_format_item_name_email'] = $this->config->get('phototestimonial_format_item_name_email');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_view_email'])) {
            	$this->data['phototestimonial_format_item_view_email'] = $this->request->post['phototestimonial_format_item_view_email'];
        	} else {
            	$this->data['phototestimonial_format_item_view_email'] = $this->config->get('phototestimonial_format_item_view_email');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_name_rating'])) {
            	$this->data['phototestimonial_format_item_name_rating'] = $this->request->post['phototestimonial_format_item_name_rating'];
        	} else {
            	$this->data['phototestimonial_format_item_name_rating'] = $this->config->get('phototestimonial_format_item_name_rating');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_view_rating'])) {
            	$this->data['phototestimonial_format_item_view_rating'] = $this->request->post['phototestimonial_format_item_view_rating'];
        	} else {
            	$this->data['phototestimonial_format_item_view_rating'] = $this->config->get('phototestimonial_format_item_view_rating');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_name_captcha'])) {
            	$this->data['phototestimonial_format_item_name_captcha'] = $this->request->post['phototestimonial_format_item_name_captcha'];
        	} else {
            	$this->data['phototestimonial_format_item_name_captcha'] = $this->config->get('phototestimonial_format_item_name_captcha');
        	}

	      if (isset($this->request->post['phototestimonial_format_item_view_captcha'])) {
            	$this->data['phototestimonial_format_item_view_captcha'] = $this->request->post['phototestimonial_format_item_view_captcha'];
        	} else {
            	$this->data['phototestimonial_format_item_view_captcha'] = $this->config->get('phototestimonial_format_item_view_captcha');
        	}


	      if (!isset($this->data['phototestimonial_default_rating'])) $this->data['phototestimonial_default_rating'] = "3";
		if (!isset($this->data['phototestimonial_load_image_size'])) $this->data['phototestimonial_load_image_size'] = "500";
		if (!isset($this->data['phototestimonial_all_page_image_width'])) $this->data['phototestimonial_all_page_image_width'] = "120";
		if (!isset($this->data['phototestimonial_all_page_image_height'])) $this->data['phototestimonial_all_page_image_height'] = "160";
		if (!isset($this->data['phototestimonial_all_page_limit'])) $this->data['phototestimonial_all_page_limit'] = "20";
		if (!isset($this->data['phototestimonial_all_page_date_format'])) $this->data['phototestimonial_all_page_date_format'] = "d-m-Y";
		if (!isset($this->data['phototestimonial_load_image_count'])) $this->data['phototestimonial_load_image_count'] = "3";

		if ((!isset($this->data['phototestimonial_format_item_name_avatar'])) || ($this->data['phototestimonial_format_item_name_avatar']=='')) $this->data['phototestimonial_format_item_name_avatar'] = $this->language->get('phototestimonial_format_item_name_avatar');
		if (!isset($this->data['phototestimonial_format_item_view_avatar'])) $this->data['phototestimonial_format_item_view_avatar'] = 0;
		if ((!isset($this->data['phototestimonial_format_item_name_title'])) || ($this->data['phototestimonial_format_item_name_title']=='')) $this->data['phototestimonial_format_item_name_title'] = $this->language->get('phototestimonial_format_item_name_title');
		if (!isset($this->data['phototestimonial_format_item_view_title'])) $this->data['phototestimonial_format_item_view_title'] = 0;
		if ((!isset($this->data['phototestimonial_format_item_name_description'])) || ($this->data['phototestimonial_format_item_name_description']=='')) $this->data['phototestimonial_format_item_name_description'] = $this->language->get('phototestimonial_format_item_name_description');
		if (!isset($this->data['phototestimonial_format_item_view_description'])) $this->data['phototestimonial_format_item_view_description'] = 2;
		if ((!isset($this->data['phototestimonial_format_item_name_name'])) || ($this->data['phototestimonial_format_item_name_name']=='')) $this->data['phototestimonial_format_item_name_name'] = $this->language->get('phototestimonial_format_item_name_name');
		if (!isset($this->data['phototestimonial_format_item_view_name'])) $this->data['phototestimonial_format_item_view_name'] = 0;
		if ((!isset($this->data['phototestimonial_format_item_name_page'])) || ($this->data['phototestimonial_format_item_name_page']=='')) $this->data['phototestimonial_format_item_name_page'] = $this->language->get('phototestimonial_format_item_name_page');
		if (!isset($this->data['phototestimonial_format_item_view_page'])) $this->data['phototestimonial_format_item_view_page'] = 0;
		if ((!isset($this->data['phototestimonial_format_item_name_city'])) || ($this->data['phototestimonial_format_item_name_city']=='')) $this->data['phototestimonial_format_item_name_city'] = $this->language->get('phototestimonial_format_item_name_city');
		if (!isset($this->data['phototestimonial_format_item_view_city'])) $this->data['phototestimonial_format_item_view_city'] = 0;
		if ((!isset($this->data['phototestimonial_format_item_name_email'])) || ($this->data['phototestimonial_format_item_name_email']=='')) $this->data['phototestimonial_format_item_name_email'] = $this->language->get('phototestimonial_format_item_name_email');
		if (!isset($this->data['phototestimonial_format_item_view_email'])) $this->data['phototestimonial_format_item_view_email'] = 0;
		if ((!isset($this->data['phototestimonial_format_item_name_rating'])) || ($this->data['phototestimonial_format_item_name_rating']=='')) $this->data['phototestimonial_format_item_name_rating'] = $this->language->get('phototestimonial_format_item_name_rating');
		if (!isset($this->data['phototestimonial_format_item_view_rating'])) $this->data['phototestimonial_format_item_view_rating'] = 0;
		if ((!isset($this->data['phototestimonial_format_item_name_captcha'])) || ($this->data['phototestimonial_format_item_name_captcha']=='')) $this->data['phototestimonial_format_item_name_captcha'] = $this->language->get('phototestimonial_format_item_name_captcha');
		if (!isset($this->data['phototestimonial_format_item_view_captcha'])) $this->data['phototestimonial_format_item_view_captcha'] = 0;
		

		$this->data['phototestimonial_format_item_name_captcha_default'] = $this->language->get('phototestimonial_format_item_name_captcha');

		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->data['phototestimonial_format_views'][0] = $this->language->get('entry_items_view_show');
		$this->data['phototestimonial_format_views'][1] = $this->language->get('entry_items_view_hide');
		$this->data['phototestimonial_format_views'][2] = $this->language->get('entry_items_view_required');

		$this->data['phototestimonial_format_views2'][0] = $this->language->get('entry_items_view_show');
		$this->data['phototestimonial_format_views2'][1] = $this->language->get('entry_items_view_hide');


		$this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();


		$this->template = 'module/phototestimonial.tpl';
		$this->children = array(
			'common/header',	
			'common/footer'	
		);
		
		//$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
		$this->response->setOutput($this->render());
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/phototestimonial')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}


	public function install() {
		$this->load->model('catalog/phototestimonial');
		$this->model_catalog_phototestimonial->createDatabaseTables();
	}

	public function uninstall() {

		$this->load->model('catalog/phototestimonial');
		$this->model_catalog_phototestimonial->dropDatabaseTables();
	}
}
?>