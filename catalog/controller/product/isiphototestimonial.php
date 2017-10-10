<?php 
// RegEx
define('EMAIL_PATTERN', '/^[^\@]+@.*\.[a-z]{2,6}$/i');
 
class ControllerProductIsiPhotoTestimonial extends Controller {
	private $error = array(); 

	private function str_split_unicode($str, $l = 0) {
	    if ($l > 0) {
	        $ret = array();
	        $len = mb_strlen($str, "UTF-8");
	        for ($i = 0; $i < $len; $i += $l) {
	            $ret[] = mb_substr($str, $i, $l, "UTF-8");
	        }
	        return $ret;
	    }
	    return preg_split("//u", $str, -1, PREG_SPLIT_NO_EMPTY);
	}



  	private function get_upload_files($avatar = 0) {

		if ($avatar == 0)
			$uploaddir = DIR_IMAGE . 'data/phototestimonial/' . session_id();
		else
			$uploaddir = DIR_IMAGE . 'data/phototestimonial/' . session_id() . '/avatar';

		if ($avatar == 0)
			$uploaddir2 = 'data/phototestimonial/' . session_id();
		else
			$uploaddir2 = 'data/phototestimonial/' . session_id() . '/avatar';


		if (!isset($setting['phototestimonial_image_width'])) $setting['phototestimonial_image_width'] = 60;
		if (!isset($setting['phototestimonial_image_height'])) $setting['phototestimonial_image_height'] = 80;

		$this->load->model('tool/image');
		$list = array();

		if (file_exists($uploaddir))
		{
		    $dir = opendir($uploaddir);
		    while($file = readdir($dir)){
		        if ($file != '.' and $file != '..' and $file != 'avatar'){
		            // add the filename, to be sure not to
		            // overwrite a array key
		            $ctime = filectime($uploaddir . '/' . $file) . ',' . $file;
		            $list[$ctime] = array( 'file' => $file, 'path' => $this->model_tool_image->resize($uploaddir2 . '/' .  $file, $setting['phototestimonial_image_width'], $setting['phototestimonial_image_height']), 'full_path' => $uploaddir . '/' . $file );
		        }
		    }
		    closedir($dir);
		    ksort($list);
		}
		
		return $list;

	}

  	public function delete_upload_file() {
		
		$avatar = $this->request->post['avatar'];

		$upload_files = $this->get_upload_files($avatar);
		$i = 0;
		foreach ($upload_files as $file) {
			if ($i++ == $this->request->post['file_index'])
			{
				$res = unlink( $file['full_path']);
				if ($res == false) {echo false; return;}
			}
		}	
		echo json_encode($this->get_upload_files($avatar));

	}

  	private function is_file_uploaded($filename, $avatar) {		
		$upload_files = $this->get_upload_files($avatar);
		foreach ($upload_files as $file) {
			if ($file['file'] == $filename)
			{
				return true;
			}
		}	

		return false;
	}

  	private function get_uploaded_count($avatar) {
		$upload_files = $this->get_upload_files($avatar);
		return count($upload_files);
	}


  	public function get_files() {
		$avatar = $this->request->post['avatar'];
		echo json_encode($this->get_upload_files($avatar));
	}

