<?php
class ModelCatalogPhotoTestimonial extends Model {
	
	public function updatePhototestimonialStatus($phototestimonial_id, $status){
		$this->db->query("UPDATE " . DB_PREFIX . "phototestimonial SET status = '" . (int)$status . "' WHERE phototestimonial_id = '" . (int)$phototestimonial_id . "'");
	}

	public function addPhototestimonial($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "phototestimonial SET name='".$this->db->escape($data['name'])."', city = '".$this->db->escape($data['city'])."', status = '" . (int)$data['status'] . "',rating = '".(int)$data['rating'] . "',date_added = '" . $this->db->escape($data['date_added']) . "',email='" . $this->db->escape($data['email']) . "' ,page='" . $this->db->escape($data['page']). "', avatar='". $this->db->escape($data['avatar']).  "'");

		$phototestimonial_id = $this->db->getLastId(); 
			
		foreach ($data['phototestimonial_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "phototestimonial_description SET phototestimonial_id = '" . (int)$phototestimonial_id . "', language_id = '" . (int)$language_id . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "'");
		}

		if(isset($data['images']))
		for ($i=0;$i<count($data['images']); $i++)
		{
			$this->db->query("INSERT INTO " . DB_PREFIX . "phototestimonial_images SET phototestimonial_id = '" . (int)$phototestimonial_id . "', path = '".$data['images'][$i]."', sort_order = " . $i . ", description = ''");
		}

        	if (isset($data['keyword'])) {
			$this->updatePhotoTestimonialKeyword($phototestimonial_id, $data['keyword']);
        	}

	}
	
	public function editPhototestimonial($phototestimonial_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "phototestimonial SET name='".$this->db->escape($data['name'])."', city = '".$this->db->escape($data['city'])."', status = '" . (int)$data['status'] . "',date_added = '".$this->db->escape($data['date_added']). "',rating = '".(int)$data['rating']."',email='". $this->db->escape($data['email']) . "',page='" . $this->db->escape($data['page']). "', avatar='". $this->db->escape($data['avatar']) ."' WHERE phototestimonial_id = '" . (int)$phototestimonial_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "phototestimonial_description WHERE phototestimonial_id = '" . (int)$phototestimonial_id . "'");
					
		foreach ($data['phototestimonial_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "phototestimonial_description SET phototestimonial_id = '" . (int)$phototestimonial_id . "', language_id = '" . (int)$language_id . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "'");
		}


		$this->db->query("DELETE FROM " . DB_PREFIX . "phototestimonial_images WHERE phototestimonial_id = '" . (int)$phototestimonial_id . "'");

		if(isset($data['images']))
		for ($i=0;$i<count($data['images']); $i++)
		{
			$this->db->query("INSERT INTO " . DB_PREFIX . "phototestimonial_images SET phototestimonial_id = '" . (int)$phototestimonial_id . "', path = '".$data['images'][$i]."', sort_order = " . $i . ", description = ''");
		}
	
        	if (isset($data['keyword'])) {
            	$this->updatePhotoTestimonialKeyword($phototestimonial_id, $data['keyword']);
        	}
	}
	
