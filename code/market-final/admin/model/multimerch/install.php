<?php
class ModelMultimerchInstall extends Model {
	public $dbVer = '1.0.0.0';
	public $appVer = '1.0.0.0';

	public function __construct($registry) {
		parent::__construct($registry);
		$this->load->model('localisation/language');
	}

	public function createSchema() {
		/* schema */
		$this->db->query("
		CREATE TABLE `" . DB_PREFIX . "mxt_db_schema` (
		`schema_change_id` int(11) NOT NULL AUTO_INCREMENT,
		`major` TINYINT NOT NULL,
		`minor` TINYINT NOT NULL,
		`build` TINYINT NOT NULL,
		`revision` SMALLINT NOT NULL,
		`date_applied` DATETIME NOT NULL,
		PRIMARY KEY (`schema_change_id`)) default CHARSET=utf8");

		/* badges */
		$this->db->query("
		CREATE TABLE IF NOT EXISTS `".DB_PREFIX."ms_badge` (
		`badge_id` int(11) NOT NULL AUTO_INCREMENT,
		`image` varchar(255) DEFAULT NULL,
		PRIMARY KEY (`badge_id`)) default CHARSET=utf8");

		$this->db->query("
		CREATE TABLE IF NOT EXISTS `".DB_PREFIX."ms_badge_description` (
		`badge_id` int(11) NOT NULL,
		`name` varchar(32) NOT NULL DEFAULT '',
		`description` text NOT NULL,
		`language_id` int(11) DEFAULT NULL,
		PRIMARY KEY (`badge_id`, `language_id`)) default CHARSET=utf8");

		$this->db->query("
		CREATE TABLE IF NOT EXISTS `".DB_PREFIX."ms_badge_seller_group` (
		`badge_id` INT(11) NOT NULL,
		`seller_id` int(11) DEFAULT NULL,
		`seller_group_id` int(11) DEFAULT NULL,
		PRIMARY KEY (`badge_id`, `seller_id`, `seller_group_id`)) default CHARSET=utf8");


		/* social links */
		$this->db->query("
		CREATE TABLE IF NOT EXISTS `".DB_PREFIX."ms_channel` (
		`channel_id` int(11) NOT NULL AUTO_INCREMENT,
		`image` varchar(255) DEFAULT NULL,
		PRIMARY KEY (`channel_id`)) default CHARSET=utf8");

		$this->db->query("
		CREATE TABLE IF NOT EXISTS `".DB_PREFIX."ms_channel_description` (
		`channel_id` int(11) NOT NULL,
		`language_id` int(11) DEFAULT NULL,
		`name` VARCHAR(32) NOT NULL DEFAULT '',
		`description` TEXT NOT NULL DEFAULT '',
		PRIMARY KEY (`channel_id`, `language_id`)) default CHARSET=utf8");

		$this->db->query("
		CREATE TABLE IF NOT EXISTS `".DB_PREFIX."ms_seller_channel` (
		`seller_id` int(11) NOT NULL,
		`channel_id` int(11) NOT NULL,
		`channel_value` varchar(255) DEFAULT NULL,
		PRIMARY KEY (`seller_id`, `channel_id`)) default CHARSET=utf8");

		/* messaging */
		$this->db->query("
		CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "ms_conversation` (
		`conversation_id` int(11) NOT NULL AUTO_INCREMENT,
		`product_id` int(11) DEFAULT NULL,
		`order_id` int(11) DEFAULT NULL,
		`title` varchar(256) NOT NULL DEFAULT '',
		`date_created` DATETIME NOT NULL,
		PRIMARY KEY (`conversation_id`)) default CHARSET=utf8");

		$this->db->query("
		CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "ms_message` (
		`message_id` int(11) NOT NULL AUTO_INCREMENT,
		`conversation_id` int(11) NOT NULL,
		`from` int(11) DEFAULT NULL,
		`to` int(11) DEFAULT NULL,
		`message` text NOT NULL DEFAULT '',
		`read` tinyint(1) NOT NULL DEFAULT 0,
		`date_created` DATETIME NOT NULL,
		PRIMARY KEY (`message_id`)) default CHARSET=utf8");
	}

	public function createData() {
		/* schema */
		$schema = explode(".", $this->MsLoader->dbVer);
		$this->db->query("INSERT INTO " . DB_PREFIX . "ms_db_schema (major, minor, build, revision, date_applied) VALUES({$schema[0]},{$schema[1]},{$schema[2]},{$schema[3]}, NOW())");

		/* social links @todo */
		$this->load->model('localisation/language');
		$languages = $this->model_localisation_language->getLanguages();
		$sql = "SELECT channel_id FROM " . DB_PREFIX . "ms_channel WHERE 1";
		$query = $this->db->query($sql);
		if(empty($query->rows)) {
			foreach(array('Facebook', 'Twitter', 'LinkedIn', 'Google+') as $channel) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "ms_channel SET image = 'catalog/multimerch/social_links/GraphicBurger/{$channel}.png'");
				$channel_id = $this->db->getLastId();

				foreach ($languages as $code => $language) {
					$this->db->query("
					INSERT INTO " . DB_PREFIX . "ms_channel_description
					SET channel_id = $channel_id,
					 	language_id = ". (int)$language['language_id'] . ",
						name = '" . $this->db->escape($channel) . "',
						description = 'Please specify your " . $this->db->escape($channel) . " link'
					");
				}
			}
		}
	}

	public function deleteSchema() {
		/* badges */
		$this->db->query("DROP TABLE IF EXISTS
		`" . DB_PREFIX . "ms_badge`,
		`" . DB_PREFIX . "ms_badge_description`,
		`" . DB_PREFIX . "ms_badge_seller_group`");

		/* social links */
		$this->db->query("DROP TABLE IF EXISTS
		`" . DB_PREFIX . "ms_channel`,
		`" . DB_PREFIX . "ms_channel_description`,
		`" . DB_PREFIX . "ms_seller_channel`");

		/* messaging*/
		$this->db->query("DROP TABLE IF EXISTS
		`" . DB_PREFIX . "ms_message`,
		`" . DB_PREFIX . "ms_conversation`");

		/* schema */
		$this->db->query("DROP TABLE IF EXISTS `" . DB_PREFIX . "mxt_db_schema`");
	}

	public function deleteData() {

	}
}