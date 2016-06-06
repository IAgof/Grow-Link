<?php
/**
* Advertikon Resource
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon;

abstract class Resource extends \Model{

	protected $_tableName;
	protected $_fieldName = 'id';
	protected $_data = array();
	protected $_columns = array();

	/**
	* Get/set resource values
	*
	* @param string $key
	* @param Array $arguments
	* @return mixed|Advertikon_Model
	*/
	public function __call( $key , $arguments ) {
		$operation  = substr( $key , 0 , 3 );
		switch( $operation ) {
			case 'set' :
				$name = Advertikon::underscore( substr( $key , 3 ) );
				$this->_data[ $name ] = isset( $arguments[ 0 ] ) ? $arguments[ 0 ] : null;
				return $this;
			break;
			case 'get' :
				$name = Advertikon::underscore( substr( $key , 3 ) );
				return isset( $this->_data[ $name ] ) ? $this->_data[ $name ] : null;
			break;
			case 'uns' :
				$name = Advertikon::underscore( substr( $key , 3 ) );
				if( isset( $this->_data[ $name ] ) ) {
					unset( $this->_data[ $name ] );
				}
				return $this;
			break;
		}
	}

	/**
	* Load data from DB
	*
	* @param string $value
	*/
	public function load( $value , $fieldName = null ){
		$fieldName = $fieldName ? $this->db->escape( $fieldName ) : $this->_fieldName;
		$query = $this->db->query( "SELECT * FROM " . DB_PREFIX . $this->_tableName . " WHERE `" . $fieldName . "` = '" . $this->db->escape( $value ) . "'" );
		if( $query->num_rows ) {
			$this->_data = $query->row;
		}
	}

	/**
	* Save data to DB
	*/
	public function save() {
		$tableFields = $this->_getFields();
		$names = array();
		$values = array();
		foreach( $this->_data as $key => $val ) {
			if( ! in_array( $key , $tableFields ) ) {
				continue;
			}
			$names[] = '`' . $key . '`';
			$values[] = "'" . $this->db->escape( $val ) . "'";
		}
		if( ! empty( $names ) && ! empty( $this->_data[ $this->_fieldName ] ) ) {
			$id = $this->db->escape( $this->_data[ $this->_fieldName ] );
			$str = sprintf( "INSERT INTO " . DB_PREFIX . $this->_tableName . " (%s) VALUES(%s)" , implode( ', ' , $names ) , implode( ', ' , $values ) );
			$this->db->query( "DELETE FROM " . DB_PREFIX . $this->_tableName . " WHERE `" . $this->_fieldName . "` = '$id'" );
			$query = $this->db->query( $str );
			if( $this->db->countAffected() > 0 ) {
				return true;
			}
		}
		return false;
	}

	/**
	* Get fields name from table
	*
	* @return array
	*/
	/*
		TODO: For compatibility with DB other than MySQL need to implement predefined list of table colunms
	*/
	protected function _getFields(){

		if( ! $this->_columns ) {
			$query = $this->db->query( "SHOW COLUMNS FROM " . DB_PREFIX . $this->_tableName );
			if( $query->num_rows ) {
				foreach( $query->rows as $row ) {
					$this->_columns[] = $row[ 'Field' ];
				}
			}
		}
		return $this->_columns;
	}

	/**
	* Get dubug data
	*
	* @return Array
	*/
	public function debug(){
		return $this->_data;
	}
}