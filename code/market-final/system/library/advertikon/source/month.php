<?php
/**
* Advertikon Month Source
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Source;

class Month extends Source{

	public function __construct(){

		$date = new \dateTime( 'first day of January 2008' );
		$step = new \DateInterval( 'P1M' );
		$count = 12;
		//month number with leading zero
		$valueFormat = 'm';
		$textFormat = 'm';

		for( $i = 0; $i < $count; ++$i ) {
			$this->_addOption( array( 'value' => $date->format( $valueFormat ) , 'text' => $date->format( $textFormat ) ) );
			$date->add( $step );
		}
	}

}
?>