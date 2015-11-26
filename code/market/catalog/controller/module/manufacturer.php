<?php
define("log_file","/var/www/market/file.log");
class ControllerModuleManufaturer extends Controller {

	error_log("Entra en controller",3,log_file);
	public function index() {
		$this->load->language('module/manufacturer');

		$data['heading_title'] = $this->language->get('heading_title');

		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		if (isset($parts[0])) {
			$data['manufacturer_id'] = $parts[0];
		} else {
			$data['manufacturer_id'] = 0;
		}

		if (isset($parts[1])) {
			$data['child_id'] = $parts[1];
		} else {
			$data['child_id'] = 0;
		}

		$this->load->model('catalog/manufacturer');

		$this->load->model('catalog/product');

		$data['manufacturer'] = array();

		$manufacturers = $this->model_catalog_manufacturer->getManufacturer(0);

		error_log("manufacturers ".$manufacturers,3, log_file);

		foreach ($manufacturers as $manufacturer) {
			$children_data = array();

			if ($manufacturer['manufacturer_id'] == $data['manufacturer_id']) {
				$children = $this->model_catalog_manufacturer->getManufacturers($manufacturer['manufacturer_id']);

				foreach($children as $child) {
					$filter_data = array('filter_manufacturer_id' => $child['manufacturer_id'], 'filter_sub_manufacturer' => true);

					$children_data[] = array(
						'manufacturer_id' => $child['manufacturer_id'],
						'name' => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href' => $this->url->link('product/category', 'path=' . $manufacturer['manufacturer_id'] . '_' . $child['manufacturer_id'])
					);
				}
			}

			$filter_data = array(
				'filter_manufacturer_id'  => $manufacturer['manufacturer_id'],
				'filter_sub_manufacturer' => true
			);

			$data['manufacturers'][] = array(
				'manufacturer_id' => $manufacturer['manufacturer_id'],
				'name'        => $manufacturer['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' . $manufacturer['manufacturer_id'])
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/manufacturer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/manufacturer.tpl', $data);
		} else {
			return $this->load->view('default/template/module/manufacturer.tpl', $data);
		}
	}
}
