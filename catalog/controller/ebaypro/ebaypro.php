<?php
class ControllerEbayproEbaypro extends Controller {
	private $error = array();
	public function index() {
        $data['header'] = $this->load->controller('common/top');
        $this->load->model('catalog/ebaypro');
        $data['c'] = $this->model_catalog_ebaypro->getProduct($this->request->get['product_id']);
        if(!empty($data['c']['image'])){
            $data['c']['image'] = '/image/'.$data['c']['image'];
        }else{
            $data['c']['image'] = '/image/no_image.png';
        }
        $ntime = time()+28800;
        $dtime = strtotime($data['c']['date_available']);
        $etime = strtotime($data['c']['end_available']);
       
        if($ntime <= $dtime){
            $data['c']['stock_status']='距开始';
        }
if($this->customer->isLogged()){
    $data['c']['crinfo'] = $this->customer_info();
}else{
//     $data['c']['crinfo']=
//        'customer_id' => 'null',
//        'bzprice' => 'null',
//        'fullname' => 'null',
//        'telephone' => 'null',
//        'ip' => 'null',
}
        if($dtime<=$ntime && $ntime<=$etime){
            $data['c']['stock_status']='距结束';
//            $data['c']['js'] =string('<script>var bz_price = parseInt(document.getElementById('.'bz'.').innerText); var price = parseInt(document.getElementById('.'pe'.').innerText); if(bz_price >= price){ document.getElementsByClassName('.'Xcontent42'.')[0].innerHTML =      '.'<input class ="aaaaa" type="number" style="color:red;width:170px;height:40px;" value="">'.'+'.'&nbsp;'.' +'.'<input  style="color:red;width:70px;height:44px;color:#F0F8FF;font-size: 25px;background-color: red;" type="submit" class="mit" value="出价">'.'; } document.getElementsByClassName('.'mit'.')[0].onclick = function(){  var aaa = document.getElementsByClassName('.'aaaaa'.')[0];  var np = document.getElementsByClassName('.'nowprice'.')[0];  if(!np.innerText && !aaa.value){ np.innerText = parseInt(price) + 10;    }else if(!aaa.value){  np.innerText = 1000 + parseInt(np.innerText);     }else{     np.innerText = parseInt(aaa.value) + parseInt(np.innerText);  }   var nt = new Date();var ntime = nt.getTime()/1000;     $.ajax({  url: '.'index.php?route=ebaypro/ebaypro/outprice'.',     type: '.'GET'.',   data: '.'tel:'.'{{c.crinfo.telephone}},'.'nowprice:'.'+ np.innerText,'.'nowtime:'.'+ ntime,'.'product_id:'.'+ {{ c.product_id }},'.'uid:'.'+{{ c.crinfo.customer_id }},'.'shop_id:'.'+{{ c.shop_id }},// dataType:'.'json'.',   {#        success: function(data){#}     {#    window.location.reload(true);#}     {#   console.log(data);#}      {#      },#}   error: function(){  alert('.'请求发送失败了!!!'.');},       async: true         });     }</script>');
            if(!isset($this->session->data['customer_id'])){
                echo ("<script> alert('您还没有登录,请登录并缴纳保证金后在进行拍卖!<a href=>')</script>");
            }
            if($this->customer_info()< $data['c']['price']){
                echo "<script> alert('保证金不足,请充值保证金!')</script>"; //缺跳转付款页面  拍品初始价 - 用户中保证金金额
                //  等于需要补交的保证金
            }
        }
        
        $data['c']['description'] = htmlspecialchars($data['c']['description']);
        if(isset($this->duo_p()->r)){
            $data['r'] = $this->duo_p()->r;
        }
        $data['c']['outcount'] = count($data['c']['outinfo']);
        $data['c']['outinfo'] = $this->readoutprice($data['c']['product_id']);
        foreach($data['c']['outinfo'] as $k=>$v){
            $num = max($num,intval($v->nowprice));
        }
        $data['c']['maxnum'] = $num;
//        $this->orderuser($data['c']['product_id']);
//echo '<pre>';
//print_r($this->customer_info());
//echo '</pre>';die;
        $data['footer'] = $this->load->controller('common/footer');
        $this->document->addScript('catalog/view/javascript/jquery/jquery-1.9.1.min.js');
        $this->response->setOutput($this->load->view('ebaypro/ebaypro', $data));
    }

