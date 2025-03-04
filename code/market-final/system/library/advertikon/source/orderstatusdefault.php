<?php
/**
* Advertikon Order Status with 'Use Store Setting' option Source
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Source;

use \Advertikon\Advertikon;

class Orderstatusdefault extends Orderstatus{

	public function __construct(){

		$this->_addOption( array(
			'value'	=> Advertikon::getCurrentModel()->config->get( 'config_order_status_id' ) ,
			'text'	=> Advertikon::getCurrentModel()->__( 'Use store setting' ) ,
			 ) );

		parent::__construct();
	}

}
?>