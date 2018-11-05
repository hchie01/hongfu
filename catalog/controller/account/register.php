<?php 
session_start();
class ControllerAccountRegister extends Controller {
	
    private $error = array();

    public function index() {
            if ($this->customer->isLogged()) {
                    $this->response->redirect($this->url->link('account/account'));
            }

            $this->load->language('account/register');

            $this->document->setTitle($this->language->get('heading_title'));
            $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment/self.js');
            $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment/moment.min.js');
            $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/moment/moment-with-locales.min.js');
            $this->document->addScript('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js');
            $this->document->addStyle('catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css');

            $this->load->model('account/customer');

            if (($this->request->server['REQUEST_METHOD'] == 'POST') && ($this->request->post['captcha']==$this->session->data['captcha']) && $this->validate()) {
                    unset($this->session->data['guest']);

                    $customer_id = $this->model_account_customer->addCustomer($this->request->post);

                    // Clear any previous login attempts for unregistered accounts.
                    $this->model_account_customer->deleteLoginAttempts($customer_id);

                    $this->customer->login($customer_id, $this->request->post['password']);
                    // Log the IP info
                    $this->model_account_customer->addLogin($this->customer->getId(), $this->request->server['REMOTE_ADDR']);
           
                    $this->response->redirect($this->url->link('account/success'));
            }
            if(isset($this->request->post['captcha'])){
                if($this->request->post['captcha']!=$this->session->data['captcha']){
                    $this->error['captcha'] = '验证码错误,请重新输入';
                }
            }

            $data['breadcrumbs'] = array();

            $data['breadcrumbs'][] = array(
                    'text' => $this->language->get('text_home'),
                    'href' => $this->url->link('common/home')
            );

            $data['breadcrumbs'][] = array(
                    'text' => $this->language->get('text_account'),
                    'href' => $this->url->link('account/account')
            );

            $data['breadcrumbs'][] = array(
                    'text' => $this->language->get('text_register'),
                    'href' => $this->url->link('account/register')
            );
            $data['text_account_already'] = sprintf($this->language->get('text_account_already'), $this->url->link('account/login'));

            if (isset($this->error['telcap'])) {
                    $data['error_telcap'] = $this->error['telcap'];
            } else {
                    $data['error_telcap'] = '';
            }
            
            if (isset($this->error['warning'])) {
                    $data['error_warning'] = $this->error['warning'];
            } else {
                    $data['error_warning'] = '';
            }

            if (isset($this->error['fullname'])) {
                    $data['error_fullname'] = $this->error['fullname'];
            } else {
                    $data['error_fullname'] = '';
            }

            if (isset($this->error['email'])) {
                    $data['error_email'] = $this->error['email'];
            } else {
                    $data['error_email'] = '';
            }

            if (isset($this->error['telephone']) && !preg_match("/^1[34578]\d{9}$/",$this->request->post['telephone'] )) {
                    $data['error_telephone'] = $this->error['telephone'];
            } else {
                    $data['error_telephone'] = '';
            }

            if (isset($this->error['custom_field'])) {
                    $data['error_custom_field'] = $this->error['custom_field'];
            } else {
                    $data['error_custom_field'] = array();
            }

            if (isset($this->error['password'])) {
                    $data['error_password'] = $this->error['password'];
            } else {
                    $data['error_password'] = '';
            }

            if (isset($this->error['confirm'])) {
                    $data['error_confirm'] = $this->error['confirm'];
            } else {
                    $data['error_confirm'] = '';
            }

//这里判断验证码有没有错误,有错误就报告出来
            if (isset($this->error['captcha'])) {
                    $data['error_captcha'] = $this->error['captcha'];
            } else {
                    $data['error_captcha'] = '';
            }

            $data['action'] = $this->url->link('account/register');

            $data['customer_groups'] = array();

            if (is_array($this->config->get('config_customer_group_display'))) {
                    $this->load->model('account/customer_group');

                    $customer_groups = $this->model_account_customer_group->getCustomerGroups();

                    foreach ($customer_groups as $customer_group) {
                            if (in_array($customer_group['customer_group_id'], $this->config->get('config_customer_group_display'))) {
                                    $data['customer_groups'][] = $customer_group;
                            }
                    }
            }

            if (isset($this->request->post['customer_group_id'])) {
                    $data['customer_group_id'] = $this->request->post['customer_group_id'];
            } else {
                    $data['customer_group_id'] = $this->config->get('config_customer_group_id');
            }

            if (isset($this->request->post['fullname'])) {
                    $data['fullname'] = $this->request->post['fullname'];
            } else {
                    $data['fullname'] = '';
            }

            if (isset($this->request->post['type'])) {
                    $data['register_type'] = $this->request->post['type'];
            } else {
                    $data['register_type'] = 'mobile';
            }

            if (isset($this->request->post['email'])) {
                    $data['email'] = $this->request->post['email'];
            } else {
                    $data['email'] = '';
            }

            if (isset($this->request->post['telephone'])) {
                    $data['telephone'] = $this->request->post['telephone'];
            } else {
                    $data['telephone'] = '';
            }

            // Custom Fields
            $data['custom_fields'] = array();

            $this->load->model('account/custom_field');

            $custom_fields = $this->model_account_custom_field->getCustomFields();

            foreach ($custom_fields as $custom_field) {
                    if ($custom_field['location'] == 'account') {
                            $data['custom_fields'][] = $custom_field;
                    }
            }

            if (isset($this->request->post['custom_field']['account'])) {
                    $data['register_custom_field'] = $this->request->post['custom_field']['account'];
            } else {
                    $data['register_custom_field'] = array();
            }

            if (isset($this->request->post['password'])) {
                    $data['password'] = $this->request->post['password'];
            } else {
                    $data['password'] = '';
            }

            if (isset($this->request->post['confirm'])) {
                    $data['confirm'] = $this->request->post['confirm'];
            } else {
                    $data['confirm'] = '';
            }

            if (isset($this->request->post['newsletter'])) {
                    $data['newsletter'] = $this->request->post['newsletter'];
            } else {
                    $data['newsletter'] = '';
            }

            // Captcha
            if ($this->config->get('captcha_' . $this->config->get('config_captcha') . '_status') && in_array('register', (array)$this->config->get('config_captcha_page'))) {
                    $data['captcha'] = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha'), $this->error);
            } else {
                    $data['captcha'] = '';
            }

            if ($this->config->get('config_account_id')) {
                    $this->load->model('catalog/information');

                    $information_info = $this->model_catalog_information->getInformation($this->config->get('config_account_id'));

                    if ($information_info) {
                            $data['text_agree'] = sprintf($this->language->get('text_agree'), $this->url->link('information/information/agree', 'information_id=' . $this->config->get('config_account_id')), $information_info['title'], $information_info['title']);
                    } else {
                            $data['text_agree'] = '';
                    }
            } else {
                    $data['text_agree'] = '';
            }

            if (isset($this->request->post['agree'])) {
                    $data['agree'] = $this->request->post['agree'];
            } else {
                    $data['agree'] = false;
            }
            $data['captcha'] = $this->load->controller('extension/captcha/basic');
            // $data['column_left'] = $this->load->controller('common/column_left');
//            $data['column_right'] = $this->load->controller('common/column_right');
            // $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            // $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');

            $this->response->setOutput($this->load->view('account/register', $data));
    }
    