    //读取个人信息中的保证金
    private function customer_info()
    {

        $this->load->model('account/customer');
        $crres = $this->model_account_customer->getCustomer($this->session->data['customer_id']);
        $userarr['customer_id'] = $crres['customer_id'];
        $userarr['bzprice'] = $crres['bzprice'];
        $userarr['fullname'] = $crres['fullname'];
        $userarr['telephone'] = $crres['telephone'];
        $userarr['ip'] = $crres['ip'];
        return $userarr;
    }
    //收集信息写入出价历史表
    public function maxn($id)
    {
        $arr = [];
        $arr = $this->readoutprice($id);
        $this->load->model('catalog/ebaypro');
        $p = $this->model_catalog_ebaypro->getProduct($id);
        $arr['shop_id'] = $p->shop_id;
        $arr['product_id'] = $id;

    }
    //读取出价记录
    public function readoutprice($product_id)
    {
        if(!file_exists($product_id.'.txt')){
            return false;
        }
        $str = file_get_contents($product_id.'.txt',true);
        $nowarr = explode('|$|',$str);
        foreach($nowarr as $k=>$v){
            if(empty($v)){
                unset($nowarr[$k]);
            }
            $nowarr[$k] = json_decode($v);
        }
        return $nowarr;
    }
    //出价记录
    public function outprice()
    {
        $product_id = $this->request->get['product_id'];
        $arr['product_id'] = $product_id;
        $arr['uid'] = $this->customer_info()['customer_id'];
        $arr['shop_id'] = $this->request->get['shop_id'];
        $arr['name'] = $this->customer_info()['fullname'];
        $arr['nowprice'] = $this->request->get['nowprice'];
        $a = $this->request->get['nowtime'];
        $arr['outtime'] =Date("Y-m-d H:i:s",$a);
        $arr['ip'] = $this->customer_info()['ip'];
        $test = json_encode($arr);
        $json_str = file_get_contents($product_id.".txt",true);
        $json_str .='|$|'. $test;
        file_put_contents($product_id.".txt",$json_str);// 追加 file_put_contents($product_id.".txt",$json_str.PHP_EOL, FILE_APPEND);
        //获取出价最大值
//        $maxarr = $this->readoutprice($this->request->get['product_id']);
//        foreach($maxarr as $k=>$v){
//            $num = max($num,intval($v->nowprice));
//        }
//        return $arr;
    }

    //当前页的访问人数统计
    public function nums()
    {
        if(!empty($_GET['product_id'])){
            $nums += 1;
        }
        // echo "<br><br><br><br><br><br><br><br><br><br><br>";
        // echo $nums;
    }

    //更多作品
    public function duo_p()
    {
        $this->load->model('catalog/ebaypro');
        //以后可以根据作者的ID查询出几个新作品
        return $this->model_catalog_ebaypro->duoProducts();
    }

    public function move_product()
    {
        //过滤ajax传入的值
        if(isset($_POST['product_id']) && isset($_POST['end_available'])){
            $this->load->model('catalog/ebaypro');
            $res = $this->model_catalog_ebaypro->getProduct($_POST['product_id']);
            $strtime = strtotime($res['end_available']);
            $nowtime = time()+28800;
            if($strtime<=$nowtime){

                $this->model_catalog_ebaypro->forProduct($_POST['product_id']);
                $this->orderuser($_POST['product_id']);

                return true;
            }else{
                return false;
            }
        }
    }

