<?php
/**
* Page Content
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Page;

use Advertikon\Page\Content\Record;

class Content implements \IteratorAggregate{

	//protected $_status = true;

	/**
	* Records collecton
	*
	* @var array
	*/
	protected $_records = array();

	/**
	* Content header
	*
	* @var string
	*/
	protected $_header;

	/**
	* Array access offset
	*
	* @var integer
	*/
	protected $_position = 0;

	/**
	* Records trpe
	*
	* @var integer
	*/
	protected $_recordsType;

	/*public function setStatus( $status ) {
		if( $this->_status ) {
			$this->_status = (bool)$status;
		}
	}*/

	/*public function getStatus() {
		return $this->_status;
	}*/

	/**
	* Set content header
	*
	* @param string $header
	* @return this
	*/
	public function setHeader( $header ){
		if( is_string( $header ) ) {
			$this->_header = $header;
		}
		return $this;
	}

	/**
	* Get content header
	*
	* @return string
	*/
	public function getHeader(){
		if( $this->_header ) {
			return $this->_header;
		}
		return '';
	}

	/**
	* Get records count
	*
	* @return integer
	*/
	public function recordCount(){
		return count( $this->_records );
	}

	/**
	* Add new record
	*
	* @return this
	*/
	public function addRecord( $record ){
		if( ! $record instanceof Content\Record ) {
			return;
		}
		$this->_records[] = $record;
		return $this;
	}

	/**
	* Check whether records contain infornation data
	*
	* @return boolean
	*/
	public function isTypeInfo(){
		return $this->_getRecordsType() == Record::INFO;
	}

	/**
	* Check whether records contain warning data
	*
	* @return boolean
	*/
	public function isTypeWarning(){
		return $this->_getRecordsType() == Record::WARNING;
	}

	/**
	* Check whether records contain attention data
	*
	* @return boolean
	*/
	public function isTypeAttention(){
		return $this->_getRecordsType() == Record::ATTENTION;
	}

	/**
	* Check whether records contain success data
	*
	* @return boolean
	*/
	public function isTypeSuccess(){
		return $this->_getRecordsType() == Record::SUCCESS;
	}

	/**
	* Get agregated records type
	*
	* @return integer
	*/
	protected function _getRecordsType() {
		if( is_null( $this->_recordsType ) ) {
				foreach( $this->_records as $record ) {
				$this->_recordsType |= $record->getType();
			}
		}
		return $this->_recordsType;
	}

	/* Iterator */

	public function getIterator() {
        return new \ArrayIterator( $this->_records );
    }

	/*function rewind() {
		$this->_position = 0;
	}

	function current() {
		return $this->_records[ $this->_position ];
	}

	function key() {
		return $this->_position;
	}

	function next() {
		++$this->_position;
	}

	function valid() {
		return isset( $this->_records[ $this->_position ] );
	}*/
}

?>