    private function validate() {
        
            if ((utf8_strlen(trim($this->request->post['fullname'])) < 1) || (utf8_strlen(trim($this->request->post['fullname'])) > 20)) {
                    $this->error['fullname'] = $this->language->get('error_fullname');
            }

            if($this->request->post['telcap'] && $this->request->post['telcap']!= $this->session->data['telcap']){
                $this->error['telcap'] = $this->language->get('error_telcap');
            }
            
            if ($this->request->post['email'] && ((utf8_strlen($this->request->post['email']) > 96) || !filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL))) {
                    $this->error['email'] = $this->language->get('error_email');
            }

            if ($this->request->post['email'] && $this->model_account_customer->getTotalCustomersByEmail($this->request->post['email'])) {
                    $this->error['warning'] = $this->language->get('error_exists_email');
            }

            if ($this->request->post['telephone'] && (utf8_strlen($this->request->post['telephone'])!=11 ) && (!preg_match("/^1[34578]\d{9}$/", $this->request->post['telephone']))) {
                    $this->error['telephone'] = $this->language->get('error_telephone');
            }

            if ($this->request->post['telephone'] && $this->model_account_customer->getTotalCustomersByTelephone($this->request->post['telephone'])) {
                    $this->error['warning'] = $this->language->get('error_exists_telephone');
            }

            if (!$this->request->post['email'] && !$this->request->post['telephone']) {
                    $this->error['email'] = $this->language->get('error_email_telephone_all_null');
                    $this->error['telephone'] = $this->language->get('error_email_telephone_all_null');
            }

