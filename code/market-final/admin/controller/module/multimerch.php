<?php

if (!class_exists('ControllerMultisellerBase')) {
    die('
<h3>MultiMerch Installation Error - ControllerMultisellerBase class not found</h3>
<pre>This usually means vQmod is missing or broken. Please make sure that:

1. You have installed MultiMerch Core
2. You have installed the latest version of vQmod available at <a href="http://vqmod.com/">http://vqmod.com/</a>
3. You have run vQmod installation script at <a target="_blank" href="'.HTTP_CATALOG.'vqmod/install/">'.HTTP_CATALOG.'vqmod/install/</a> successfully (see <a target="_blank" href="https://github.com/vqmod/vqmod/wiki/Installing-vQmod-on-OpenCart">Installing vQmod on OpenCart</a> for more information)
4. Your vqmod/ and vqmod/vqcache/ folders are server-writable. Contact your hosting provider for more information
5. You have copied all MultiMerch files and folders from the upload/ folder to your OpenCart root
</pre>
    ');
}

class ControllerModuleMultimerch extends ControllerMultisellerBase {
	private $_controllers = array(
		"multimerch/base",
		"multimerch/settings",

		"multiseller/badge",
		"multiseller/social_link"
	);
	
	private $settings = array(
		"mxtconf_installed" => 1,

		/* badges */
		"msconf_badge_enabled" => 0,
		"msconf_badge_width" => 30,
		"msconf_badge_height" => 30,

		/* social links */
		"msconf_sl_status" => 0,
		"msconf_sl_icon_width" => 75,
		"msconf_sl_icon_height" => 75,

		/* messaging */
		"mmess_conf_enable" => 1
	);

	public function __construct($registry) {
		parent::__construct($registry);
		$this->registry = $registry;
		$this->data = array_merge($this->data, $this->load->language('multiseller/multiseller'), $this->load->language("module/multimerch_badges"), $this->load->language("module/multimerch_social_links"), $this->load->language("module/multimerch_messaging"));
		$this->load->model("multimerch/install");
		$this->load->model('setting/setting');
		$this->load->model('extension/extension');
		$this->data['token'] = $this->session->data['token'];
	}

	private function _editSettings($prefix = '') {
		$set = $this->model_setting_setting->getSetting($prefix);
		$installed_extensions = $this->model_extension_extension->getInstalled('module');

		$extensions_to_be_installed = array();
		foreach ($this->settings as $name=>$value) {
			if (!array_key_exists($name,$set))
				$set[$name] = $value;

			if ((strpos($name,'_module') !== FALSE) && (!in_array(str_replace('_module','',$name),$installed_extensions))) {
				$extensions_to_be_installed[] = str_replace('_module','',$name);
			}
		}

		foreach($set as $s=>$v) {
			if ((strpos($s,'_module') !== FALSE)) {
				if (!isset($this->request->post[$s])) {
					$set[$s] = '';
				} else {
					unset($this->request->post[$s][0]);
					$set[$s] = $this->request->post[$s];
				}
				continue;
			}

			if (isset($this->request->post[$s])) {
				$set[$s] = $this->request->post[$s];
				$this->data[$s] = $this->request->post[$s];
			} elseif ($this->config->get($s)) {
				$this->data[$s] = $this->config->get($s);
			} else {
				if (isset($this->settings[$s]))
					$this->data[$s] = $this->settings[$s];
			}
		}

		$this->model_setting_setting->editSetting($prefix, $set);

		foreach ($extensions_to_be_installed as $ext) {
			$this->model_extension_extension->install('module',$ext);
		}
	}

	public function install() {
		$this->validate(__FUNCTION__);

		$this->model_multimerch_install->createSchema();
		$this->model_multimerch_install->createData();
		$this->model_setting_setting->editSetting('mxtconf', $this->settings);
		$this->model_setting_setting->editSetting('msconf_badge', $this->settings);
		$this->model_setting_setting->editSetting('msconf_sl', $this->settings);
		$this->model_setting_setting->editSetting('mmess_conf', $this->settings);

		$this->load->model('user/user_group');

		foreach ($this->_controllers as $c) {
			$this->model_user_user_group->addPermission($this->user->getId(), 'access', $c);
			$this->model_user_user_group->addPermission($this->user->getId(), 'modify', $c);
		}

		$this->session->data['success'] = $this->language->get('ms_success_installed');
		$this->session->data['error'] = "";
	}

	public function uninstall() {
		$this->model_multimerch_install->deleteSchema();
		$this->model_multimerch_install->deleteData();
		$this->model_setting_setting->editSetting("mxtconf", array("mxtconf_installed" => 0));
	}	

	public function saveSettings() {
		// @todo setting validation

		foreach (array('mxtconf', 'msconf_badge', 'msconf_sl', 'mmess_conf') as $prefix) {
			$this->_editSettings($prefix);
		}
		$this->response->setOutput(json_encode(array()));
	}
	
	public function index() {
		foreach($this->settings as $s=>$v) {
			$this->data[$s] = $this->config->get($s);
		}

		$this->document->addScript('view/javascript/multimerch/settings.js');
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

		$this->load->model('design/layout');
		$this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->document->setTitle($this->language->get('ms_settings_heading'));

		$this->data['breadcrumbs'] = $this->MsLoader->MsHelper->admSetBreadcrumbs(array(
			array(
				'text' => $this->language->get('ms_menu_multiseller'),
				'href' => ''//$this->url->link('account/account', '', 'SSL'),
			),
			array(
				'text' => $this->language->get('ms_settings_breadcrumbs'),
				'href' => $this->url->link('module/multiseller', '', 'SSL'),
			)
		));

		$this->data['column_left'] = $this->load->controller('common/column_left');
		$this->data['footer'] = $this->load->controller('common/footer');
		$this->data['header'] = $this->load->controller('common/header');
		$this->response->setOutput($this->load->view('multimerch/settings.tpl', $this->data));
	}
	
	public function upgradeDb() {
	}
}
?>