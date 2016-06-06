<?php
/**
* Advertikon Extended Order Model
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Checkout;

use Advertikon\Advertikon;
use Sdvertikon\Exception\InvalidArgument;

class Order extends \ModelCheckoutOrder {
	
	/**
	* Add additional data
	*
	* @param integet $order_id
	* @param string $name
	* @param mixed $value
	* @param string $fieldName
	* @throws Exception
	*/
	public function addAdditionalData( $order_id , $name , $value , $fieldName = '' ) {
		if( ! is_string( $name ) ) {
			Advertikon::getCurrentModel()->logException( sprintf( '%s : data name must be a string' , __METHOD__ ) );
		}
		$data = $this->getAdditionalData( $order_id , $fieldName );
		$data->{$name} = $value;
		$fieldName = $this->db->escape( ( $fieldName ? $fieldName . '_' : '' ) . 'custom_field' );
		$this->db->query( "UPDATE `" . DB_PREFIX . "order` SET `$fieldName` = '" . $this->serializeData( $data ) . "' WHERE `order_id` = '" . (int)$order_id . "'" );
	}

	/**
	* Set additional data
	*
	* @param integet $order_id
	* @param string $name
	* @param mixed $value
	* @param string $fieldName
	* @throws Exception
	*/
	public function setAdditionalData( $order_id , $name , $value , $fieldName = '' ) {
		if( ! is_string( $name ) ) {
			Advertikon::getCurrentModel()->logException( sprintf( '%s : data name must be a string' , __METHOD__ ) );
		}
		$data = new \stdClass;
		$data->{$name} = $value;
		$fieldName = $this->db->escape( ( $fieldName ? $fieldName . '_' : '' ) . 'custom_field' );
		$this->db->query( "UPDATE `" . DB_PREFIX . "order` SET `$fieldName` = '" . $this->serializeData( $data ) . "' WHERE `order_id` = '" . (int)$order_id . "'" );
	}

	/**
	* Get custom data
	*
	* @param integer $order_id
	* @param string $fieldName
	* @return stdClass
	* @throws Exception
	*/
	public function getAdditionalData( $order_id , $fieldName = '' ) {

		$fieldName = $this->db->escape( ( $fieldName ? $fieldName . '_' : '' ) . 'custom_field' );
		$request = $this->db->query( "SELECT `$fieldName` as `data` FROM `" . DB_PREFIX . "order` WHERE `order_id` = '" . (int)$order_id . "'" );

		$object = null;
		if( $request->num_rows ) {
			$object = $this->unserializeData( $request->row[ 'data' ] );
			if( ! is_object( $object ) ) {
				$object = null;
			}
		}
		//initial field value id 0
		return $object ?: new \stdClass;
	}

	/**
	* Get order total
	*
	* @param integer $orderId
	* @return numeric|boolean
	*/
	public function getTotal( $orderId ) {
		$query = $this->db->query( "SELECT `total` FROM " . DB_PREFIX . "order WHERE order_id = '" . (int)$orderId . "'" );
		if( $query->num_rows ) {
			return $query->row[ 'total' ];
		}
		return false;
	}

	/**
	* Convert object|array to string
	* Need to choose between serialize and json_encode since OC 2.1.0.1
	*
	* @return string
	*/
	public function serializeData( $obj ){
		if( is_scalar( $obj ) ) {
			return (string)$obj;
		}
		if( version_compare( VERSION , '2.1.0.1' , '>=' ) ) {
			return json_encode( $obj );
		}
		return serialize( $obj );
	}

	/**
	* Unserialize data depend on serialze method
	*
	* @return mixed
	* @throws Advertikon\Exception\InvalidArgument On invalid arguments
	*/
	public function unserializeData( $str ) {
		if( ! is_string( $str ) ) {
			throw new InvalidArgument( sprintf( '%s: Argument must be a string' ) );
		}
		$data = @unserialize( $str );
		if( $data === false && $str !== serialize( false ) ) {
			$data = Advertikon::getCurrentModel()->jsonDecode( $str );
		}
		return $data;
	}
}
