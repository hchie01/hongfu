<?php
class ControllerCommonHome extends Controller {
	public function index() {

		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

//今日管理
		$this->load->model('catalog/product');
		// $data['tds'] = $this->model_catalog_product->getProducts();
		$data['tds'] = $this->model_catalog_product->getEasys(3);

		$data['products'] = array();

		$results = $this->model_catalog_product->getProducts();

		
// 				echo '<pre>';
// print_r($data['products']);die;

//排行榜
		// $this->load->model('');
		$data['phs'] = $this->model_catalog_product->getEasys(3);

//最新商品
		// $this->load->model('');
		$data['news'] = $this->model_catalog_product->getEasys(9);

//商品艺术
		// $this->load->model('');
		$data['yss'] = $this->model_catalog_product->getEasys(8);

//猜你喜欢
		// $this->load->model('');
		$data['likes'] = $this->model_catalog_product->getEasys(16);

		// $this->load->model('catalog/block');
		// $a = $this->model_catalog_block->getBlocks();
		// foreach($a as $k=>$v){
		// 	$arr[] = array_rand(array_flip(explode(',',$v['product_id_grop'])),6);
		// }


		// $data['column_left'] = $this->load->controller('common/column_left');//暂时没用
		// $data['column_right'] = $this->load->controller('common/column_right');//暂时没用
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}


}