    //判断是哪个用户拍得了拍品
    private function orderuser($product_id)
    {
        $opinfo = $this->readoutprice($product_id);  //读取该商品的出价记录
        //得出出价最高的是谁
//        $oneinfo = [];
        foreach($opinfo as $k=>$v){
            $num = max($num,intval($v->nowprice));
//            if($num==$v->nowprice){
//                $oneinfo = $v;
//            }
        }
        $this->load->model('catalog/ebaypro');
        $p = $this->model_catalog_ebaypro->getProduct($product_id);
        $price = $p['fuprice'] + $num;
        $this->model_catalog_ebaypro->updateprice($product_id,$price);
//        $this->cartadd($product_id);  //测试用
        if(strtotime($p['end_available'])<=(time()+28800)){
            $this->cartadd($product_id);
        }
//        $this->load->model('checkout/checkout');
//        $this->model_checkout_checkout->createOrder();
    }

    public function cartadd($product_id) {
        $this->load->language('checkout/cart');

        $json = array();

        $product_id = (int)$product_id;


        $this->load->model('catalog/ebaypro');

        $product_info = $this->model_catalog_ebaypro->getProduct($product_id);

        if ($product_info) {
            if (isset($this->request->post['quantity'])) {
                $quantity = (int)$this->request->post['quantity'];
            } else {
                $quantity = 1;
            }

            if (isset($this->request->post['option'])) {
                $option = array_filter($this->request->post['option']);
            } else {
                $option = array();
            }

            $product_options = $this->model_catalog_ebaypro->getProductOptions($product_id);

            foreach ($product_options as $product_option) {
                if ($product_option['required'] && empty($option[$product_option['product_option_id']])) {
                    $json['error']['option'][$product_option['product_option_id']] = sprintf($this->language->get('error_required'), $product_option['name']);
                }
            }

            if (!$json) {
                $this->cart->add($product_id, $quantity, $option);

                $json['success'] = sprintf($this->language->get('text_success'), $this->url->link('ebaypro/ebaypro', 'product_id=' . $product_id), $product_info['name'], $this->url->link('checkout/cart'));

                // Unset all shipping and payment methods
                unset($this->session->data['shipping_method']);
                unset($this->session->data['shipping_methods']);
                unset($this->session->data['payment_method']);
                unset($this->session->data['payment_methods']);

                // Totals
                $this->load->model('setting/extension');

                $totals = array();
                $taxes = $this->cart->getTaxes();
                $total = 0;

                // Because __call can not keep var references so we put them into an array.
                $total_data = array(
                    'totals' => &$totals,
                    'taxes'  => &$taxes,
                    'total'  => &$total
                );

                // Display prices
                if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                    $sort_order = array();

                    $results = $this->model_setting_extension->getExtensions('total');

                    foreach ($results as $key => $value) {
                        $sort_order[$key] = $this->config->get('total_' . $value['code'] . '_sort_order');
                    }

                    array_multisort($sort_order, SORT_ASC, $results);

                    foreach ($results as $result) {
                        if ($this->config->get('total_' . $result['code'] . '_status')) {
                            $this->load->model('extension/total/' . $result['code']);

                            // We have to put the totals in an array so that they pass by reference.
                            $this->{'model_extension_total_' . $result['code']}->getTotal($total_data);
                        }
                    }

                    $sort_order = array();

                    foreach ($totals as $key => $value) {
                        $sort_order[$key] = $value['sort_order'];
                    }

                    array_multisort($sort_order, SORT_ASC, $totals);
                }

                $json['total'] = sprintf($this->language->get('text_items'), $this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0), $this->currency->format($total, $this->session->data['currency']));
            } else {
                $json['redirect'] = str_replace('&amp;', '&', $this->url->link('ebaypro/ebaypro', 'product_id=' . $product_id));
            }
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

