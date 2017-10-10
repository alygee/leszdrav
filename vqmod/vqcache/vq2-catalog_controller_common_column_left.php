<?php  
class ControllerCommonColumnLeft extends Controller {
	protected function index() {
		$this->load->model('design/layout');
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		$this->load->model('catalog/information');
		
		if (isset($this->request->get['route'])) {
			$route = (string)$this->request->get['route'];
		} else {
			$route = 'common/home';
		}
		
		$layout_id = 0;

                $this->load->model('journal2/blog');

                if ($route == 'journal2/blog' && isset($this->request->get['journal_blog_category_id'])) {
			        $layout_id = $this->model_journal2_blog->getBlogCategoryLayoutId($this->request->get['journal_blog_category_id']);
		        }

		        if ($route == 'journal2/blog/post' && isset($this->request->get['journal_blog_post_id'])) {
			        $layout_id = $this->model_journal2_blog->getBlogPostLayoutId($this->request->get['journal_blog_post_id']);
		        }
            
		
		if ($route == 'product/category' && isset($this->request->get['path'])) {
			$path = explode('_', (string)$this->request->get['path']);
				
			$layout_id = $this->model_catalog_category->getCategoryLayoutId(end($path));			
		}
		
		if ($route == 'product/product' && isset($this->request->get['product_id'])) {
			$layout_id = $this->model_catalog_product->getProductLayoutId($this->request->get['product_id']);
		}
		
		if ($route == 'information/information' && isset($this->request->get['information_id'])) {
			$layout_id = $this->model_catalog_information->getInformationLayoutId($this->request->get['information_id']);
		}
		
		if (!$layout_id) {
			$layout_id = $this->model_design_layout->getLayout($route);
		}
						
		if (!$layout_id) {
			$layout_id = $this->config->get('config_layout_id');
		}

		$module_data = array();
		
		$this->load->model('setting/extension');
		
		$extensions = $this->model_setting_extension->getExtensions('module');		
		
		foreach ($extensions as $extension) {
			$modules = $this->config->get($extension['code'] . '_module');
		
			if ($modules) {

				$idx = 0;
				$idxs = array();
				
				foreach( $modules as $k => $v ) {
					$idxs[] = $k;
				}
			
				foreach ($modules as $module) {

				if( ! isset( $module['layout_id'] ) )
					$module['layout_id'] = 0;
					
				if( ! isset( $module['position'] ) )
					$module['position'] = '';
								
				if( ! isset( $module['status'] ) )
					$module['status'] = '0';
								
				if( ! isset( $module['sort_order'] ) )
					$module['sort_order'] = 0;
			
				if( ! is_array( $module['layout_id'] ) )
					$module['layout_id'] = array( $module['layout_id'] );
					
				$module['_idx'] = $idxs[$idx++];
			
					if (( in_array( $layout_id, $module['layout_id'] ) || in_array( '-1', $module['layout_id'] ) ) && $module['position'] == 'column_left' && $module['status']) {

				if( $extension['code'] != 'mega_filter' ) {
					unset( $module['_idx'] );
					$module['layout_id'] = current( $module['layout_id'] );
				}
			
						$module_data[] = array(
							'code'       => $extension['code'],
							'setting'    => $module,
							'sort_order' => $module['sort_order']
						);				
					}
				}
			}
		}
		
		$sort_order = array(); 
	  
		foreach ($module_data as $key => $value) {
      		$sort_order[$key] = $value['sort_order'];
    	}
		
		array_multisort($sort_order, SORT_ASC, $module_data);
		
		$this->data['modules'] = array();
		
		foreach ($module_data as $module) {
			$module = $this->getChild('module/' . $module['code'], $module['setting']);
			
			if ($module) {
				$this->data['modules'][] = $module;
			}
		}
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/column_left.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/column_left.tpl';
		} else {
			$this->template = 'default/template/common/column_left.tpl';
		}
								
		$this->render();
	}
}
?>