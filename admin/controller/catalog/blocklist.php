<?php
class ControllerCatalogBlocklist extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('catalog/block_list');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/blocklist');
// echo '<pre>';
// print_r($this->request->post);
// echo '</pre>';die;
		$this->getList();
	}

	public function add() {
		$this->load->language('catalog/block_list');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/blocklist');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {


			$this->model_catalog_blocklist->addblocklist($this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('catalog/blocklist', 'user_token=' . $this->session->data['user_token'] . $url));
		}

		$this->getForm();
	}

	public function edit() {
		$this->load->language('catalog/block_list');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/blocklist');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			$this->model_catalog_blocklist->editblocklist($this->request->get['bid'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('catalog/blocklist', 'user_token=' . $this->session->data['user_token'] . $url));
		}

		$this->getForm();
	}

	public function delete() {
		$this->load->language('catalog/block_list');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('catalog/blocklist');

		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $bid) {
				$this->model_catalog_blocklist->deleteblocklist($bid);
			}

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->response->redirect($this->url->link('catalog/blocklist', 'user_token=' . $this->session->data['user_token'] . $url));
		}

		$this->getList();
	}

	protected function getList() {

		$data['breadcrumbs'] =   array();

		$data['breadcrumbs'][] =   array(
			'text' =>  $this->language->get('text_list'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'])
		);

		$data['breadcrumbs'][] =   array(
			'text' =>  $this->language->get('heading_title'),
			'href' =>  $this->url->link('catalog/blocklist', 'user_token=' . $this->session->data['user_token'] . $url)
		);

		$data['add'] = $this->url->link('catalog/blocklist/add', 'user_token=' . $this->session->data['user_token'] . $url);
		$data['delete'] = $this->url->link('catalog/blocklist/delete', 'user_token=' . $this->session->data['user_token'] . $url);

		$data['blocklist'] = array();

		$blocklist_total = $this->model_catalog_blocklist->getTotalblocklists();

		$results = $this->model_catalog_blocklist->getblocklists($filter_data);

		foreach ($results as $result) {
			$data['blocklist'][] =   array(
				'bid' 		   		=> $result['bid'],
				'bname'       		=> $result['bname'],
				'mlink'        		=> $result['mlink'],
				'product_id_grop'   => $result['product_id_grop'],
				'status'        	=> $result['status'],
				'edit'         		=> $this->url->link('catalog/blocklist/edit', 'user_token=' . $this->session->data['user_token'] . '&bid=' . $result['bid'] . $url)
			);
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->request->post['selected'])) {
			$data['selected'] = (array)$this->request->post['selected'];
		} else {
			$data['selected'] = array();
		}


		$pagination = new Pagination();
		$pagination->total = $blocklist_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('catalog/blocklist', 'user_token=' . $this->session->data['user_token'] . $url . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($blocklist_total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($blocklist_total - $this->config->get('config_limit_admin'))) ? $blocklist_total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $blocklist_total, ceil($blocklist_total / $this->config->get('config_limit_admin')));

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
// echo '<pre>';
// print_r($data);
// echo '</pre>';die;
		$this->response->setOutput($this->load->view('blocklist/block_list', $data));
	}

	protected function getForm() {
		$data['text_form'] = !isset($this->request->get['bid']) ? $this->language->get('text_add') : $this->language->get('text_edit');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['bname'])) {
			$data['error_bname'] = $this->error['bname'];
		} else {
			$data['error_bname'] = '';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'])
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('catalog/blocklist', 'user_token=' . $this->session->data['user_token'] . $url)
		);

		if (!isset($this->request->get['bid'])) {
			$data['action'] = $this->url->link('catalog/blocklist/add', 'user_token=' . $this->session->data['user_token'] . $url);
		} else {
			$data['action'] = $this->url->link('catalog/blocklist/edit', 'user_token=' . $this->session->data['user_token'] .  '&bid=' . $this->request->get['bid'] . $url);
		}

		$data['cancel'] = $this->url->link('catalog/blocklist', 'user_token=' . $this->session->data['user_token'] . $url);

		if (isset($this->request->get['bid']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$blocklist_info = $this->model_catalog_blocklist->getblocklist($this->request->get['bid']);
		}

		$data['user_token'] = $this->session->data['user_token'];

		$this->load->model('setting/store');

		if (isset($this->request->post['bname'])) {
			$data['bname'] = $this->request->post['bname'];
		} elseif (!empty($blocklist_info)) {
			$data['bname'] = $blocklist_info['bname'];
		} else {
			$data['bname'] =   '';
		}

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('blocklist/block_form', $data));
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'catalog/blocklist')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
			$this->error['name'] = $this->language->get('error_name');
		}
		return !$this->error;
	}

	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'catalog/blocklist')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}


}