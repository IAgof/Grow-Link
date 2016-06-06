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

class Methods extends Source{

	public function __construct(){

		$this->_addOption( array( 'value'=> Model::PAYMENT_AUTHORIZE , 'text' => $this->__( 'Authorize' ) ) )
			->_addOption( array( 'value'=> Model::PAYMENT_AUTHORIZE_CAPTURE , 'text' => $this->__( 'Authorize and Capture' ) ) );
	}

}
?>