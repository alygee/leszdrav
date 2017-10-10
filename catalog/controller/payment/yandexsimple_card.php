<?php
class ControllerPaymentYandexsimplecard extends Controller {
	protected function index() {
  		$this->language->load('payment/yandexsimple_card');
    	$this->data['button_confirm'] = $this->language->get('button_confirm');
	    $this->data['text_instruction'] = $this->language->get('text_instruction');
	    $this->data['yandexsimplei'] = $this->language->get('yandexsimple_instruction');

		$this->data['continue'] = $this->url->link('payment/yandexsimple_card/success');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/yandexsimple_card.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/payment/yandexsimple_card.tpl';
		} else {
            $this->template = 'default/template/payment/yandexsimple_card.tpl';
        }
		
		$this->render();
	}
	
	public function confirm() {
  		$this->language->load('payment/yandexsimple_card');
		$this->load->model('checkout/order');
		$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

		$action= HTTPS_SERVER . 'index.php?route=payment/yandexsimple_card/mail_pay';
		$pay = $action .
		
				'&order_id='	. $order_info['order_id'];

    	$comment  = $this->language->get('text_instruction') . "\n\n";
		$comment .= $this->language->get('yandexsimple_instruction_mail') . "\n\n";
		$comment .= $pay . "\n\n";
    	$comment = htmlspecialchars_decode($comment);
		$this->model_checkout_order->confirm($this->session->data['order_id'], $this->config->get('yandexsimple_card_order_status_id'), $comment, true);
	}

	public function success() {
		if ( isset($this->session->data['order_id']) && ( ! empty($this->session->data['order_id']))  ) {
			$this->session->data['last_order_id'] = $this->session->data['order_id'];
		}

		$this->load->model('checkout/order');
		if (isset($this->session->data['order_id'])) {
			$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
		}
		else{
			if (isset($this->session->data['last_order_id'])){
				$order_info = $this->model_checkout_order->getOrder($this->session->data['last_order_id']);
			}
			else{
				echo "No data";
				exit();
			}
		}

		$action= 'index.php?route=payment/yandexsimple_card/pay';

		
		$this->data['pay'] = $action .
				'&total='		. $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false) .
				'&order_id='	. $order_info['order_id'];

		if (isset($this->session->data['order_id'])) {
			$this->cart->clear();
			
			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['guest']);
			unset($this->session->data['comment']);
			unset($this->session->data['order_id']);	
			unset($this->session->data['coupon']);
			unset($this->session->data['reward']);
			unset($this->session->data['voucher']);
			unset($this->session->data['vouchers']);
		}	
									   
		$this->language->load('payment/yandexsimple_card');
		
		if (! empty($this->session->data['last_order_id']) ) {
			$this->document->setTitle(sprintf($this->language->get('heading_title_customer'), $this->session->data['last_order_id']));
		} else {
    		$this->document->setTitle($this->language->get('heading_title'));
		}
		
		$this->data['breadcrumbs'] = array(); 

      	$this->data['breadcrumbs'][] = array(
        	'href'      => $this->url->link('common/home'),
        	'text'      => $this->language->get('text_home'),
        	'separator' => false
      	); 
		
      	$this->data['breadcrumbs'][] = array(
        	'href'      => $this->url->link('checkout/cart'),
        	'text'      => $this->language->get('text_basket'),
        	'separator' => $this->language->get('text_separator')
      	);
				
		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('checkout/checkout', '', 'SSL'),
			'text'      => $this->language->get('text_checkout'),
			'separator' => $this->language->get('text_separator')
		);	
					
      	$this->data['breadcrumbs'][] = array(
        	'href'      => $this->url->link('checkout/success'),
        	'text'      => $this->language->get('text_success'),
        	'separator' => $this->language->get('text_separator')
      	);

		if (! empty($this->session->data['last_order_id']) ) {
			$this->data['heading_title'] = sprintf($this->language->get('heading_title_customer'), $this->session->data['last_order_id']);
		} else {
    		$this->data['heading_title'] = $this->language->get('heading_title');
		}
		
		if ($this->customer->isLogged()) {
			$this->data['text_message'] = sprintf($this->language->get('text_customer'), $this->url->link('account/order/info&order_id=' . $this->session->data['last_order_id'], '', 'SSL'), $this->url->link('account/order', '', 'SSL'), $this->url->link('information/contact'));
		} else {
    		$this->data['text_message'] = sprintf($this->language->get('text_guest'), $this->url->link('information/contact'));
		}
		
    	$this->data['button_pay'] = $this->language->get('button_pay');
    	$this->data['continue'] = $this->url->link('common/home');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/yandexsimple_success_card.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/payment/yandexsimple_success_card.tpl';
		} else {
			$this->template = 'default/template/payment/yandexsimple_success_card.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'			
		);
				
		$this->response->setOutput($this->render());
  	}

  	public function pay() {

  		if(!isset($this->request->post['nesyandexa'])){
  			$this->redirect($this->url->link('common/home'));
  		}
		$this->data['receiver'] = $this->config->get('yandexsimple_card_schet');
	  	if ($this->config->get('yandexsimple_card_komis_card')){$proc=$this->config->get('yandexsimple_card_komis_card');}
	  	
	  	if (is_numeric($this->request->get['total'])){
	  		if (isset($proc)){$this->data['total'] = ($this->request->get['total']*$proc/100)+$this->request->get['total'];}
	  		else{$this->data['total'] = $this->request->get['total'];}
  		}
  		else{
  			echo 'error: no total sum';
	  		exit();
  		}

  		if (is_numeric($this->request->get['order_id'])){
  			$this->data['order_id'] = $this->request->get['order_id'];
  		}
  		else{
  			echo 'error: no order id';
	  		exit();
  		}



  		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/yandexsimple_pay_card.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/payment/yandexsimple_pay_card.tpl';
		} else {
			$this->template = 'default/template/payment/yandexsimple_pay_card.tpl';
		}
		$this->response->setOutput($this->render());
  	}

  	public function mail_pay() {
  		if (isset($this->request->get['order_id']) && is_numeric($this->request->get['order_id'])){
			$this->load->model('checkout/order');
			$order_info = $this->model_checkout_order->getOrder($this->request->get['order_id']);

			$action= 'index.php?route=payment/yandexsimple_card/pay';

			
			$this->data['pay'] = $action .

					'&total='		. $this->currency->format($order_info['total'], $order_info['currency_code'], $order_info['currency_value'], false) .
					'&order_id='	. $order_info['order_id'];
										   
			$this->language->load('payment/yandexsimple_card');
			
			$this->document->setTitle(sprintf($this->language->get('heading_title_customer_mail'), $this->request->get['order_id']));
			
			
			$this->data['breadcrumbs'] = array(); 

	      	$this->data['breadcrumbs'][] = array(
	        	'href'      => $this->url->link('common/home'),
	        	'text'      => $this->language->get('text_home'),
	        	'separator' => false
	      	); 
			
	      	$this->data['breadcrumbs'][] = array(
	        	'href'      => $this->url->link('checkout/cart'),
	        	'text'      => $this->language->get('text_basket'),
	        	'separator' => $this->language->get('text_separator')
	      	);
					
			$this->data['breadcrumbs'][] = array(
				'href'      => $this->url->link('checkout/checkout', '', 'SSL'),
				'text'      => $this->language->get('text_checkout'),
				'separator' => $this->language->get('text_separator')
			);	
						
	      	$this->data['breadcrumbs'][] = array(
	        	'href'      => $this->url->link('checkout/success'),
	        	'text'      => $this->language->get('text_success'),
	        	'separator' => $this->language->get('text_separator')
	      	);

			$this->data['heading_title'] = sprintf($this->language->get('heading_title_customer_mail'), $this->request->get['order_id']);
			
			if ($this->customer->isLogged()) {
				$this->data['text_message'] = sprintf($this->language->get('text_customer_mail'), $this->url->link('account/order/info&order_id=' . $this->request->get['order_id'], '', 'SSL'), $this->url->link('account/order', '', 'SSL'), $this->url->link('information/contact'));
			} else {
	    		$this->data['text_message'] = sprintf($this->language->get('text_guest_mail'), $this->url->link('information/contact'));
			}
			
	    	$this->data['button_pay'] = $this->language->get('button_pay');
	    	$this->data['continue'] = $this->url->link('common/home');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/yandexsimple_success_card.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/payment/yandexsimple_success_card.tpl';
			} else {
				$this->template = 'default/template/payment/yandexsimple_success_card.tpl';
			}
			
			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header'			
			);
					
			$this->response->setOutput($this->render());
	  	}
	  	else{
	  		echo "No data";
	  	}
  	}
}
?>