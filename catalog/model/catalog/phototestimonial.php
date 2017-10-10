<?php
class ModelCatalogphototestimonial extends Model {
	public function getPhototestimonial($phototestimonial_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "phototestimonial t LEFT JOIN " . DB_PREFIX . "phototestimonial_description td ON (t.phototestimonial_id = td.phototestimonial_id) WHERE t.phototestimonial_id = '" . (int)$phototestimonial_id . "' AND td.language_id = '" . (int)$this->config->get('config_language_id') . "' AND t.status = '1'");
	
		return $query->rows;
	}

	public function getPhototestimonialImages($phototestimonial_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "phototestimonial_images where phototestimonial_id=" . $phototestimonial_id);
	
		return $query->rows;
	}
	
	public function getphototestimonials($start = 0, $limit = 20, $random = false) {
		if ($random == false)
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "phototestimonial t LEFT JOIN " . DB_PREFIX . "phototestimonial_description td ON (t.phototestimonial_id = td.phototestimonial_id) WHERE td.language_id = '" . (int)$this->config->get('config_language_id') . "' AND t.status = '1' ORDER BY t.date_added DESC LIMIT " . (int)$start . "," . (int)$limit);
		else
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "phototestimonial t LEFT JOIN " . DB_PREFIX . "phototestimonial_description td ON (t.phototestimonial_id = td.phototestimonial_id) WHERE td.language_id = '" . (int)$this->config->get('config_language_id') . "' AND t.status = '1' ORDER BY RAND() LIMIT " . (int)$start . "," . (int)$limit);

		return $query->rows;
	}
	
	public function getTotalphototestimonials() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "phototestimonial t LEFT JOIN " . DB_PREFIX . "phototestimonial_description td ON (t.phototestimonial_id = td.phototestimonial_id) WHERE td.language_id = '" . (int)$this->config->get('config_language_id') . "' AND t.status = '1'");
			
		return $query->row['total'];
	}
	
	
	public function addPhototestimonial($data, $status) {

		$avatar = "";

		foreach($data['avatar'] as $av)
		{
			$avatar = $av['full_path'];
		}

		$this->db->query("INSERT INTO " . DB_PREFIX . "phototestimonial SET status = '".$status."', rating = '".$this->db->escape($data['rating'])."', name='".$this->db->escape($data['name'])."', city = '".$this->db->escape($data['city'])."', email='".$this->db->escape($data['email'])."', date_added = NOW(), page='". $this->db->escape($data['page']) ."', avatar='".$avatar."'");

		$phototestimonial_id = $this->db->getLastId(); 
		
		$results = $this->db->query("SELECT * FROM " . DB_PREFIX . "language ORDER BY sort_order, name"); 

		foreach ($results->rows as $result) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "phototestimonial_description SET phototestimonial_id = '" . (int)$phototestimonial_id . "', language_id = '".(int)$result['language_id']."', title = '" . $this->db->escape($data['title']) . "', description = '" . $this->db->escape($data['description']) . "'");
		}

		$or = 1;
		foreach($data['images'] as $im)
		{
			$this->db->query("INSERT INTO " . DB_PREFIX . "phototestimonial_images SET phototestimonial_id = '" . (int)$phototestimonial_id . "', path = '".$im['full_path']."', sort_order = " . $or++ . ", description = ''");
		}

			
	}
}
?>