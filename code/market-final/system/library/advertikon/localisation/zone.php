<?php
/**
* Advertikon Extended Geo Zones Model
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Localisation;

class Zone extends \ModelLocalisationZone{

	/**
	* Get Geo Zones by ZoneID
	*
	* @return Array
	*/
	public function getGeoZonesIdByZoneId( $zone_id ) {

			$query = $this->db->query( "SELECT `geo_zone_id` FROM " . DB_PREFIX . "zone_to_geo_zone WHERE zone_id = '" . (int)$zone_id . "'" );

			$zone_data = array();
			foreach( $query->rows as $row ) {
				$zone_data[] = $row[ 'geo_zone_id' ];
			}

		return $zone_data;
	}
}