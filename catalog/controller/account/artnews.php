<?php
class ControllerAccountArtnews extends Controller {
	private $error = array();

	public function index() {
		 
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/top');
	 
		
		return $this->load->view('account/artnews', $data);
	}
 

}