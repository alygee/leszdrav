<?php
class ControllerPaymentyandexsimplecard extends Controller {
	private $error = array();

	public function index() {

		$this->data['version'] = '1.1';
		
		$this->load->language('payment/yandexsimple_card');
		$this->document->setTitle ($this->language->get('heading_title'));
		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->validate())) {
			$this->load->model('setting/setting');
			$this->model_setting_setting->editSetting('yandexsimple_card', $this->request->post);
			$this->session->data['success'] = $this->language->get('text_success');
			$this->redirect($this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['text_payment'] = $this->language->get('text_payment');
		$this->data['text_all_zones'] = $this->language->get('text_all_zones');
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['entry_schet'] = $this->language->get('entry_schet');
		$this->data['entry_komis'] = $this->language->get('entry_komis');
		$this->data['entry_komis_card'] = $this->language->get('entry_komis_card');
		$this->data['entry_paydisable'] = $this->language->get('entry_paydisable');
		$this->data['entry_paydisable_ya'] = $this->language->get('entry_paydisable_ya');
		$this->data['entry_paydisable_card'] = $this->language->get('entry_paydisable_card');
		$this->data['entry_order_status'] = $this->language->get('entry_order_status');
		$this->data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
		$this->data['new_window'] = $this->language->get('new_window');

		if (isset($this->request->post['yandexsimple_card_schet'])) {
			$this->data['yandexsimple_card_schet'] = $this->request->post['yandexsimple_card_schet'];
		} else {
			$this->data['yandexsimple_card_schet'] = $this->config->get('yandexsimple_card_schet');
		}

		if (isset($this->request->post['yandexsimple_card_komis'])) {
			$this->data['yandexsimple_card_komis'] = $this->request->post['yandexsimple_card_komis'];
		} else {
			$this->data['yandexsimple_card_komis'] = $this->config->get('yandexsimple_card_komis');
		}

		if (isset($this->request->post['yandexsimple_card_komis_card'])) {
			$this->data['yandexsimple_card_komis_card'] = $this->request->post['yandexsimple_card_komis_card'];
		} else {
			$this->data['yandexsimple_card_komis_card'] = $this->config->get('yandexsimple_card_komis_card');
		}

		if (isset($this->request->post['yandexsimple_card_paydisable_ya'])) {
			$this->data['yandexsimple_card_paydisable_ya'] = $this->request->post['yandexsimple_card_paydisable_ya'];
		} else {
			$this->data['yandexsimple_card_paydisable_ya'] = $this->config->get('yandexsimple_card_paydisable_ya');
		}

		if (isset($this->request->post['yandexsimple_card_paydisable_card'])) {
			$this->data['yandexsimple_card_paydisable_card'] = $this->request->post['yandexsimple_card_paydisable_card'];
		} else {
			$this->data['yandexsimple_card_paydisable_card'] = $this->config->get('yandexsimple_card_paydisable_card');
		}

		if (isset($this->request->post['yandexsimple_card_order_status_id'])) {
			$this->data['yandexsimple_card_order_status_id'] = $this->request->post['yandexsimple_card_order_status_id'];
		} else {
			$this->data['yandexsimple_card_order_status_id'] = $this->config->get('yandexsimple_card_order_status_id');
		}

		if (isset($this->request->post['yandexsimple_new_window_card'])) {
			$this->data['yandexsimple_new_window_card'] = $this->request->post['yandexsimple_new_window_card'];
		} else {
			$this->data['yandexsimple_new_window_card'] = $this->config->get('yandexsimple_new_window_card');
		}

		$this->load->model('localisation/order_status');
		$this->data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

		if (isset($this->request->post['yandexsimple_card_geo_zone_id'])) {
			$this->data['yandexsimple_card_geo_zone_id'] = $this->request->post['yandexsimple_card_geo_zone_id'];
		} else {
			$this->data['yandexsimple_card_geo_zone_id'] = $this->config->get('yandexsimple_card_geo_zone_id');
		}

		$this->load->model('localisation/geo_zone');
		$this->data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();

		if (isset($this->request->post['yandexsimple_card_status'])) {
			$this->data['yandexsimple_card_status'] = $this->request->post['yandexsimple_card_status'];
		} else {
			$this->data['yandexsimple_card_status'] = $this->config->get('yandexsimple_card_status');
		}

		if (isset($this->request->post['yandexsimple_card_sort_order'])) {
			$this->data['yandexsimple_card_sort_order'] = $this->request->post['yandexsimple_card_sort_order'];
		} else {
			$this->data['yandexsimple_card_sort_order'] = $this->config->get('yandexsimple_card_sort_order');
		}


		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

		if (isset($this->error['schet'])) {
			$this->data['error_schet'] = $this->error['schet'];
		} else {
			$this->data['error_schet'] = '';
		}

		$this->data['breadcrumbs'] = array();
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      =>  $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_payment'),
			'href'      => $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'),       		
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('payment/free_checkout', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);


		$this->data['action'] = $this->url->link('payment/yandexsimple_card', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL');
		$this->template = 'payment/yandexsimple_card.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render(TRUE), $this->config->get('config_compression'));
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'payment/yandexsimple_card')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->request->post['yandexsimple_card_schet']) {
			$this->error['schet'] = $this->language->get('error_schet');
		}

		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
}
?>