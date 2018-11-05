<?php
class ControllerAccountSell extends Controller {
	private $error = array();

	public function index() {
		 
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/top');
		$data['artnews'] = $this->load->controller('account/artnews');
		
		$this->response->setOutput($this->load->view('account/sell', $data));
	}
 

}