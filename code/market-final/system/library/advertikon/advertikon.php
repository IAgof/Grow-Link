<?php
/**
* Advertikon Class
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon;

class Advertikon{

	protected static $_underscoreCash = array();
	protected static $_camelizeCash = array();

	protected static $_registry;
	protected static $_model;

	/**
	* @var string $_adminFolder Admin folder name
	*/
	static protected $_adminFolder = null;

	/**
	* @var string $_catalogFolder Catalog folder name
	*/
	static protected $_catalogFolder = null;

	/**
	* @var string $_baseFolder Base folder name
	*/
	static protected $_baseFolder = null;

	/**
	* @var Array $_incudedFIles Array of included language files 
	*/
	static protected $_includedFiles = array();

	/**
	* Init Class
	*
	* @param Object $registry
	*/
	public static function init( $registry  , $model ){
		if( ! self::$_registry ) {
			self::$_registry = $registry;
		}
		if( ! self::$_model ) {
			self::$_model = $model;
		}
	}

	/**
	* Get the current extenson's model
	*
	* @return Object
	*/
	public static function getCurrentModel(){
		return self::$_model;
	}

	/**
	* Convert string from camelCase to underscore_notation
	*
	* @param string $name
	* @return string
	*/
	public static function underscore( $name ) {
		if( ! in_array( $name , self::$_underscoreCash ) ) {
			self::$_underscoreCash[ $name ] = strtolower( preg_replace( '#(.)([A-Z])#', '$1_$2', $name ) );
		}
		return self::$_underscoreCash[ $name ];
	}

	/**
	* Camelize name
	*
	* @param string $name
	* @return srtring
	*/
	public static function camelize( $name ){
		if( ! in_array( $name , self::$_camelizeCash ) ) {
			$names = explode( '_' , $name );
			$cName = '';
			foreach( $names as $part ){
				$cName .= ucfirst( $part );
			}
			self::$_camelizeCash[ $name ] = lcfirst( $cName );
		}
		return self::$_camelizeCash[ $name ];
	}

	/**
	* Ucfirst namespaced class name parts
	*
	* @param string $name
	* @return string
	*/
	public static function ucFirstNamespace( $name ) {
		$parts = explode( '\\' , $name );
		array_walk( $parts , array( self::getCurrentModel() , 'ucfirst' ) );
		return implode( '\\' , $parts ); 
	}

	/**
	* Get OpenCart model instance
	* Difference with OC method - it's returns model instance
	*
	* @param string $model
	* @param boolean $singleton
	* @return Object
	*/
	public static function getModel( $model , $singleton = true ){

		$cashedName = 'model_' . str_replace('/', '_', $model);
		if( ! $singleton || ! self::$_registry->has( $cashedName ) ) {
		
			$file = DIR_APPLICATION . 'model/' . $model . '.php';
			$class = 'Model' . preg_replace('/[^a-zA-Z0-9]/', '', $model);

			if ( file_exists( $file ) ) {
				include_once( modification( $file ) );
				self::$_registry->set( $cashedName, new $class( self::$_registry ) );
			}
			else {
				trigger_error( 'Error: Could not load model ' . $file . '!' );
				exit();
			}
		}
		return self::$_registry->get( $cashedName );
	}

	/**
	* Get class instance from Adverikon library
	*
	* @param string $name
	* @param boolean $singleton
	* @return Object
	*/
	public static function getAdk( $name , $singleton = true ){
		return self::getSingletone( $name );
	}

	/**
	* Get singletone instance from Adverikon library
	*
	* @param string $name
	* @param boolean $singleton
	* @return Object
	*/
	public static function getSingletone( $name ){

		$cashedName = str_replace( array( '/' , '//' , '\\' , '\\\\' , ) , '_' , strtolower( $name ) );

		if( ! self::$_registry->has( $cashedName ) ) { 
			self::$_registry->set( $cashedName, new $name( self::$_registry ) );
		}
		return self::$_registry->get( $cashedName );
	}

	/**
	* Get Extendent models
	*
	* @return Oject
	*/
	public static function getExtendedModel( $name , $singletone = true ) {

		//if parent class (OpenCart class) does not loaded
		if( ! class_exists( 'Model' . ucfirst( self::camelize( $name ) ) , false ) ) {

			$parts = explode( '_' , $name );
			$fileName = 'model/'. array_shift( $parts ) . '/' . implode( '_' , $parts ) . '.php';

			$file = DIR_APPLICATION . $fileName;
			if( is_file( $file ) ) {
				include_once( modification( $file ) );
			}
			else {
				$file = self::getAnotherSide() . $fileName;
				if( is_file( $file ) ) {
					require_once( modification( $file ) );
				}
				else {
					self::getCurrentModel()->logException( sprintf( '%s: Can not load model file "%s"' , __METHOD__ ,  $file ) );
				}
			}
		}

		$className = 'Advertikon\\' . self::ucFirstNamespace( str_replace( '_' , '\\' , $name ) );
		if( $singletone ) {
			return self::getSingletone( $className );
		}
		return new $className( self::_registry );
	}

	/**
	* Get XML config file
	*
	* @return Object Advertikon_Xml_Config
	*/
	public static function getXmlConfig(){
		return  Xml\Config::getXmlConfig();
	}

	/**
	* Get source instance
	*
	* @param string $sourceName
	* @return Object istance of Advertikon_Source_Source
	*/
	public static function getSource( $sourceName ){
		$parts = explode( '/' , $sourceName );
		//if source in Advertikon library
		if( count( $parts ) === 1 ) {
			$name = 'source\\' . $sourceName;
		}
		//if source in extension library
		else {
			$name = 'source\\' . array_pop( $parts );
			$name = implode( '\\' , $parts ) . '\\' . $name;
		}
		$className = 'Advertikon\\' . self::ucFirstNamespace( str_replace( '_' , '\\' , $name ) );
		return new $className( self::$_registry );
	}

	/**
	* Get resource instance
	*
	* @param string $resourceName
	* @return Object istance of Advertikon_Resource
	*/
	public static function getResource( $resourceName ){
		$parts = explode( '/' , $resourceName );
		//if resource in Advertikon library
		if( count( $parts ) === 1 ) {
			$name = 'resource_' . $resourceName;
		}
		//if resource in extension library
		else {
			$name = 'resource_' . array_pop( $parts );
			$name = implode( '_' , $parts ) . '_' . $name;
		}
		$className = 'Advertikon\\' . self::ucFirstNamespace( str_replace( '_' , '\\' , $name ) );
		return new $className( self::$_registry );
	}

	/**
	* Load language files for Library and specific model
	*
	* @param string $dir Required language file name
	*/
	public static function loadLanguage( $file ){

		if( in_array( $file , self::$_includedFiles ) ) {
			return;
		}
		self::$_includedFiles[] = $file;

		$langDir = substr( $file , strlen( DIR_LANGUAGE ) );
		$langDir = strstr( $langDir , '/' , true );
		$model = self::getCurrentModel();

		//if model does not initiated yet
		if( ! $model ) {
			return;
		}

		$folders = array();
		$folders[] = $commonFileDir = strtolower( $model->getLibBaseDir() . '/language/' . $langDir );
		$folders[] = $moduleFileDir = strtolower( $model->getLibBaseDir() . '/' . $model->getModuleName() . '/language/' . $langDir );

		foreach( $folders as $folder ) {
			if( ! is_dir( $folder ) || ! is_readable( $folder ) ){
				$model->log( sprintf( 'Folder "%s" is not exists or not readable' , $folder ) , Log::ERR );
				continue;
			}
			$files = glob( $folder . '/*.php' );
			if( count( $files ) === 0 ) {
				$model->log( sprintf( 'Folder %s does not contain any language files' , $folder ) );
				continue;
			}
			foreach( $files as $file ) {
				if( ! is_file( $file ) || ! is_readable( $file ) ){
					$model->log( sprintf( 'Language file %s does not exists or is nor readable' , $file ) );
					continue;
				}
				require_once( $file );
			}
		}
	}

	/**
	* Resolve Admin and Catalog folder names
	* Usefull when user changed admin folder name
	*
	* @throws Advertikon\Exception When can't resolve folders
	*/
	public static function resolveCatalogAdminPath(){
		$folders = array( 'controller' , 'language' , 'model' , 'view' , );
		$base = dirname( DIR_SYSTEM ) . '/';
		$admin = null;
		$catalog = null;

		foreach( scandir( $base ) as $item ) {
			if( $admin && $catalog ) {
				break;
			}
			if( $item !== '.' && $item !== '..' && is_dir( $base . '/' . $item ) ) {
				$contents = scandir( $base . '/' . $item );
				if( count( array_intersect( $folders , $contents ) ) == 4 ) {
					if( in_array( 'config.php' , $contents ) ) {
						$admin = $base . '/' . $item . '/';
					}
					else {
						$catalog = $base . '/' . $item . '/';
					}
				}
			}
		}
		if( ! $admin || ! $catalog ) {
			self::getCurrentModel()->logException( sprintf( '%s: Can not resolve folders structure' , __METHOD__ ) );
		}
		self::$_adminFolder = $admin;
		self::$_catalogFolder = $catalog;
		self::$_baseFolder = $base;
	}

	/**
	* Get Base folder
	*
	* @return string
	*/
	static public function getBaseFolder(){
		if( ! self::$_baseFolder ) {
			self::resolveCatalogAdminPath();
		}
		return self::$_baseFolder;
	}

	/**
	* Get Admin folder
	*
	* @return string
	*/
	static public function getAdminFolder(){
		if( ! self::$_adminFolder ) {
			self::resolveCatalogAdminPath();
		}
		return self::$_adminFolder;
	}

	/**
	* Get Catalog folder
	*
	* @return string
	*/
	static public function getCatalogFolder(){
		if( ! self::$_catalogFolder ) {
			self::resolveCatalogAdminPath();
		}
		return self::$_catalogFolder;
	}

	/**
	* Toggle between Admin and Catalog folders
	*
	* @return string
	*/
	static public function getAnotherSide(){
		if( self::isAdmin() ) {
			return self::getCatalogFolder();
		}
		return self::getAdminFolder();
	}

	/**
	* Checks whether we in Admin area
	*
	* @return boolean
	*/
	static public function isAdmin(){
		return DIR_APPLICATION == self::getAdminFolder();
	}
}
