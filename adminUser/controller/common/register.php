<?php
class ControllerCommonRegister extends Controller {
	private $error = array();

	public function index() {
		if ($this->user->isLogged() && isset($this->request->get['user_tokens']) && ($this->request->get['user_tokens'] == $this->session->data['user_tokens'])) {
			$this->response->redirect($this->url->link('common/dashboard'));
		}
		$steps = array('step2','step3');
		if ( isset($this->request->get['step']) && $this->request->get['step'] != 'step1' &&  in_array($this->request->get['step'],$steps) ) {
			$step = $this->request->get['step'];
		}else{
			$step = '';
		}
		if (!$this->config->get('config_password')) {
			$this->response->redirect($this->url->link('common/login'));
		}

		$this->load->language('common/register');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('user/user');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_user_user->editCode($this->request->post['email'], token(40));
			
			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('common/login'));
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		if (isset($this->request->get['info'])) {
			 
			$data['error_info'] =  urldecode($this->request->get['info']);
		} else {
			$data['error_info'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('common/forgotten')
		);

		$data['action'] = $this->url->link('common/forgotten');

		$data['cancel'] = $this->url->link('common/login');

		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} else {
			$data['email'] = '';
		}

		$data['header'] = $this->load->controller('common/header');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('common/register'.$step.'', $data));
	}

	protected function validate() {
		if (!isset($this->request->post['email'])) {
			$this->error['warning'] = $this->language->get('error_email');
		} elseif (!$this->model_user_user->getTotalUsersByEmail($this->request->post['email'])) {
			$this->error['warning'] = $this->language->get('error_email');
		}

		return !$this->error;
	}
	public function check(){
		if(!isset($this->request->post['type']) || !isset($this->request->post['value']) ){
			$this->response->redirect($this->url->link('common/login'));
		}
		
		$type  = $this->request->post['type'];
		$value = $this->request->post['value'];
		$this->load->model('user/shop');
		
		$shop = $this->model_user_shop->getShop($type,$value);
		echo $shop;
	}

	public function add(){
		if(!isset($this->request->post['sname']) || !isset($this->request->post['scard']) || !isset($this->request->post['stel']) || !isset($this->request->post['spwd']) || !isset($this->request->post['snpwd']) ){
			$this->response->redirect($this->url->link('common/login'));
		}
		$name = $this->request->post['sname'];
		$card = $this->request->post['scard'];
		$stel = $this->request->post['stel'];
		$salt = $this->str_rand();
		$pwd = md5(md5($this->request->post['spwd']).$salt);
		$this->load->model('user/shop');
		$data['name'] = $name;
		$data['card'] = $card;
		$data['stel'] = $stel;
		$data['salt'] = $salt;
		$data['pwd']  = $pwd; 
		$data['status'] = '0';
		$recard = $this->model_user_shop->getShop('cardid',$card);
		$retel  = $this->model_user_shop->getShop('tel',$tel);
		$result = $this->check_card($card,$name,$stel);
		
		$re = json_decode($result);
		$code = $re->resp->code;
		$desc = $re->resp->desc;

		if($code != 0){
			$url = $desc;
			$this->response->redirect($this->url->link('common/register&step=step2&info='.$url));
		}else{
			if($recard == 0 && $retel == 0 && $code == 0){
				$shop = $this->model_user_shop->addShop($data);
				if($shop){
					$this->response->redirect($this->url->link('common/register&step=step3'));
				}else{
					$this->response->redirect($this->url->link('common/register&step=step2'));
				}
			}else{
				$this->response->redirect($this->url->link('common/register&step=step2'));
			}
		}
	}
	private function str_rand() {
		$length = 6;
		$char = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$string = '';
		for($i = $length; $i > 0; $i--) {
		    $string .= $char[mt_rand(0, strlen($char) - 1)];
		}
		return $string;
    }

    private function check_card($card='',$name='',$tel=''){
	   if($card =='' || $name=='' || $tel==''  ){
			$this->response->redirect($this->url->link('common/login'));
		}
		$host = "http://telvertify.market.alicloudapi.com";
		$path = "/lianzhuo/telvertify";
		$method = "GET";
		$appcode = "9bcff76d268246678dff866af52311cc";
		$headers = array();
		array_push($headers, "Authorization:APPCODE " . $appcode);
		$querys = "id=".$card."&name=".urlencode($name)."&telnumber=".$tel."";
		$bodys = "";
		$url = $host . $path . "?" . $querys;

		$curl = curl_init();
		curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);
		curl_setopt($curl, CURLOPT_URL, $url);
		curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
		curl_setopt($curl, CURLOPT_FAILONERROR, false);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($curl, CURLOPT_HEADER, false);
		if (1 == strpos("$".$host, "https://"))
		{
			curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
			curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
		}
		return curl_exec($curl);
	   }
}