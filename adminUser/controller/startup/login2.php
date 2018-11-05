<?php
class ControllerStartupLogin extends Controller {
	public function index() {
		$route = isset($this->request->get['route']) ? $this->request->get['route'] : '';

		$ignore = array(
			'common/login',
			'common/forgotten',
			'common/reset',
			'common/register'
		);

		// User
		$this->registry->set('user', new Cart\User($this->registry));

		if (!$this->user->isLogged() && !in_array($route, $ignore)) {
			return new Action('common/login');
		}

		if (isset($this->request->get['route'])) {
			$ignore = array(
				'common/login',
				'common/logout',
				'common/forgotten',
				'common/reset',
				'common/cron',
				'common/register',
				'error/not_found',
				'error/permission'
			);

			if (!in_array($route, $ignore) && (!isset($this->request->get['user_tokens']) || !isset($this->session->data['user_tokens']) || ($this->request->get['user_tokens'] != $this->session->data['user_tokens']))) {
				return new Action('common/login');
			}
		} else {
			if (!isset($this->request->get['user_tokens']) || !isset($this->session->data['user_tokens']) || ($this->request->get['user_tokens'] != $this->session->data['user_tokens'])) {
				return new Action('common/login');
			}
		}
	}
}
