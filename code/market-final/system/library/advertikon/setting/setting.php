<?php
/**
* Advertikon Extended Setting Model
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Setting;

use \Advertikon\Advertikon;

class Setting extends \ModelSettingSetting {

	protected $_systemVars;

	public function getSetting( $store_id = 0 , $code = null ) {
		if( ! $code ) {
			$code = $this->_getModel()->getConfigPrefix();
			$codeSystem = $this->_getModel()->getSystemConfigPrefix();
			$settings = array_merge( parent::getSetting( $code , $store_id ) , parent::getSetting( $codeSystem , $store_id ) );
		}
		else {
			$settings =  parent::getSetting( $code , $store_id );
		}
		return $this->_getModel()->stripPrefix( $settings );
	}

	public function editSetting( $data, $store_id = 0 , $code = null ) {

		$newData = array();

		foreach( $data as $key => $value ) {
			$prefix = $code ? $code : $this->_getModel()->choosePrefix( $key );

			if( ! isset( $newData[ $prefix ] ) ) {
				$newData[ $prefix ] = array();
			}

			$newData[ $prefix ][ $prefix . $key ] = $value;
		}
		//echo '<pre>'; var_dump( $newData ); echo '</pre>';die; 
		//to have ability to store config values with different prefixes
		foreach( $newData as $code => $data ) {
			parent::editSetting( $code , $data , $store_id );
		}
		return $this;
	}

	public function deleteSetting( $store_id = 0 , $code = null ) {
		if( ! $code ) {
			$code = $this->_getModel()->getConfigPrefix();
			$codeSystem = $this->_getModel()->getSystemConfigPrefix();
			parent::deleteSetting( $code , $store_id );
			parent::deleteSetting( $codeSystem , $store_id );
		}
		else {
			parent::deleteSetting( $code , $store_id );
		}
		return $this;
	}

	public function editSettingValue( $key = '', $value = '', $store_id = 0 , $code = null ) {
		$code = $code ? $code : $this->_getModel()->choosePrefix( $key );
		parent::editSettingValue( $code , $key , $value , $store_id );
		return $this;
	}

	/**
	* Edit single config value
	*
	* @param string $key
	* @param mixed $value
	* @param numeric $store_id
	* @param string $code
	* @return $this
	*/
	public function setSettingValue( $key , $value , $store_id = 0 , $code = null ) {
		$code = $code ? $code : $this->_getModel()->choosePrefix( $key );
		if( ! is_scalar( $value ) ) {
			$value = serialize( $value );
			$serialized = 1;
		}
		else {
			$serialized = 0;
		}
		$key = $code . $key;

		$this->db->query("DELETE FROM " . DB_PREFIX . "setting WHERE store_id = '" . (int)$store_id . "' AND `code` = '" . $this->db->escape($code) . "' AND `key` = '" . $this->db->escape( $key ) . "'" );

		$this->db->query( "INSERT INTO " . DB_PREFIX . "setting SET `value` = '" . $this->db->escape($value) . "', `serialized` = '$serialized' , `code` = '" . $this->db->escape($code) . "' , `store_id` = '" . (int)$store_id . "' , `key` = '" . $this->db->escape( $key ) . "'" );

		return $this;
	}

	/**
	* Get Advertikon_Model instance
	*
	* @return Object
	*/
	private function _getModel(){
		return Advertikon::getCurrentModel();
	}
}
