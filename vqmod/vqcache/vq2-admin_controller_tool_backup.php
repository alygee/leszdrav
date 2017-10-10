<?php 
class ControllerToolBackup extends Controller { 
	private $error = array();
	
	public function index() {		

                $this->data['max_upload_limit']  = '<p>php.ini path: <b>' . php_ini_loaded_file() . '</b></p>';
                $this->data['max_upload_limit'] .= '<p>upload_max_filesize: <b>' . ini_get('upload_max_filesize') .  '</b></p>';
                $this->data['max_upload_limit'] .= '<p>post_max_size: <b>' . ini_get('post_max_size') .  '</b></p>';
                $this->data['max_upload_limit'] .= '<p><a href="http://stackoverflow.com/a/2184541" target="_blank">How to increase them</a></p>';
            
		$this->language->load('tool/backup');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('tool/backup');
				
		if ($this->request->server['REQUEST_METHOD'] == 'POST' && $this->user->hasPermission('modify', 'tool/backup')) {
			if (is_uploaded_file($this->request->files['import']['tmp_name'])) {
				$content = file_get_contents($this->request->files['import']['tmp_name']);
			} else {
				$content = false;
			}
			
			if ($content) {
				$this->model_tool_backup->restore($content);
				
				$this->session->data['success'] = $this->language->get('text_success');
				
				$this->redirect($this->url->link('tool/backup', 'token=' . $this->session->data['token'], 'SSL'));
			} else {
				
            $err_code = isset($this->request->files['import']['error']) ? $this->request->files['import']['error'] : null;
            if ($err_code !== null) {
                $this->error['warning'] = $this->language->get('error_upload_' . $this->request->files['import']['error']);
                if ($err_code == '1' || $err_code == '2') {
                    $this->error['warning'] .= '<br />You can find more information <a href="http://stackoverflow.com/a/2184541" target="_blank">here</a> or contact your hosting provider.';
                }
            } else {
                $this->error['warning'] = $this->language->get('error_empty');
            }
            
			}
		}

		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_select_all'] = $this->language->get('text_select_all');
		$this->data['text_unselect_all'] = $this->language->get('text_unselect_all');
		
		$this->data['entry_restore'] = $this->language->get('entry_restore');
		$this->data['entry_backup'] = $this->language->get('entry_backup');
		 
		$this->data['button_backup'] = $this->language->get('button_backup');
		$this->data['button_restore'] = $this->language->get('button_restore');
		
		if (isset($this->session->data['error'])) {
    		$this->data['error_warning'] = $this->session->data['error'];
    
			unset($this->session->data['error']);
 		} elseif (isset($this->error['warning'])) {
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
		
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),     		
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('tool/backup', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['restore'] = $this->url->link('tool/backup', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['backup'] = $this->url->link('tool/backup/backup', 'token=' . $this->session->data['token'], 'SSL');


		$this->data['tables'] = $this->model_tool_backup->getTables();

		$this->template = 'tool/backup.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}
	
	public function backup() {
		$this->language->load('tool/backup');
		
		if (!isset($this->request->post['backup'])) {
			$this->session->data['error'] = $this->language->get('error_backup');
			
			$this->redirect($this->url->link('tool/backup', 'token=' . $this->session->data['token'], 'SSL'));
		} elseif ($this->user->hasPermission('modify', 'tool/backup')) {
			$this->response->addheader('Pragma: public');
			$this->response->addheader('Expires: 0');
			$this->response->addheader('Content-Description: File Transfer');
			$this->response->addheader('Content-Type: application/octet-stream');
			$this->response->addheader('Content-Disposition: attachment; filename=' . date('Y-m-d_H-i-s', time()).'_backup.sql');
			$this->response->addheader('Content-Transfer-Encoding: binary');
			
			$this->load->model('tool/backup');
			
			$this->response->setOutput($this->model_tool_backup->backup($this->request->post['backup']));
		} else {
			$this->session->data['error'] = $this->language->get('error_permission');
			
			$this->redirect($this->url->link('tool/backup', 'token=' . $this->session->data['token'], 'SSL'));			
		}
	}
}
?>