            // Customer Group
            if (isset($this->request->post['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($this->request->post['customer_group_id'], $this->config->get('config_customer_group_display'))) {
                    $customer_group_id = $this->request->post['customer_group_id'];
            } else {
                    $customer_group_id = $this->config->get('config_customer_group_id');
            }

            // Custom field validation
            $this->load->model('account/custom_field');

            $custom_fields = $this->model_account_custom_field->getCustomFields($customer_group_id);

            foreach ($custom_fields as $custom_field) {
                    if ($custom_field['location'] == 'account') {
                            if ($custom_field['required'] && empty($this->request->post['custom_field'][$custom_field['location']][$custom_field['custom_field_id']])) {
                                    $this->error['custom_field'][$custom_field['custom_field_id']] = sprintf($this->language->get('error_custom_field'), $custom_field['name']);
                            } elseif (($custom_field['type'] == 'text') && !empty($custom_field['validation']) && !filter_var($this->request->post['custom_field'][$custom_field['location']][$custom_field['custom_field_id']], FILTER_VALIDATE_REGEXP, array('options' => array('regexp' => $custom_field['validation'])))) {
                                    $this->error['custom_field'][$custom_field['custom_field_id']] = sprintf($this->language->get('error_custom_field'), $custom_field['name']);
                            }
                    }
            }

            if ((utf8_strlen(html_entity_decode($this->request->post['password'], ENT_QUOTES, 'UTF-8')) < 4) || (utf8_strlen(html_entity_decode($this->request->post['password'], ENT_QUOTES, 'UTF-8')) > 40)) {
                    $this->error['password'] = $this->language->get('error_password');
            }

            if ($this->request->post['confirm'] !== $this->request->post['password']) {
                    $this->error['confirm'] = $this->language->get('error_confirm');
            }

            // Captcha
            if ($this->config->get('captcha_' . $this->config->get('config_captcha') . '_status') && in_array('register', (array)$this->config->get('config_captcha_page'))) {
                    $captcha = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');

                    if ($captcha) {
                            $this->error['captcha'] = $captcha;
                    }
            }

            // Agree to terms
            if ($this->config->get('config_account_id')) {
                    $this->load->model('catalog/information');

                    $information_info = $this->model_catalog_information->getInformation($this->config->get('config_account_id'));

                    if ($information_info && !isset($this->request->post['agree'])) {
                            $this->error['warning'] = sprintf($this->language->get('error_agree'), $information_info['title']);
                    }
            }

            return !$this->error;
    }

    public function customfield() {
            $json = array();

            $this->load->model('account/custom_field');

            // Customer Group
            if (isset($this->request->get['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($this->request->get['customer_group_id'], $this->config->get('config_customer_group_display'))) {
                    $customer_group_id = $this->request->get['customer_group_id'];
            } else {
                    $customer_group_id = $this->config->get('config_customer_group_id');
            }

            $custom_fields = $this->model_account_custom_field->getCustomFields($customer_group_id);

            foreach ($custom_fields as $custom_field) {
                    $json[] = array(
                            'custom_field_id' => $custom_field['custom_field_id'],
                            'required'        => $custom_field['required']
                    );
            }

            $this->response->addHeader('Content-Type: application/json');
            $this->response->setOutput(json_encode($json));
    }

    public function zone() {
        $json = array();

        $this->load->model('localisation/zone');

        $zone_info = $this->model_localisation_zone->getZone($this->request->get['zone_id']);

        if ($zone_info) {
            $this->load->model('localisation/city');

            $json = array(
                'zone_id'   => $zone_info['zone_id'],
                'name'      => $zone_info['name'],
                'city'      => $this->model_localisation_city->getCitiesByZoneId($this->request->get['zone_id']),
                'status'    => $zone_info['status']
            );
        }

        $this->response->setOutput(json_encode($json));
    }

    public function insms()
    {
        // $arr['tela'] = 18600326531;
        // $arr['capa'] = 123321;
        // print_r($arr);
        $this->load->Controller('SmsDemo/SmsDemo');//现在可以发送短信但是报错找不到类
        // $this->sendSms(18600326531,222222);
        // $sms = new SmsDemo;
        // $this->sendSms(18600326531,222222);
    }
    
    //手机随机验证码
    public function telcap()
    {
        if($this->request->post['tm']>=60){
            $this->session->data['telcap'] = mt_rand(100000, 999999);
            $this->load->model('sms/api_demo');
            $this->sendSms(18600326531,$this->session->data['telcap']);
        }
        
        // echo $this->tinfo(60);
    }

    //计时器
    public function tinfo($num)
    {
        if(!empty($num)){
            for ($i=$num; $i <= 0; $i--) {
                return $i;
            }
        }
    }
	
//    public function check(){
//             $tel = $this->request->post['telephone'];
//             if(!preg_match("/^1[34578]\d{9}$/", $tel))
//             {
//                     $re['result']='1024';
//                     $re['errmsg']='手机号格式错误';
//                     echo json_encode($re);
//             }else{
//                     $this->load->model('account/customer');
//                     $user = $this->model_account_customer->getCustomerByTelephone($tel);
//
//                     if(!empty($user)){
//                             $re['result']='1024';
//                             $re['errmsg']='手机号已注册';
//                            echo json_encode($re);  
//                     }else{
//                             $num = mt_rand(1000,9999);
//                             $data['num'] = $num;
//                             $_SESSION['hfcap']=$num;
//                             $_SESSION['time'] =time();
//                             $data['tel'] = $tel;
//                             $result = $this->load->controller('account/message',$data);
//                             $re = array();
//                             $re['result']=$result->result;
//                             $re['errmsg']=$result->errmsg;
//                             echo json_encode($re);
//                     }
//             }
//
//    }
//
//    public function checkAll(){
//            $num = $_SESSION['hfcap'];
//            $time = $_SESSION['time'];
//            $timec = time() - (int)$time;
//            if($timec>300){
//                     $re['result']='101';
//                     $re['errmsg']="验证码已过期，请重新获取";
//                     echo json_encode($re);
//            }else{
//
//            }
//            //var_dump($num) ;
//    }
}