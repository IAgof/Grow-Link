<?php

namespace Advertikon;

class Autoloader {

	/**
	* Constructor
	*/
	public function __construct() {
		spl_autoload_register( array( $this , 'adkCommonAutoloader' , ) , true , true );
	}
	/**
	* Extends autoload functionality
	* Emplements PCR-4, namespace prefexes mapping
	* 
	* @author Advertikon
	* @package Advertikon
	*
	* @param string $className
	* @return boolean
	*/
	public function adkCommonAutoloader( $className ){
		if( is_file( $file = $this->adkNamespaceLoader( $className ) ) ) {
			require_once $file;
			return true;
		}
		return false;
	}

	/**
	* Namespace map loader
	*
	* @param string $class
	* @return string|null
	*/
	public function adkNamespaceLoader( $class ) {
		foreach( $this->_adkNamespacesMap as $namespace => $path ) {
			if( 0 === strncmp( $class , $namespace , strlen( $namespace ) ) ) {
				$file = DIR_SYSTEM . '/library/' . $path . '/' . substr( $class , strlen( $namespace ) ) . '.php';
				return str_replace( array( '//' , '/' , '\\' , '\\\\' , ) , DIRECTORY_SEPARATOR , $file );
			}
		}
	}

	/**
	* Map of namespace prefixes
	*
	* @var Array $_adkNamespacesMap Map between namespace and path to class file
	*/
	protected $_adkNamespacesMap = array(
		'Advertikon\\'	=> 'advertikon',
		'Stripe\\'		=> 'stripe/stripe-php/lib',
	);
}