    public function edit() {
        $this->load->language('checkout/cart');

        $json = array();

        // Update
        if (!empty($this->request->post['quantity'])) {
            foreach ($this->request->post['quantity'] as $key => $value) {
                $this->cart->update($key, $value);
            }

            $this->session->data['success'] = $this->language->get('text_remove');

            unset($this->session->data['shipping_method']);
            unset($this->session->data['shipping_methods']);
            unset($this->session->data['payment_method']);
            unset($this->session->data['payment_methods']);
            unset($this->session->data['reward']);

            $this->response->redirect($this->url->link('checkout/cart'));
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

    public function remove() {
        $this->load->language('checkout/cart');

        $json = array();

        // Remove
        if (isset($this->request->post['key'])){
            $this->cart->remove($this->request->post['key']);

            unset($this->session->data['vouchers'][$this->request->post['key']]);

            $json['success'] = $this->language->get('text_remove');

            unset($this->session->data['shipping_method']);
            unset($this->session->data['shipping_methods']);
            unset($this->session->data['payment_method']);
            unset($this->session->data['payment_methods']);
            unset($this->session->data['reward']);

            // Totals
            $this->load->model('setting/extension');

            $totals = array();
            $taxes = $this->cart->getTaxes();
            $total = 0;

            // Because __call can not keep var references so we put them into an array.
            $total_data = array(
                'totals' => &$totals,
                'taxes'  => &$taxes,
                'total'  => &$total
            );

            // Display prices
            if($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                $sort_order = array();

                $results = $this->model_setting_extension->getExtensions('total');

                foreach ($results as $key => $value) {
                    $sort_order[$key] = $this->config->get('total_' . $value['code'] . '_sort_order');
                }

                array_multisort($sort_order, SORT_ASC, $results);

                foreach ($results as $result) {
                    if ($this->config->get('total_' . $result['code'] . '_status')) {
                        $this->load->model('extension/total/' . $result['code']);

                        // We have to put the totals in an array so that they pass by reference.
                        $this->{'model_extension_total_' . $result['code']}->getTotal($total_data);
                    }
                }

                $sort_order = array();

                foreach ($totals as $key => $value) {
                    $sort_order[$key] = $value['sort_order'];
                }

                array_multisort($sort_order, SORT_ASC, $totals);
            }

            $json['total'] = sprintf($this->language->get('text_items'), $this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0), $this->currency->format($total, $this->session->data['currency']));
        }

        $this->response->addHeader('Content-Type: application/json');
        $this->response->setOutput(json_encode($json));
    }

    public function info() {
        $this->load->language('checkout/cart');

        if ($this->config->get('config_cart_weight')) {
            $data['weight'] = $this->weight->format($this->cart->getWeight(), $this->config->get('config_weight_class_id'), $this->language->get('decimal_point'), $this->language->get('thousand_point'));
        } else {
            $data['weight'] = '';
        }

        $this->load->model('tool/image');
        $this->load->model('tool/upload');

        $data['products'] = array();

        $products = $this->cart->getProducts();

        foreach ($products as $product) {
            $product_total = 0;

            foreach ($products as $product_2) {
                if ($product_2['product_id'] == $product['product_id']) {
                    $product_total += $product_2['quantity'];
                }
            }

            if ($product['minimum'] > $product_total) {
                $data['error_warning'] = sprintf($this->language->get('error_minimum'), $product['name'], $product['minimum']);
            }

            if ($product['image']) {
                $image = $this->model_tool_image->resize($product['image'], $this->config->get('theme_' . $this->config->get('config_theme') . '_image_cart_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_cart_height'));
            } else {
                $image = '';
            }

            $option_data = array();

            foreach ($product['option'] as $option) {
                if ($option['type'] != 'file') {
                    $value = $option['value'];
                } else {
                    $upload_info = $this->model_tool_upload->getUploadByCode($option['value']);

                    if ($upload_info) {
                        $value = $upload_info['name'];
                    } else {
                        $value = '';
                    }
                }

                $option_data[] = array(
                    'name'  => $option['name'],
                    'value' => (utf8_strlen($value) > 20 ? utf8_substr($value, 0, 20) . '..' : $value)
                );
            }

            // Display prices
            if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                $unit_price = $this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax'));

                $price = $this->currency->format($unit_price, $this->session->data['currency']);
                $total = $this->currency->format($unit_price * $product['quantity'], $this->session->data['currency']);
            } else {
                $price = false;
                $total = false;
            }

            $recurring = '';

            if ($product['recurring']) {
                $frequencies = array(
                    'day'        => $this->language->get('text_day'),
                    'week'       => $this->language->get('text_week'),
                    'semi_month' => $this->language->get('text_semi_month'),
                    'month'      => $this->language->get('text_month'),
                    'year'       => $this->language->get('text_year')
                );

                if ($product['recurring']['trial']) {
                    $recurring = sprintf($this->language->get('text_trial_description'), $this->currency->format($this->tax->calculate($product['recurring']['trial_price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']), $product['recurring']['trial_cycle'], $frequencies[$product['recurring']['trial_frequency']], $product['recurring']['trial_duration']) . ' ';
                }

                if ($product['recurring']['duration']) {
                    $recurring .= sprintf($this->language->get('text_payment_description'), $this->currency->format($this->tax->calculate($product['recurring']['price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']), $product['recurring']['cycle'], $frequencies[$product['recurring']['frequency']], $product['recurring']['duration']);
                } else {
                    $recurring .= sprintf($this->language->get('text_payment_cancel'), $this->currency->format($this->tax->calculate($product['recurring']['price'] * $product['quantity'], $product['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']), $product['recurring']['cycle'], $frequencies[$product['recurring']['frequency']], $product['recurring']['duration']);
                }
            }

            $data['products'][] = array(
                'cart_id'   => $product['cart_id'],
                'thumb'     => $image,
                'name'      => $product['name'],
                'model'     => $product['model'],
                'option'    => $option_data,
                'recurring' => $recurring,
                'quantity'  => $product['quantity'],
                'stock'     => $product['stock'] ? true : !(!$this->config->get('config_stock_checkout') || $this->config->get('config_stock_warning')),
                'reward'    => ($product['reward'] ? sprintf($this->language->get('text_points'), $product['reward']) : ''),
                'price'     => $price,
                'total'     => $total,
                'href'      => $this->url->link('ebaypro/ebaypro', 'product_id=' . $product['product_id'])
            );
        }

        // Gift Voucher
        $data['vouchers'] = array();

        if (!empty($this->session->data['vouchers'])) {
            foreach ($this->session->data['vouchers'] as $key => $voucher) {
                $data['vouchers'][] = array(
                    'key'         => $key,
                    'description' => $voucher['description'],
                    'amount'      => $this->currency->format($voucher['amount'], $this->session->data['currency']),
                    'remove'      => $this->url->link('checkout/cart', 'remove=' . $key)
                );
            }
        }





        // Totals
        $this->load->model('setting/extension');

        $totals = array();
        $taxes = $this->cart->getTaxes();
        $total = 0;

        // Because __call can not keep var references so we put them into an array.
        $total_data = array(
            'totals' => &$totals,
            'taxes'  => &$taxes,
            'total'  => &$total
        );

        // Display prices
        if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
            $sort_order = array();

            $results = $this->model_setting_extension->getExtensions('total');

            foreach ($results as $key => $value) {
                $sort_order[$key] = $this->config->get('total_' . $value['code'] . '_sort_order');
            }

            array_multisort($sort_order, SORT_ASC, $results);

            foreach ($results as $result) {
                if ($this->config->get('total_' . $result['code'] . '_status')) {
                    $this->load->model('extension/total/' . $result['code']);

                    // We have to put the totals in an array so that they pass by reference.
                    $this->{'model_extension_total_' . $result['code']}->getTotal($total_data);
                }
            }

            $sort_order = array();

            foreach ($totals as $key => $value) {
                $sort_order[$key] = $value['sort_order'];
            }

            array_multisort($sort_order, SORT_ASC, $totals);
        }
        $data['totals'] = array();

        foreach ($totals as $total) {
            $data['totals'][] = array(
                'title' => $total['title'],
                'text'  => $this->currency->format($total['value'], $this->session->data['currency']),
            );
        }
        $json['total'] = sprintf($this->language->get('text_items'), $this->cart->countProducts() + (isset($this->session->data['vouchers']) ? count($this->session->data['vouchers']) : 0), $this->currency->format($total, $this->session->data['currency']));




        $this->response->setOutput($this->load->view('checkout/cart_info', $data));
    }
}