<?php
/**
* Advertikon Geo Zones Source
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Source;

use \Advertikon\Advertikon;

class Geozones extends Source{

	public function __construct(){

		$geoZones = Advertikon::getModel( 'localisation/geo_zone' )->getGeoZones();

		$this->_addOption( array( 'value' => 0 , 'text' => $this->__( 'All Geo Zones' ) , ) );

		foreach( $geoZones as $geoZone ) {
			$this->_addOption( array( 'value' => $geoZone[ 'geo_zone_id' ] , 'text' => $geoZone[ 'description' ] , ) );
		}
	}

}
?>