  	private function move_upload_files($avatar) {
		$list = array();
		$upload_files = $this->get_upload_files($avatar);
		foreach ($upload_files as $file) {
			if ($avatar)
				$new_path = 'data/phototestimonial/' . session_id() . '_avatar_' . $file['file'];
			else
				$new_path = 'data/phototestimonial/' . session_id() . '_' . $file['file'];

			if (file_exists(DIR_IMAGE . $new_path)) unlink(DIR_IMAGE . $new_path);
			rename($file['full_path'], DIR_IMAGE . $new_path);
			$list[] = array('full_path' => $new_path);
		}

		if ($avatar)
		{
			if (file_exists(DIR_IMAGE . 'data/phototestimonial/' . session_id() . '/avatar')) rmdir(DIR_IMAGE . 'data/phototestimonial/' . session_id() . '/avatar');
		}
		else
		{
			if (file_exists(DIR_IMAGE . 'data/phototestimonial/' . session_id())) rmdir(DIR_IMAGE . 'data/phototestimonial/' . session_id());
		}

		return $list;
	}

	    
  	public function upload() {

		if (!is_uploaded_file($_FILES['uploadfile']['tmp_name'])) {echo '{ "error": "error_upload" }'; return;}

		$avatar = $_POST['avatar'];

		$uploaddir = DIR_IMAGE . 'data/phototestimonial/' . session_id();
		if (!file_exists($uploaddir)) @mkdir($uploaddir, 0777);

		if ($avatar == 1)
			$uploaddir = DIR_IMAGE . 'data/phototestimonial/' . session_id() . '/avatar';

		if (!file_exists($uploaddir)) @mkdir($uploaddir, 0777);


		$filename =  basename($_FILES['uploadfile']['tmp_name']);
		if ($this->is_file_uploaded($filename, $avatar) == true) {echo '{ "error": "same_name" }'; return;}

		$phototestimonial_load_image_count = $this->config->get('phototestimonial_load_image_count');
		if (!isset($phototestimonial_load_image_count)) $phototestimonial_load_image_count = 3;
		$phototestimonial_load_image_size = $this->config->get('phototestimonial_load_image_size');
		if (!isset($phototestimonial_load_image_size)) $phototestimonial_load_image_size = 1024;		

		if ($avatar==0)
		{
			if ($this->get_uploaded_count($avatar) > $phototestimonial_load_image_count - 1) {echo '{ "error": "max_limit" }'; return;}
		}

		// проверка на вес файла
		if ($_FILES['uploadfile']['size']!="")
		{
			if ($_FILES['uploadfile']['size'] > $phototestimonial_load_image_size*1024) {echo '{ "error": "size_to_big" }'; return;}
		}

		$size  = getimagesize($_FILES['uploadfile']['tmp_name']);	
		if ($size==FALSE) { echo '{ "error": "not_image" }'; return; }

		$info = pathinfo($_FILES['uploadfile']['name']);		
		$extension = $info['extension'];

		$file = $uploaddir . '/' . $filename . "." . $extension;

		// проверить на то, что это изображение
		// через ресайз
		// и отмасштабировать - сделать заданный максимальный размер - не хранить оригинал?

		 
		if (move_uploaded_file($_FILES['uploadfile']['tmp_name'], $file)) { 

			$size  = getimagesize($file);
	
			$width_orig = $size[0];
			$height_orig = $size[1];

			$max_width = 1000;
			$max_height = 1000;

			$scale = min($max_width / $width_orig, $max_height / $height_orig);
						
			$new_width = (int)($width_orig * $scale);
			$new_height = (int)($height_orig * $scale);	

			$image = new Image($file);
			$image->resize($new_width, $new_height);
			$image->save($file);

			echo json_encode($this->get_upload_files($avatar));

		} else {
			echo '{ "error": "error_move" }';
		}

	}

