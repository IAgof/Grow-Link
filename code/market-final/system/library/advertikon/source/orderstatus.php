<?php
/**
* Advertikon Order Status Source
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Source;

use \Advertikon\Advertikon;

class Orderstatus extends Source{

	public function __construct(){

		foreach( Advertikon::getExtendedModel( 'localisation_order_status' )->getOrderStatuses() as $status ) {
			$this->_addOption( array( 'value' => $status[ 'order_status_id' ] , 'text' => $status[ 'name' ] ) );
		}
	}

}
?>