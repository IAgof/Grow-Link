<?php
/**
* Advertikon Month Source
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Source;

class Nextyears extends Source{

	public function __construct(){

		$date = new \dateTime;
		$step = new \DateInterval( 'P1Y' );
		$count = 10;
		//year two number 
		$valueFormat = 'y';
		$textFormat = 'y';

		for( $i = 0; $i < $count; ++$i ) {
			$this->_addOption( array( 'value' => $date->format( $valueFormat ) , 'text' => $date->format( $textFormat ) ) );
			$date->add( $step );
		}
	}

}
?>