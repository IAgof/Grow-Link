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

class Orderstatuscomplete extends Source{

	public function __construct(){

		$complete = Advertikon::getCurrentModel()->config->get('config_complete_status');
		foreach( Advertikon::getExtendedModel( 'localisation_order_status' )->getOrderStatuses() as $status ) {
			if( in_array( $status[ 'order_status_id' ] , $complete ) ) {
				$this->_addOption( array( 'value' => $status[ 'order_status_id' ] , 'text' => $status[ 'name' ] ) );
			}
		}
	}

}
?>