<?php
class ModelCatalogImageOption extends Model {

  public function getImagesOptionsByProductId($product_id) {
     
    $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_image_option WHERE product_id = " . (int)$product_id);
     
    $data = array();
    
    foreach ($query->rows as $result) {
        $data[$result['image']][$result['option_value_id']] = $result;
    }
    
    return $data; 
  }

  public function getAllOptions() {
    $this->load->model('catalog/option');
    
    $all_options = array();
    
    $options = $this->model_catalog_option->getOptions();
    foreach($options as $option) {
      
      $option_values = $this->model_catalog_option->getOptionValues($option['option_id']);
      if ($option_values) {
        $option['values'] = $option_values;
        $all_options[] = $option;
      }
    }
    return $all_options;
  }

  public function install() {
    $this->load->model('setting/setting');
    
    $setting['image_option_module'][] = array(
        'layout_id'    => 2, //product layout
        'position'     => 'content_bottom',
        'status'       => 1,
        'sort_order'   => 99,
    );

    $this->model_setting_setting->deleteSetting('image_option');
    $this->model_setting_setting->editSetting('image_option', $setting);    

    $this->db->query("CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "product_image_option (
      `product_id` INT( 11 ) NOT NULL ,
      `option_value_id` INT( 11 ) NOT NULL,
      `image` VARCHAR( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL)");
  }

  public function uninstall() {
    $this->load->model('setting/setting');
    
    $this->model_setting_setting->deleteSetting('image_option');
    $this->db->query("DROP TABLE IF EXISTS " . DB_PREFIX . "product_image_option");
  }    
}