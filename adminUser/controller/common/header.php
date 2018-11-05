<?php
class ControllerCommonHeader extends Controller {
	public function index() {
        $data = $this->getEditorData();
		$data['base'] = HTTP_SERVER;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$this->load->language('common/header');
		
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->user->getUserName());

		if (!isset($this->request->get['user_tokens']) || !isset($this->session->data['user_tokens']) || ($this->request->get['user_tokens'] != $this->session->data['user_tokens'])) {
			$data['logged'] = '';

			$data['home'] = $this->url->link('common/login');
		} else {
			$data['logged'] = true;

			$data['home'] = $this->url->link('common/dashboard', 'user_tokens=' . $this->session->data['user_tokens']);
			$data['logout'] = $this->url->link('common/logout', 'user_tokens=' . $this->session->data['user_tokens']);
			$data['profile'] = $this->url->link('common/profile', 'user_tokens=' . $this->session->data['user_tokens']);

			$this->load->model('tool/image');

			$data['fullname'] = '';
			$data['user_group'] = '';
			$data['image'] = $this->model_tool_image->resize('profile.png', 45, 45);
						
			$this->load->model('user/user');
	
			$user_info = $this->model_user_user->getUser($this->user->getId());
	
			if ($user_info) {
				$data['fullname'] = $user_info['fullname'];
				$data['username']  = $user_info['username'];
				$data['user_group'] = $user_info['user_group'];
	
				if (is_file(DIR_IMAGE . $user_info['image'])) {
					$data['image'] = $this->model_tool_image->resize($user_info['image'], 45, 45);
				}
			} 		
			
			// Online Stores
			$data['stores'] = array();

			$data['stores'][] = array(
				'name' => $this->config->get('config_name'),
				'href' => HTTP_CATALOG
			);

			$this->load->model('setting/store');

			$results = $this->model_setting_store->getStores();

			foreach ($results as $result) {
				$data['stores'][] = array(
					'name' => $result['name'],
					'href' => $result['url']
				);
			}
		}

		return $this->load->view('common/header', $data);
	}

	protected function getEditorData()
    {
        //session for editor and image upload
        session_start();
        $_SESSION['image_root_path'] = HTTP_CATALOG;
        $_SESSION['folder_language'] = $this->config->get('config_admin_language');
        $_SESSION['image_upload_permission'] = $this->user->hasPermission('modify', 'common/filemanager');
        $_SESSION['system_windows'] = strstr(PHP_OS, 'WIN') ? 1 : 0;
        $_SESSION['dir_cache'] = DIR_CACHE;

        $this->load->model('tool/image');
        $result['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
        $result['editor_language'] = $this->config->get('config_admin_language') == 'en-gb' ? 'en' : 'zh_CN';
        $result['title'] = $this->document->getTitle();
        setcookie('folder_language', $this->config->get('config_admin_language'), time() + 60 * 60 * 24 * 30, '/', $this->request->server['HTTP_HOST']);
        return $result;
    }
}
