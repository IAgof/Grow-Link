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

class Orderstatusprocessing extends Source{

	public function __construct(){

		$processing = Advertikon::getCurrentModel()->config->get('config_processing_status');
		foreach( Advertikon::getExtendedModel( 'localisation_order_status' )->getOrderStatuses() as $status ) {
			if( in_array( $status[ 'order_status_id' ] , $processing ) ) {
				$this->_addOption( array( 'value' => $status[ 'order_status_id' ] , 'text' => $status[ 'name' ] ) );
			}
		}
	}

}
?>