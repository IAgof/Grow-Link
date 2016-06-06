<?php
/**
* Advertikon Debug modes Source
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Source;

use \Advertikon\Log;

class Debug extends Source{

	public function __construct(){

		$this->_addOption( array( 'value' => Log::DISABLE , 'text' => $this->__( 'Disabled' ) , ) )
			->_addOption( array( 'value' => Log::ERR , 'text' => $this->__( 'Errors' ) , ) )
			->_addOption( array( 'value' => Log::MSG , 'text' => $this->__( 'System messages' ) , ) )
			->_addOption( array( 'value' => Log::DEBUG , 'text' => $this->__( 'Dedug information' ) , ) );

	}

}
?>