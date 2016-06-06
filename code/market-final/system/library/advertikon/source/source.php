<?php
/**
* Advertikon Source Model
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Source;

use \Advertikon\Advertikon;

abstract class Source implements \IteratorAggregate, \ArrayAccess{

	protected $_source = array();

	/*
		IteratorAggregate interface
	*/
	public function getIterator() {
		return new \ArrayIterator( $this->_source );
	}

	/*
		ArrayAccess interface
	*/
	public function offsetSet( $offset, $value ) {
		if ( is_null( $offset ) ) {
			$this->_source[] = $value;
		}
		else {
			$this->_source[ $offset ] = $value;
		}
	}

	public function offsetExists( $offset ) {
		return isset( $this->_source[ $offset ] );
	}

	public function offsetUnset( $offset ) {
		unset( $this->_source[ $offset ] );
	}

	public function offsetGet( $offset ) {
		return isset( $this->_source[ $offset ] ) ? $this->_source[ $offset ] : null;
	}

	/**
	* Translator
	*
	* @param string $text
	* @return string
	*/
	protected function __() {
		$args = func_get_args();
		$model = Advertikon::getCurrentModel();
		return call_user_func_array( array( $model , '__' ), $args );
	}

	/**
	* Make option with value == $value selected
	*
	* @param mixed $value
	*/
	public function select( $value ) {
		$this->_makeActive( $value , 'selected' );
		return $this;
	}

	/**
	* Make options with value == $value selected
	*
	* @param mixed $value
	*/
	public function multiselect( $value ) {
		$this->_makeActive( (array)$value , 'selected' );
		return $this;
	}

	/**
	* Set corresponding active attribute
	*
	* @param mixed $value
	* @param string $type
	*/
	protected function _makeActive( $value , $type ){

		$value = (array)$value;

		for( $i = 0 , $len = count( $this->_source ) ; $i < $len ; ++$i ) {
			if( in_array( $this->_source[ $i ][ 'value' ] , $value ) ) {
				$this->_source[ $i ][ 'active' ] = ' ' . $type . ' ';
			}
		}
	}

	protected function _addOption( $data ){
		$option = array( 'active' => '' , );
		$this->_source[] = array_merge( $option , $data );
		return $this;
	}
}
?>