  	public function index() {
		$this->language->load('product/isiphototestimonial');
		$this->document->SetTitle( $this->language->get('heading_title'));
	   	$this->data['heading_title'] = $this->language->get('heading_title');
		//$this->data['ip'] = $this->request->server['REMOTE_ADDR'];

		$this->language->load('module/phototestimonial');
		$this->data['show_all'] = $this->language->get('show_all');
		$this->data['showall_url'] = $this->url->link('product/phototestimonial', '', 'SSL');
		$this->data['button_send'] = $this->language->get('button_send');

		$this->data['error_upload'] = $this->language->get('error_upload');
		$this->data['same_name'] = $this->language->get('same_name');
		$this->data['max_limit'] = $this->language->get('max_limit');
		$this->data['size_to_big'] = $this->language->get('size_to_big');
		$this->data['not_image'] = $this->language->get('not_image');
		$this->data['error_move'] = $this->language->get('error_move');
		$this->data['select_file'] = $this->language->get('select_file');
		$this->data['delete_file'] = $this->language->get('delete_file');
		$this->data['upload_msg'] = $this->language->get('upload_msg');


		$this->document->addScript('catalog/view/javascript/jquery/ajaxupload.js');

		$this->load->model('catalog/phototestimonial');


		if (!isset($setting['phototestimonial_image_width'])) $setting['phototestimonial_image_width'] = 60;
		if (!isset($setting['phototestimonial_image_height'])) $setting['phototestimonial_image_height'] = 80;

		$this->load->model('tool/image');
		$this->data['no_photo'] = $this->model_tool_image->resize('data/phototestimonial/no_foto.jpg', $setting['phototestimonial_image_width'], $setting['phototestimonial_image_height']);

		$this->data['phototestimonial_load_image_count'] = $this->config->get('phototestimonial_load_image_count');
		if (!isset($this->data['phototestimonial_load_image_count'])) $this->data['phototestimonial_load_image_count'] = 3;


		if ($this->request->server['REQUEST_METHOD'] == 'POST' && $this->validate()) {

			$this->data['data']=array();

			$this->data['data']['avatar'] = $this->move_upload_files(true);
			$this->data['data']['images'] = $this->move_upload_files(false);


			$this->data['data']['name'] = strip_tags(html_entity_decode($this->request->post['name']));
			$this->data['data']['city'] = strip_tags(html_entity_decode($this->request->post['city']));
			$this->data['data']['rating'] = $this->request->post['rating'];				
			$this->data['data']['email'] = strip_tags(html_entity_decode($this->request->post['email']));
			$this->data['data']['title'] = strip_tags(html_entity_decode($this->request->post['title']));

			$this->data['data']['page'] = strip_tags(html_entity_decode($this->request->post['page']));

			$this->data['data']['description'] = strip_tags(html_entity_decode($this->request->post['description']));

			$descriptions = explode(" ", $this->data['data']['description']);
			$size = count($descriptions);
			for($i=0; $i<$size; $i++)
			{ 
				$w_arr = $this->str_split_unicode($descriptions[$i],14);
				$descriptions[$i] = implode(" ",$w_arr);

			}
			$this->data['data']['description'] = implode(" ",$descriptions);

			if ($this->config->get('phototestimonial_admin_approved')=='')
				$this->model_catalog_phototestimonial->addphototestimonial($this->data['data'], 1);
			else
				$this->model_catalog_phototestimonial->addphototestimonial($this->data['data'], 0);

			$this->session->data['success'] = $this->language->get('text_add');
			
			// send autor email
			$email = $this->data['data']['email'];
			if ($email == "") $email = "empty";


			$sender = $this->data['data']['name'];
			if ($sender == "") $sender = "empty";

			$store_name = $this->config->get('config_name');
	
			$subject = sprintf($this->language->get('text_subject'), $sender, $store_name);
	
			$message  = '<html>'.$this->language->get('text_header') . "<br>";
					
	
			$this->load->model('tool/image');

			$phototestimonial_all_page_image_width = $this->config->get('phototestimonial_all_page_image_width');
			$phototestimonial_all_page_image_height = $this->config->get('phototestimonial_all_page_image_height');

			if (!isset($phototestimonial_all_page_image_width)) $phototestimonial_all_page_image_width = 120;
			if (!isset($phototestimonial_all_page_image_height)) $phototestimonial_all_page_image_height = 160;


			foreach ($this->data['data']['avatar'] as $img)
			{
				$avatar = $this->model_tool_image->resize($img['full_path'], $phototestimonial_all_page_image_width, $phototestimonial_all_page_image_height);	
				$message .= "<img src='" . $avatar . "'>";
			}

			$message .= "<br>";

			$message .= $this->data['data']['description']. "<br>";

			foreach ($this->data['data']['images'] as $img)
			{
				$ext_image = $this->model_tool_image->resize($img['full_path'], $phototestimonial_all_page_image_width, $phototestimonial_all_page_image_height);	
				$message .= "<img src='" . $ext_image . "'>";
			}

			$message .= "<br>";
	
			$message .= $this->language->get('text_footer')."</html>";
	
				
			if ($email!="empty")
			{
				$mail = new Mail();
				$mail->protocol = $this->config->get('config_mail_protocol');
				$mail->parameter = $this->config->get('config_mail_parameter');
				$mail->hostname = $this->config->get('config_smtp_host');
				$mail->username = $this->config->get('config_smtp_username');
				$mail->password = $this->config->get('config_smtp_password');
				$mail->port = $this->config->get('config_smtp_port');
				$mail->timeout = $this->config->get('config_smtp_timeout');
				$mail->setFrom($email);
				$mail->setTo($email);
				$mail->setSender($sender);
				$mail->setSubject($subject);
				$mail->setHtml(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
				$mail->send();
			}

			// send admin email
			if ($this->config->get('phototestimonial_send_to_admin')!='')
			{
				
				$mail = new Mail();
				$mail->protocol = $this->config->get('config_mail_protocol');
				$mail->parameter = $this->config->get('config_mail_parameter');
				$mail->hostname = $this->config->get('config_smtp_host');
				$mail->username = $this->config->get('config_smtp_username');
				$mail->password = $this->config->get('config_smtp_password');
				$mail->port = $this->config->get('config_smtp_port');
				$mail->timeout = $this->config->get('config_smtp_timeout');
				$mail->setFrom($email);
				$mail->setTo($this->config->get('config_email'));
				$mail->setSender($sender);
				$mail->setSubject($subject);
				$mail->setHtml(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
				$mail->send();
			}


			$this->redirect($this->url->link('product/isiphototestimonial/success', '', 'SSL'));

			
		}
			
	
      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
	        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', '', 'SSL'),
	        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
	        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('product/isiphototestimonial', '', 'SSL'),
	        	'separator' => $this->language->get('text_separator')
      	);			

	    	$this->data['entry_title'] = $this->language->get('entry_title');
	    	$this->data['entry_name'] = $this->language->get('entry_name');
	    	$this->data['entry_city'] = $this->language->get('entry_city');
	    	$this->data['entry_email'] = $this->language->get('entry_email');
	    	$this->data['entry_enquiry'] = $this->language->get('entry_enquiry');
		$this->data['entry_captcha'] = $this->language->get('entry_captcha');
	    	$this->data['entry_rating'] = $this->language->get('entry_rating');
		$this->data['entry_good'] = $this->language->get('entry_good');
		$this->data['entry_bad'] = $this->language->get('entry_bad');
		$this->data['text_note'] = $this->language->get('text_note');
		$this->data['text_conditions'] = $this->language->get('text_conditions');
	    	$this->data['entry_page'] = $this->language->get('entry_page');

		$phototestimonial_load_image_size = $this->config->get('phototestimonial_load_image_size');
		if (!isset($phototestimonial_load_image_size)) $phototestimonial_load_image_size = 1024;


		$entry_avatar = $this->config->get('phototestimonial_format_item_name_avatar');
		if (!isset($entry_avatar)) $entry_avatar = $this->language->get('entry_avatar');

		$view_avatar = $this->config->get('phototestimonial_format_item_view_avatar');
		if (!isset($view_avatar)) $view_avatar = 0;
		$this->data['view_avatar'] = $view_avatar;


		if ($phototestimonial_load_image_size!='')
	    	{
			$this->data['entry_avatar'] = $entry_avatar . ' ' . sprintf($this->language->get('entry_max_size'), $phototestimonial_load_image_size);
	    		$this->data['entry_photos'] = $this->language->get('entry_photos') . sprintf($this->language->get('entry_max_size'), $phototestimonial_load_image_size);
		}
		else
		{
			$this->data['entry_avatar'] = $entry_avatar . ' ' . $this->language->get('entry_no_limit');
	    		$this->data['entry_photos'] = $this->language->get('entry_photos') . $this->language->get('entry_no_limit');
		}




		$view_title = $this->config->get('phototestimonial_format_item_view_title');
		if (!isset($view_title)) $view_title = 0;
		$this->data['view_title'] = $view_title;

		$view_name = $this->config->get('phototestimonial_format_item_view_name');
		if (!isset($view_name)) $view_name = 0;
		$this->data['view_name'] = $view_name;

		$view_page = $this->config->get('phototestimonial_format_item_view_page');
		if (!isset($view_page)) $view_page = 0;
		$this->data['view_page'] = $view_page;

		$view_city = $this->config->get('phototestimonial_format_item_view_city');
		if (!isset($view_city)) $view_city = 0;
		$this->data['view_city'] = $view_city;

		//$entry_email = $this->config->get('phototestimonial_format_item_name_email');
		//if (!isset($entry_email)) $entry_email = $this->language->get('entry_email');
		//$this->data['entry_email'] = $entry_email;

		$view_email = $this->config->get('phototestimonial_format_item_view_email');
		if (!isset($view_email)) $view_email = 0;
		$this->data['view_email'] = $view_email;

		//$entry_rating = $this->config->get('phototestimonial_format_item_name_rating');
		//if (!isset($entry_rating)) $entry_rating = $this->language->get('entry_rating');
		//$this->data['entry_rating'] = $entry_rating;

		$view_rating = $this->config->get('phototestimonial_format_item_view_rating');
		if (!isset($view_rating)) $view_rating = 0;
		$this->data['view_rating'] = $view_rating;


		//$entry_captcha = $this->config->get('phototestimonial_format_item_name_captcha');
		//if (!isset($entry_captcha)) $entry_captcha = $this->language->get('entry_captcha');
		//$this->data['entry_captcha'] = $entry_captcha;

		$view_captcha = $this->config->get('phototestimonial_format_item_view_captcha');
		if (!isset($view_captcha)) $view_captcha = 0;
		$this->data['view_captcha'] = $view_captcha;


		if (isset($this->error['name'])) {
    		$this->data['error_name'] = $this->error['name'];
		} else {
			$this->data['error_name'] = '';
		}

		if (isset($this->error['avatar'])) {
    		$this->data['error_avatar'] = $this->error['avatar'];
		} else {
			$this->data['error_avatar'] = '';
		}

		if (isset($this->error['title'])) {
    		$this->data['error_title'] = $this->error['title'];
		} else {
			$this->data['error_title'] = '';
		}
		
		if (isset($this->error['email'])) {
			$this->data['error_email'] = $this->error['email'];
		} else {
			$this->data['error_email'] = '';
		}		

		if (isset($this->error['page'])) {
			$this->data['error_page'] = $this->error['page'];
		} else {
			$this->data['error_page'] = '';
		}		

		if (isset($this->error['city'])) {
			$this->data['error_city'] = $this->error['city'];
		} else {
			$this->data['error_city'] = '';
		}		
			
		if (isset($this->error['enquiry'])) {
			$this->data['error_enquiry'] = $this->error['enquiry'];
		} else {
			$this->data['error_enquiry'] = '';
		}		
		
 		if (isset($this->error['captcha'])) {
			$this->data['error_captcha'] = $this->error['captcha'];
		} else {
			$this->data['error_captcha'] = '';
		}	

    		$this->data['button_continue'] = $this->language->get('button_continue');
    
    		$this->data['action'] = $this->url->link('product/isiphototestimonial', '', 'SSL');
    		$this->data['action_upload'] = $this->url->link('product/isiphototestimonial/upload', '', 'SSL');
    		$this->data['action_delete_upload_file'] = $this->url->link('product/isiphototestimonial/delete_upload_file', '', 'SSL');
    		$this->data['action_get_files'] = $this->url->link('product/isiphototestimonial/get_files', '', 'SSL');

		if ($this->customer->isLogged()) 
			$this->data['need_captcha'] = false;
		else	
			$this->data['need_captcha'] = true;


		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} else {

		if ($this->customer->isLogged()) 
			$this->data['name'] = $this->customer->getFirstName();
		else	
			$this->data['name'] = '';

		}

		if (isset($this->request->post['page'])) {
			$this->data['page'] = $this->request->post['page'];
		} else {
			$this->data['page'] = '';
		}


		if (isset($this->request->post['city'])) {
			$this->data['city'] = $this->request->post['city'];
		} else {
			$this->data['city'] = '';
		}

		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} else {
			if ($this->customer->isLogged()) 
				$this->data['email'] = $this->customer->getEmail();
			else	
				$this->data['email'] = '';

		}
		if (isset($this->request->post['title'])) {
			$this->data['title'] = $this->request->post['title'];
		} else {
			$this->data['title'] = '';
		}
		if (isset($this->request->post['rating'])) {
			$this->data['rating'] = $this->request->post['rating'];
		} else {
			if ($this->config->get('phototestimonial_default_rating')=='')
				$this->data['rating'] = '3';
			else
				$this->data['rating'] = $this->config->get('phototestimonial_default_rating');

		}
		
