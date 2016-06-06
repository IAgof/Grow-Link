<?php

class ControllerMultimerchXtBase extends Controller {
	private $error = array();
	public  $data = array();
	
	public function __construct($registry) {
		parent::__construct($registry);
		$this->registry = $registry;
	}
}
?>
