<?php
/**
* Catalog Advertikon Stripe Model
*
* @author Advertikon
* @package Stripe
* @version 2.2.0.4
*/

class ModelPaymentAdvertikonStripe extends Advertikon\Stripe\Model {

	public function getMethod( $address, $total ) {

		try{
			/*
				Min total amount
				$total is in Base currency
			*/
			if( $total < $this->getConfigValue( 'total_min' ) ) {
				throw new Advertikon\Exception( sprintf( 'The order total amount: %s, minimum permitted total amount: %s' , $this->currency->format( $total , $this->config->get( 'config_currency' ) , 1 ) , $this->currency->format( $this->getConfigValue( 'total_min' ) , $this->config->get( 'config_currency' ) , 1 )  ) );
			}

			/*
				Max total amount
			*/
			if( $this->getConfigValue( 'total_max' ) && $total > $this->getConfigValue( 'total_max' ) ) {
				throw new Advertikon\Exception( sprintf( 'The order total amount: %s, maximum permitted total amount: %s' , $this->currency->format( $total , $this->config->get( 'config_currency' ) , 1 ) , $this->currency->format( $this->getConfigValue( 'total_max' ) , $this->config->get( 'config_currency' ) , 1 )  ) );
			}

			//Allowed Geo Zones
			$stripeGeoZones = $this->getConfigValue( 'geo_zone' );
			if( $this->isEmpty( $stripeGeoZones ) ) {
				throw new Advertikon\Exception( 'Sould be selected at least one Stripe geozone' );
			}
			if( $stripeGeoZones[ 0 ] != 0 ) {
				$geoZones = Advertikon\Advertikon::getExtendedModel( 'localisation_zone' )->getGeoZonesIdByZoneId( $address[ 'zone_id' ] );
				if( $this->isEmpty( array_intersect( $geoZones , $this->getConfigValue( 'geo_zone' ) ) ) ) {
					throw new Advertikon\Exception( 'Forbidden payment geozone' );
				}
			}
		}
		catch( Advertikon\Exception $e ) {
			$this->log( sprintf( 'Stripe Gateway disabled. Reason: "%s"' , $e->getMessage() ) ); 
			return false;
		}

		return array(
				'code'			=> $this->getModuleCode(),
				'title'			=> $this->getConfigValue( 'title' ),
				'sort_order'	=> $this->getConfigValue( 'sort_order' ),
				'terms'			=> '',
			);
	}

	public function recurringPayments() {

		return false;
    }

    /********************************* Protected Methods *************************************************/
}
?>