		if (isset($this->request->post['description'])) {
			$this->data['description'] = $this->request->post['description'];
		} else {
			$this->data['description'] = '';
		}
		
		if (isset($this->request->post['captcha'])) {
			$this->data['captcha'] = $this->request->post['captcha'];
		} else {
			$this->data['captcha'] = '';
		}		
	
		$this->data['upload_files'] = $this->get_upload_files();
		$this->data['upload_avatar'] = $this->get_upload_files(1);


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/product/isiphototestimonial.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/product/isiphototestimonial.tpl';
		} else {
			$this->template = 'default/template/product/isiphototestimonial.tpl';
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

  	public function success() {
		$this->language->load('product/isiphototestimonial');

		$this->document->SetTitle($this->language->get('isi_phototestimonial')); 

	     	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', '', 'SSL'),
        		'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('product/isiphototestimonial', '', 'SSL'),
        		'separator' => $this->language->get('text_separator')
      	);			
		
	    	$this->data['heading_title'] = $this->language->get('heading_title');
	
	    	$this->data['text_message'] = $this->language->get('text_message');
	
	    	$this->data['button_continue'] = $this->language->get('button_continue');
	
    		$this->data['continue'] = $this->url->link('common/home', '', 'SSL');


		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/success.tpl';
		} else {
			$this->template = 'default/template/common/success.tpl';
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

	public function captcha() {
		$this->load->library('captcha');
		
		$captcha = new Captcha();
		
		$this->session->data['captcha'] = $captcha->getCode();
		
		$captcha->showImage();
	}
	
  	private function validate() {

		if (!isset($this->request->post['description'])) $this->request->post['description'] = "";
	    	if ((strlen(utf8_decode($this->request->post['description'])) < 1) || (strlen(utf8_decode($this->request->post['description'])) > 999)) {
	      		$this->error['enquiry'] = $this->language->get('error_enquiry');
	    	}

		if (!isset($this->request->post['captcha'])) $this->request->post['captcha'] = "";

		$view_captcha = $this->config->get('phototestimonial_format_item_view_captcha');
		if (!isset($view_captcha)) $view_captcha = 0;

		if ($view_captcha==0)
		if (!$this->customer->isLogged())	
	    	if (!isset($this->session->data['captcha']) || ($this->session->data['captcha'] != $this->request->post['captcha'])) {
	      		$this->error['captcha'] = $this->language->get('error_captcha');
	    	}


		if (!isset($this->request->post['title'])) $this->request->post['title'] = "";
		$view_title = $this->config->get('phototestimonial_format_item_view_title');
		if (!isset($view_title)) $view_title = 0;
		if ($view_title == 2)
		{
			if ((strlen(utf8_decode($this->request->post['title'])) < 3) || (strlen(utf8_decode($this->request->post['title'])) > 64)) 
	      		$this->error['title'] = $this->language->get('error_title');
		}

		if (!isset($this->request->post['name'])) $this->request->post['name'] = "";
		$view_name = $this->config->get('phototestimonial_format_item_view_name');
		if (!isset($view_name)) $view_name = 0;
		if ($view_name == 2)
		{
			if ((strlen(utf8_decode($this->request->post['name'])) < 3) || (strlen(utf8_decode($this->request->post['name'])) > 32)) 
				$this->error['name'] = $this->language->get('error_name');
		}

		if (!isset($this->request->post['page'])) $this->request->post['page'] = "";
		$view_page = $this->config->get('phototestimonial_format_item_view_page');
		if (!isset($view_page)) $view_page = 0;
		if ($view_page == 2)
		{
			if ((strlen(utf8_decode($this->request->post['page'])) < 3) || (strlen(utf8_decode($this->request->post['page'])) > 64)) 
				$this->error['page'] = $this->language->get('error_page');
		}

		if (!isset($this->request->post['city'])) $this->request->post['city'] = "";
		$view_city = $this->config->get('phototestimonial_format_item_view_city');
		if (!isset($view_city)) $view_city = 0;
		if ($view_city == 2)
		{
			if ((strlen(utf8_decode($this->request->post['city'])) < 3) || (strlen(utf8_decode($this->request->post['city'])) > 64)) 
				$this->error['city'] = $this->language->get('error_city');
		}

		if (!isset($this->request->post['email'])) $this->request->post['email'] = "";
		$view_email = $this->config->get('phototestimonial_format_item_view_email');
		if (!isset($view_email)) $view_email = 0;
		if ($view_email == 2)
		{
			if (!preg_match(EMAIL_PATTERN, $this->request->post['email']))
				$this->error['email'] = $this->language->get('error_email');
		}

		if (!isset($this->request->post['rating'])) $this->request->post['rating'] = "";


		if (!$this->error) {
	  		return TRUE;
		} else {
	  		return FALSE;
		}  	  
  	}
}
?>