	public function deletePhototestimonial($phototestimonial_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "phototestimonial WHERE phototestimonial_id = '" . (int)$phototestimonial_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "phototestimonial_description WHERE phototestimonial_id = '" . (int)$phototestimonial_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "phototestimonial_images WHERE phototestimonial_id = '" . (int)$phototestimonial_id . "'");

	}	

	public function getPhototestimonial($phototestimonial_id) {
		$query = $this->db->query("SELECT *, (SELECT keyword FROM `" . DB_PREFIX . "url_alias` WHERE `query` = 'phototestimonial_id=" . (int)$phototestimonial_id . "') AS keyword FROM " . DB_PREFIX . "phototestimonial WHERE phototestimonial_id = '" . (int)$phototestimonial_id . "'");
		
		return $query->row;
	}
		
	public function getPhototestimonials($data = array()) {
	
		if ($data) {
			if (!isset($data['language_id']))  $data['language_id']=$this->config->get('config_language_id');
			$sql = "SELECT * FROM " . DB_PREFIX . "phototestimonial p LEFT JOIN " . DB_PREFIX . "phototestimonial_description pd ON (p.phototestimonial_id = pd.phototestimonial_id) where language_id = " . $data['language_id'];
			$sql .= " AND ( UPPER(pd.description) LIKE UPPER('%" . strtoupper($this->db->escape($data['filter_name'])) . "%')  OR (UPPER(pd.title) LIKE UPPER('%" . strtoupper($this->db->escape($data['filter_name'])) . "%')) )";
		
			//$sql = "SELECT distinct * FROM " . DB_PREFIX . "phototestimonial p LEFT JOIN " . DB_PREFIX . "phototestimonial_description pd ON (p.phototestimonial_id = pd.phototestimonial_id) where ";
			//$sql .= " ( UPPER(pd.description) LIKE UPPER('%" . strtoupper($this->db->escape($data['filter_name'])) . "%')  OR (UPPER(pd.title) LIKE UPPER('%" . strtoupper($this->db->escape($data['filter_name'])) . "%')) )";

			$sort_data = array(
				'pd.description',				
				'pd.title',
				'p.name',
				'p.date_added',
				'p.status'
			);		
		
		
		
			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				$sql .= " ORDER BY " . $data['sort'];	
			} else {
				$sql .= " ORDER BY pd.description";	
			}
		
	
			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC";
			} else {
				$sql .= " ASC";
			}
		
			if (isset($data['start']) || isset($data['limit'])) {
				if ($data['start'] < 0) {
					$data['start'] = 0;
				}		

				if ($data['limit'] < 1) {
					$data['limit'] = 20;
				}	
			
				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}	
			
			$query = $this->db->query($sql);
			return $query->rows;
		} else {
		
			//$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "phototestimonial t LEFT JOIN " . DB_PREFIX . "phototestimonial_description td ON (t.phototestimonial_id = td.phototestimonial_id) WHERE td.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY td.title");
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "phototestimonial t LEFT JOIN " . DB_PREFIX . "phototestimonial_description td ON (t.phototestimonial_id = td.phototestimonial_id) ORDER BY td.title");

			return $query->rows;
			
		}
	}
	
	public function getPhototestimonialDescriptions($phototestimonial_id) {
		$phototestimonial_description_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "phototestimonial_description WHERE phototestimonial_id = '" . (int)$phototestimonial_id . "'");

		foreach ($query->rows as $result) {
			$phototestimonial_description_data[$result['language_id']] = array(
				'title'       => $result['title'],
				'description' => $result['description']
			);
		}
		
		return $phototestimonial_description_data;
	}


	public function getPhototestimonialImages($phototestimonial_id) {
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "phototestimonial_images WHERE phototestimonial_id = '" . (int)$phototestimonial_id . "'");
		
		return $query->rows;
	}


	public function isTableExists($table_name) {

		$query = $this->db->query("SHOW TABLES LIKE '" . DB_PREFIX . $table_name . "'");
		if (count($query->rows) == 0)
	      	return FALSE;
		else
	      	return TRUE;
		

	}
	
	public function getTotalphototestimonials($data = array()) {

		if ($this->isTableExists("phototestimonial_images") == false)
			$this->createDatabaseImagesTable();

		if ($this->isTableExists("phototestimonial") == false)
			return -1;

		//if (!isset($data['language_id']))  $data['language_id']=$this->config->get('config_language_id');

		//if (!empty($this->request->get['filter_name'])) {
		//    $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "phototestimonial p LEFT JOIN " . DB_PREFIX . "phototestimonial_description pd ON (p.phototestimonial_id = pd.phototestimonial_id) WHERE ( UPPER(pd.description) LIKE UPPER('%" . $this->db->escape(strtoupper($this->request->get['filter_name'])) . "%') OR (UPPER(pd.title) LIKE UPPER('%" . $this->db->escape(strtoupper($this->request->get['filter_name'])) . "%'))  ) AND pd.phototestimonial_id = p.phototestimonial_id and language_id = " . $data['language_id'];
		//} else {
		//    $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "phototestimonial";
		//}

		if (!empty($this->request->get['filter_name'])) {
		    $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "phototestimonial p LEFT JOIN " . DB_PREFIX . "phototestimonial_description pd ON (p.phototestimonial_id = pd.phototestimonial_id) WHERE ( UPPER(pd.description) LIKE UPPER('%" . $this->db->escape(strtoupper($this->request->get['filter_name'])) . "%') OR (UPPER(pd.title) LIKE UPPER('%" . $this->db->escape(strtoupper($this->request->get['filter_name'])) . "%'))  ) AND pd.phototestimonial_id = p.phototestimonial_id ";
		} else {
		    $sql = "SELECT COUNT(*) AS total FROM " . DB_PREFIX . "phototestimonial";
		}

		$query = $this->db->query($sql);


		return $query->row['total'];
	}	


	public function getCurrentDateTime() {
      	$query = $this->db->query("SELECT NOW() AS cdatetime ");
		
		return $query->row['cdatetime'];
	}	


	private function updatePhotoTestimonialKeyword($phototestimonial_id, $keyword) {
	
	        $this->db->query("DELETE FROM `" . DB_PREFIX . "url_alias`
			WHERE `query` = 'phototestimonial_id=" . $phototestimonial_id. "'");

		  if ($keyword=='') return; 
	
	        $query = $this->db->query("SELECT `keyword` FROM `" . DB_PREFIX . "url_alias`
			WHERE `keyword` = '" . $this->db->escape($keyword) . "'");
	
	        if ( count($query->rows) > 0 ){
	            $keyword = 'n' . $phototestimonial_id . '-' .  $keyword;
	        }
	        $this->db->query("INSERT INTO `" . DB_PREFIX . "url_alias`
			SET `query` = 'phototestimonial_id=" . $phototestimonial_id . "', `keyword` = '" . $this->db->escape($keyword) . "'");
	
	}

	public function getPhototestimonialAllPageKeyword() {
	        $query = $this->db->query("SELECT `keyword` FROM `" . DB_PREFIX . "url_alias`
			WHERE `query` = 'product/phototestimonial'");

		  if (isset($query->row['keyword']))
		  	return $query->row['keyword'];
		  else
			return '';
	}	

	public function getPhototestimonialFormKeyword() {
	        $query = $this->db->query("SELECT `keyword` FROM `" . DB_PREFIX . "url_alias`
			WHERE `query` = 'product/isiphototestimonial'");

		  if (isset($query->row['keyword']))
		  	return $query->row['keyword'];
		  else
			return '';
	}	

	public function updatePhototestimonialAllPageKeyword($keyword) {
	
	        $this->db->query("DELETE FROM `" . DB_PREFIX . "url_alias`
			WHERE `query` = 'product/phototestimonial'");
	
		  if ($keyword=='') return; 

	        $query = $this->db->query("SELECT `keyword` FROM `" . DB_PREFIX . "url_alias`
			WHERE `keyword` = '" . $this->db->escape($keyword) . "'");
	
	        if ( count($query->rows) > 0 ){
	            $keyword = 'n-phototestimonial' .  $keyword;
	        }
	        $this->db->query("INSERT INTO `" . DB_PREFIX . "url_alias`
			SET `query` = 'product/phototestimonial', `keyword` = '" . $this->db->escape($keyword) . "'");
	
	}

	public function updatePhototestimonialFormKeyword($keyword) {

	        $this->db->query("DELETE FROM `" . DB_PREFIX . "url_alias`
			WHERE `query` = 'product/isiphototestimonial'");

		  if ($keyword=='') return;
	
	        $query = $this->db->query("SELECT `keyword` FROM `" . DB_PREFIX . "url_alias`
			WHERE `keyword` = '" . $this->db->escape($keyword) . "'");
	
	        if ( count($query->rows) > 0 ){
	            $keyword = 'n-isiphototestimonial' .  $keyword;
	        }
	        $this->db->query("INSERT INTO `" . DB_PREFIX . "url_alias`
			SET `query` = 'product/isiphototestimonial', `keyword` = '" . $this->db->escape($keyword) . "'");
	
	}

	public function createDatabaseTables() {
		$sql  = "CREATE TABLE IF NOT EXISTS `".DB_PREFIX."phototestimonial` ( ";
		$sql .= "`phototestimonial_id` int(11) NOT NULL AUTO_INCREMENT, ";
		$sql .= "`parent_testimonial_id` int(11) DEFAULT NULL , ";
		$sql .= "`name` varchar(64) COLLATE utf8_bin NOT NULL, ";
		$sql .= "`city` varchar(64) COLLATE utf8_bin DEFAULT NULL, "; 
  		$sql .= "`phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL, ";
  		$sql .= "`avatar` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL, ";
  		$sql .= "`page` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL, ";
		$sql .= "`email` varchar(96) COLLATE utf8_bin DEFAULT NULL, ";
		$sql .= "`status` int(1) NOT NULL DEFAULT '0', ";
		$sql .= "`rating` int(1) NOT NULL DEFAULT '0', ";
		$sql .= "`date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', ";
		$sql .= "PRIMARY KEY (`phototestimonial_id`) ";
		$sql .= ") ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;";
		$this->db->query($sql);

		$sql  = "CREATE TABLE IF NOT EXISTS `".DB_PREFIX."phototestimonial_description` ( ";
		$sql .= "`phototestimonial_id` int(11) NOT NULL, ";
		$sql .= "`language_id` int(11) NOT NULL, ";
		$sql .= "`title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '', ";
		$sql .= "`description` text COLLATE utf8_unicode_ci NOT NULL, ";
		$sql .= "PRIMARY KEY (`phototestimonial_id`,`language_id`) ";
		$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";
		$this->db->query($sql);

		$this->createDatabaseImagesTable();
	}

	public function createDatabaseImagesTable() {
		$sql  = "CREATE TABLE IF NOT EXISTS `".DB_PREFIX."phototestimonial_images` ( ";
  		$sql .= "`image_id` int(11) NOT NULL AUTO_INCREMENT, ";
  		$sql .= "`phototestimonial_id` int(11) NOT NULL, ";
  		$sql .= "`description` varchar(1024) NOT NULL, ";
  		$sql .= "`path` varchar(1024) NOT NULL, ";
  		$sql .= "`sort_order` int(11) NOT NULL, ";
  		$sql .= "PRIMARY KEY (`image_id`) ";
		$sql .= ") ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci; ";
		$this->db->query($sql);
	}
	
	
	public function dropDatabaseTables() {
		$sql = "DROP TABLE IF EXISTS `".DB_PREFIX."phototestimonial`;";
		$this->db->query($sql);
		$sql = "DROP TABLE IF EXISTS `".DB_PREFIX."phototestimonial_description`;";
		$this->db->query($sql);
		$sql = "DROP TABLE IF EXISTS `".DB_PREFIX."phototestimonial_images`;";
		$this->db->query($sql);

	}

}
?>