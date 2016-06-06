<?php
/**
* Advertikon XML Element
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Xml;

use \Advertikon\Advertikon;
use \Advertikon\Log;

class Element extends \SimpleXmlIterator{

	/**
	* Log XML parce error
	*
	* @param Object LibXMLError $error
	* @param String $xml
	*/
	protected static function logXmlError( $error , $xmlStr ) {

		$xml = explode( PHP_EOL , $xmlStr );
		$return = 'XML parce Error:' . Log::EOL;
		$return .= $xml[ $error->line - 1 ] . Log::EOL;
		$return .= str_repeat( ' ' , $error->column - 1 ) . '^' . Log::EOL;

		switch ( $error->level ) {
			case LIBXML_ERR_WARNING:
				$return .= "Warning $error->code: ";
			break;
			case LIBXML_ERR_ERROR:
				$return .= "Error $error->code: ";
			break;
			case LIBXML_ERR_FATAL:
				$return .= "Fatal Error $error->code: ";
			break;
		}

		$return .= trim( $error->message ) .
		Log::EOL . "Line: $error->line" .
		Log::EOL . "Column: $error->column";

		if ( $error->file ) {
			$return .= Log::EOL . "File: $error->file";
		}
		Advertikon::getCurrentModel()->log( $return );
	}

	/**
	* Parcw XML string
	*
	* @param string $xmlStr
	* @return Object|null
	*/
	protected static function _parce( $xmlStr ){

		$prevUseErrors = libxml_use_internal_errors( true );
		libxml_clear_errors();

		try {
			$xml = new static( $xmlStr );
		}
		catch( Exception $e ) {
			$errors = libxml_get_errors();
			if( ! empty( $errors ) ) {
				foreach ( $errors as $error ) {
					self::logXmlError( $error , $xmlStr );
				}
    		}
    		libxml_clear_errors();
    		return null;
		}
		libxml_use_internal_errors( $prevUseErrors );
		return $xml;
	}

	public static function parce( $xmlStr = null ){
 
		$xmlStr = $xmlStr ? $xmlStr : '<config></config>';

		$xmlConfig = self::_parce( $xmlStr ); 

		if( $xmlConfig instanceof \SimpleXMLElement ) {
			return $xmlConfig;
		}
		
		return new static( '<config></config>' );
	}

	/**
	* Merge current config with other xml config
	*
	* @param Object instance of SimpleXMLIterator $xml
	*/
	public function mergeWith( $xml ){
		$this->_mergeWith( $this , $xml );
		return $this;
	}

	/**
	* Get value from config
	*
	* @param string $path
	* @return string
	*/
	public function getValue( $path ) {
		$parts = explode( '/' , $path );
		$name = array_pop( $parts );
		if( ! $name ) {
			return null;
		}
		$node = $this->getNode( implode( '/' , $parts ) );
		return $node ? (string)$node->{$name} : null;
	}

	/**
	* Get leafs for specific node
	*
	* @param string $path
	* @return string
	*/
	public function getValues( $path ) {
		$values = array();
		$node = $this->getNode( $path );

		if( ! $node ) {
			return $values;
		}

		foreach( $node->children() as $key => $value ) {
			if( $value->isEmptyNode() ) {
				$values[ $key ] = (string)$value;
			}
		}
		return $values;
	}

	/**
	* Get node in config tree
	*
	* @param string $path
	* @return Object
	*/
	public function getNode( $path = null ) {
		$node = $this;
		$path = trim( $path , '/' );
		if( ! $path ) {
			return $node;
		}
		$parts = explode( '/' , $path );
		foreach( $parts as $part ) {
			if( ! $part ) {
				return null;
			}
			if( ! $node->{$part}->isEmptyNode() ) {
				$node = $node->{$part};
			}
			else {
				return null;
			}
		}
		return $node;
	}

	/**
	* Overwrite one config by another
	* Overwrite $xml by $with
	*
	* @param Object istance of SimpleXMLIterator $xml
	* @param Object istance of SimpleXMLIterator $with
	*/
	protected function _mergeWith( $xml , $with ){

		if( ! $xml instanceof \SimpleXMLIterator ) {
			Advertikon::getCurrentModel()->log( sprintf( 'XML config "%s" must be instance of "SimpleXMLIterator"' , get_class( $xml ) ) , Log::ERR );
			return;
		}

		if( ! $with instanceof \SimpleXMLIterator ) {
			Advertikon::getCurrentModel()->log( sprintf( 'Merging XML config "%s" must be instance of "SimpleXMLIterator"' , get_class( $with ) ) , Log::ERR );
			return;
		}

		for( $xml->rewind() , $with->rewind(); $xml->valid() , $with->valid(); $with->next() ) {

			$curKey = $with->key();

			//we do not have this child
			if( $xml->{$curKey}->isEmptyNode() ) {
				//current child is a leaf
				if( $with->current()->isLeaf() ) {
					$xml->addChild( $curKey , (string)$with->current() );
				}
				//current child is a node
				else {
					$xml->addChild( $curKey );
					$this->_mergeWith( $xml->{$curKey} , $with->current() );
				}
			}
			//we have this child already
			else {
				//leaf
				if( $with->current()->isLeaf() ) {
					$xml->{$curKey} = (string)$with->current();
				}
				//node
				else {
					$this->_mergeWith( $xml->{$curKey} , $with->current() );
				}
			}
		}
		return;
	}

	/**
	* Defines whether current node is empty node
	*
	* @return boolean
	*/
	public function isEmptyNode(){
		return $this->count() === 0;
	}

	/**
	* Determine whether current node is leaf
	*
	* @return boolean
	*/
	public function isLeaf(){
		//has more then oe child
		if( $this->count() > 1 ) {
			return false;
		}
		//is empty
		if( $this->isEmptyNode() ) {
			return true;
		}
		//has empty child
		$child = $this->children();
		return $child->count() === 0;
	}
}
?>
