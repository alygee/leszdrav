<?php
class ModelPaymentyandexsimple extends Model { 
public function getMethod($address, $total) {
		$this->load->language('payment/yandexsimple');
		
		if ($total <= 0) {
			$status = true;
		} else {
			$status = false;
		}
		
    if ($this->config->get('yandexsimple_status')) {
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$this->config->get('yandexsimple_geo_zone_id') . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");

			if (!$this->config->get('yandexsimple_geo_zone_id')) {
				$status = TRUE;
			} elseif ($query->num_rows) {
				$status = TRUE;
			} else {
				$status = FALSE;
			}
		} else {
			$status = FALSE;
		}
    
		$method_data = array();
		if ($status) {  
			$metname = $this->language->get('text_title');
			$method_data = array( 
				'code'       => 'yandexsimple',
				'title'      => $metname,
				'sort_order' => $this->config->get('yandexsimple_sort_order')
			);
		}
		
    	return $method_data;
  	}
}
?>