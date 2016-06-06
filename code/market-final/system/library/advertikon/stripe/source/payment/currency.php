<?php
/**
* Advertikon Payment Methods Source
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Stripe\Source\Payment;

use \Advertikon\Source\Source;
use \Advertikon\Stripe\Model;

class Currency extends Source{

	public function __construct(){

		$this->_addOption( array( 'value'=> Model::CURRENCY_STORE , 'text' => $this->__( 'Store' ) ) )
			->_addOption( array( 'value'=> Model::CURRENCY_ORDER , 'text' => $this->__( 'Order' ) ) );
	}

}
?>