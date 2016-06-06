<?php
/**
* Page Content Record
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Page\Content;

class Record{

	/**
	* Types constants
	*
	* @var iteger
	*/
	const WARNING 		= 8;
	const ATTENTION 	= 4;
	const INFO 			= 2;
	const SUCCESS 		= 1;
	const UNDEFINED 	= 0;

	/**
	* Records
	*
	* @var Array
	*/
	protected $_data = array();

	/**
	* Mark record as info
	*/
	public function setTypeInfo(){
		$this->_data[ 'type' ] = self::INFO;
	}

	/**
	* Mark record as warning
	*/
	public function setTypeWarning(){
		$this->_data[ 'type' ] = self::WARNING;
	}

	/**
	* Mark record as attention
	*/
	public function setTypeAttention(){
		$this->_data[ 'type' ] = self::ATTENTION;
	}

	/**
	* Mark record as siccess
	*/
	public function setTypeSuccess(){
		$this->_data[ 'type' ] = self::SUCCESS;
	}

	/**
	* Get type or record
	*
	* @return integer
	*/
	public function getType(){
		if( isset( $this->_data[ 'type' ] ) ) {
			return $this->_data[ 'type' ];
		}
		return self::UNDEFINED;
	}

	/**
	* Add new record
	*
	* @param string $text
	* @return self
	*/
	public function setRecord( $text ) {
		$this->_data[ 'text' ] = $text;
		return $this;
	}

	/**
	* Get record content
	*
	* @return string
	*/
	public function getRecord(){
		return isset( $this->_data[ 'text'] ) ? $this->_data[ 'text'] : '';
	}

	/**
	* Check whether record contain infornation data
	*
	* @return boolean
	*/
	public function isTypeInfo(){
		return $this->_data[ 'type' ] == self::INFO;
	}

	/**
	* Check whether record contain warning data
	*
	* @return boolean
	*/
	public function isTypeWarning(){
		return $this->_data[ 'type' ] == self::WARNING;
	}

	/**
	* Check whether record contain attention data
	*
	* @return boolean
	*/
	public function isTypeAttention(){
		return $this->_data[ 'type' ] == self::ATTENTION;
	}

	/**
	* Check whether record contain success data
	*
	* @return boolean
	*/
	public function isTypeSuccess(){
		return $this->_data[ 'type' ] == self::SUCCESS;
	}

	/* Iterator */

	/*public function getIterator() {
        return new \ArrayIterator( $this->_data );
    }*/
}

?>