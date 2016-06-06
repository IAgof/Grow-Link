<?php
/**
* Advertikon Enabled/Disabled Source
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Source;

class Yesno extends Source{

	public function __construct(){

		$this->_addOption( array( 'value' => 0 , 'text' => $this->__( 'No' ) , ) )
			->_addOption( array( 'value' => 1 , 'text' => $this->__( 'Yes' ) , ) );
	}

}
?>