<?php
/**
* Advertikon XML Config
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon\Xml;

use \Advertikon\Advertikon;

class Config extends Element{

	/**
	* Get main XML config file
	*
	* @return Object Advertikon_Xml_Config
	*/
	public static function getXmlConfigMain(){

		$file = Advertikon::getCurrentModel()->getLibBaseDir() . '/etc/config.xml'; 
		$xmlStr = '<config></config>';

		if( is_file( $file ) ) {
			$xmlStr = file_get_contents( $file ); 
		}

		return self::parce( $xmlStr ); 

		/*if( $xmlConfig instanceof \SimpleXMLElement ) {
			return $xmlConfig;
		}
		return new self( '<config></config>' );*/ 
	}

	/**
	* Get config for all extensions
	*
	* @return Object Advertikon_Xml_Config
	*/
	public static function getXmlConfig(){

		$config = self::getXmlConfigMain();
		return $config->merge(); 
	}

	/**
	* Merge current config with string
	*
	* @param string $xmlStr
	* @return Object
	*/
	public function merge( $xmlStr = null ){

		if( ! $xmlStr ) {
			$this->_mergeXmlConfgs();
		}
		else {
			$this->mergeWith( self::parce( $xmlStr ) );
		}
		return $this;
	}

	/**
	* Merge default library config with all extensions configs
	*/
	protected function _mergeXmlConfgs(){
		$etcXmlFiles = $this->_getAllEctXml();
		foreach( $etcXmlFiles as $file ) {
			$xmlStr = file_get_contents( $file );
			$xml = self::parce( $xmlStr ); 
			$this->mergeWith( $xml );
		}
	}

	/**
	* Return XML config files for all extensins
	*
	* @return Array
	*/
	protected function _getAllEctXml(){
		$files = glob( Advertikon::getCurrentModel()->getLibBaseDir() . '/*/etc/config.xml' );
		foreach( $files as $key => $file ) {
			if( ! is_file( $file ) ) {
				unset( $files[ $key ] );
			}
		}
		return $files;
	}
}
?>
