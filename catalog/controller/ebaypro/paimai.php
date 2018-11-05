<?php
class ControllerEbayproPaimai extends Controller {
	private $error = array();
	private $id = '';
	public function index() {

	$data['header'] = $this->load->controller('common/top');
        $this->document->addScript('catalog/view/javascript/jquery/jquery-1.4.2.min.js');
        $this->load->model('catalog/ebaypro');
        $data['r'] = $this->model_catalog_ebaypro->getProducts();

        $data['footer'] = $this->load->controller('common/footer');

	$this->response->setOutput($this->load->view('ebaypro/paimai', $data));
	}

	public function move_product()
    {

        if(isset($_POST['product_id']) && isset($_POST['date_available'])){
            $this->load->model('catalog/ebaypro');
            $res = $this->model_catalog_ebaypro->getProduct($_POST['product_id']);
            $strtime = strtotime($res['date_available']);
            $nowtime = time();
      
            if($strtime<=$nowtime){
                $this->model_catalog_ebaypro->forProduct($_POST['product_id']);
                return true;
            }else{
                return false;
            }
        }
        //过滤ajax传值
        if(isset($_POST['product_id']) && isset($_POST['end_available'])){
            $this->load->model('catalog/ebaypro');
            $res = $this->model_catalog_ebaypro->getProduct($_POST['product_id']);
            $strtime = strtotime($res['end_available']);
            $nowtime = time()+28800;
            if($strtime<=$nowtime){
                $this->model_catalog_ebaypro->forProduct($_POST['product_id']);
                return true;
            }else{
                return false;
            }
        }
    }

}