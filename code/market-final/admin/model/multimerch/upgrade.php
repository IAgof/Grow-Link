<?php
class ModelMultimerchUpgrade extends Model {
	public function __construct($registry) {
		parent::__construct($registry);
		$this->load->model('localisation/language');
		$this->load->model('multimerch/install');
	}

	public function getDbVersion() {
		$res = $this->db->query("SHOW TABLES LIKE '" . DB_PREFIX . "mxt_db_schema'");
		if (!$res->num_rows) return '0.0.0.0';

		$res = $this->db->query("SELECT * FROM `" . DB_PREFIX . "mxt_db_schema` ORDER BY schema_change_id DESC LIMIT 1");

		if ($res->num_rows)
			return $res->row['major'] . '.' . $res->row['minor'] . '.' . $res->row['build'] . '.' . $res->row['revision'];
		else
			return '0.0.0.0';
	}

	public function isDbLatest() {
		$current = $this->getDbVersion();
		if ($current == $this->model_module_multimerch_install->dbVer) {
			return true;
		}

		return false;
	}

	private function _createSchemaEntry($version) {
		$schema = explode(".", $version);
		$this->db->query("INSERT INTO `" . DB_PREFIX . "mxt_db_schema` (major, minor, build, revision, date_applied) VALUES({$schema[0]},{$schema[1]},{$schema[2]},{$schema[3]}, NOW())");
	}

	public function upgradeDb() {
		$version = $this->getDbVersion();
	}
}