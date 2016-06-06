<?php
/**
* Advertikon Model
* Extends OpenCart Model functionality
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon;

abstract class Model extends \Model{

	public function __construct( $registry ) {
		parent::__construct( $registry );
		if( ! class_exists( 'Advertikon\Autoloader' , false ) ) {
			new Autoloader;
		}
		Advertikon::init( $registry , $this );
	}

	/**
	* Current module version
	*
	* @var integer
	*/
	protected $_moduleVersion = null;

	/**
	* Settigs Model instance
	*
	* @var Advertikon_Settings_Settings
	*/
	protected $_settingsInstance;

	/**
	* Cache prefix for the ectension data
	*
	* @var string
	*/
	const CACHE_PREFIX = 'advertikon_';

	/**
	* Characters
	*
	* @var string
	*/
	const CHAR_NUMERIC	= '0123456789';
	const CHAR_ALPHA	= 'QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm';
	const CHAR_SYMB		= '_-.';
	const CHAR_SPACE	= ' ';

	/**
	* System variables map
	*
	* @var Array
	*/
	protected $_var = array(
		'customerEmail'	=> array( 'customerEmail' ),
		'customerName'	=> array( 'customerName' ),
		'storeName'		=> array( 'getStoreName' ),
		'orderId'		=> array( 'getOrderId' ),
		);

	/**
	* Config values
	*
	* @var string
	*/
	const CONFIG_USE_OCLOG	= 'use_oclog';
	const CONFIG_LOG_FILE	= 'log_file';

	/**
	* Check folder cinstants
	*/

	/** 
	* @var integer CHECK_FOLDER_EXISTS 1
	*/
	const CHECK_FOLDER_EXISTS	= 1;
	/** 
	* @var integer CHECK_FOLDER_READABLE 2
	*/
	const CHECK_FOLDER_READABLE	= 2;
	/** 
	* @var integer CHECK_FOLDER_WRITABLE 4
	*/
	const CHECK_FOLDER_WRITABLE	= 4;
	/** 
	* @var integer CHECK_FOLDER_SYMLINK 8
	*/
	const CHECK_FOLDER_SYMLINK	= 8;

	/**
	* Check file cinstants
	*/

	/**
	* @var integer CHECK_FILE_EXISTS 1
	*/
	const CHECK_FILE_EXISTS	= 1;
	/**
	* @var integer CHECK_FILE_READABLE 2
	*/
	const CHECK_FILE_READABLE	= 2;
	/**
	* @var integer CHECK_FILE_WRITABLE 4
	*/
	const CHECK_FILE_WRITABLE	= 4;
	/**
	* @var integer CHECK_FILE_EXECUTABLE 8
	*/
	const CHECK_FILE_EXECUTABLE	= 8;

	/***************** Public Methods *************************/

	/**
	* Get current module version
	*
	* @return integer
	*/
	public function getModuleVersion(){ 
		return $this->_moduleVersion;
	}

	/**
	* Get module code
	*
	* @return string
	*/
	public function getModuleCode(){
		return '';
	}

	/**
	* Get full module code
	*
	* @return string
	*/
	public function getFullModuleCode(){
		return '';
	}

	/**
	* Get module category
	*
	* @return string
	*/
	public function getModuleCategory(){
		return '';
	}

	/**
	* Get prefix for config non uninstalled settings
	*
	* @var string
	*/
	public function getConfigPrefix(){
		return '';
	}

	/**
	* Get config for required system config settings
	*
	* @var string
	*/
	public function getSystemConfigPrefix(){
		return '';
	}

	/**
	* Check whether user has specific permission
	*
	* @param string $permission
	* @return boolean
	*/
	public function hasPermissions( $permissionName ){
		return $this->user->hasPermission( $permissionName, 'payment/' . $this->getModuleCode() );
	}

	/**
	* Define whether module is installed
	*
	* @return boolean
	*/
	public function isInstalled(){
		return (bool)$this->getConfigValue( 'installed' );
	}

	/**
	* Get value from Config
	*
	* @param string $key
	* @param string $prefix
	* @return mixed
	*/
	public function getConfigValue( $key , $prefix = null ) { 
		$prefix = $prefix ? $prefix : $this->choosePrefix( $key );
		return $this->config->get( $prefix . $key );
	}

	/**
	* Get/set to registry prefixed values
	*
	* @param string $key
	* @param Array $arguments
	* @return mixed|Advertikon_Model
	*/
	public function __call( $key , $arguments ) {
		$operation  = substr( $key , 0 , 3 );
		$prefix = 'adk_';

		switch( $operation ) {
			case 'set' :
				$name = $prefix . Advertikon::underscore( substr( $key , 3 ) );
				$this->{$name} = isset( $arguments[ 0 ] ) ? $arguments[ 0 ] : null;
				return $this;
			break;
			case 'get' :
				$name = $prefix . Advertikon::underscore( substr( $key , 3 ) );
				return $this->{$name};
			break;
			case 'uns' :
				$name = $prefix . Advertikon::underscore( substr( $key , 3 ) );
				$this->{$name} = null;
				return $this;
			break;
		}
	}

	/**
	* Get setting data and export it at Controller $data array
	* Firstly from POST, the search in config, if not found supply default value
	* If needed inport data to Data Array
	*
	* @param string $settingName
	* @param Array $data
	* @param mixed $default
	* @param string $prefix
	* @param boolean $importToData
	* @return mixed
	*/
	public function importSetting( $settingName , & $data , $default = '' , $prefix = null ){

		$prefix = $prefix ? $prefix : $this->choosePrefix( $settingName );
		$prefixedName = $prefix . $settingName;
		$value = isset( $this->request->post[ $prefixedName ] ) ? $this->request->post[ $prefixedName ] : ( $this->config->has( $prefixedName ) ? $this->config->get( $prefixedName ) : $default );
		$this->importToData( $data , $settingName , $value , $prefix );
			return true;
	}

	/**
	* Import variables to Data array
	*
	* @param Array $data
	* @param string $key
	* @param mixed $value
	* @param string $prefix
	*/
	public function importToData( & $data , $key , $value , $prefix = null ){
		if( ! is_array( $data ) || ! ( $data instanceof ArrayAccess ) ) {
			$this->_getHelper()->logException( 'Can not import data. Object do not support Array Access interface' );
		}
		$prefix = $prefix ? $prefix : $this->choosePrefix( $key );
		$data[ $prefix . $key ] = $value;
	}

	/**
	* Get setting data
	* Firstly from POST, the search in config, if not found supply default value
	* If needed inport data to Data Array
	*
	* @param string $settingName
	* @param mixed $default
	* @param string $prefix
	* @return mixed
	*/
	public function getValue( $settingName, $default = '' , $prefix = null ){
		$prefix = $prefix ? $prefix : $this->choosePrefix( $settingName );
		$prefixedName = $prefix . $settingName;
		$value = isset( $this->request->post[ $prefixedName ] ) ? $this->request->post[ $prefixedName ] : ( $this->config->has( $prefixedName ) ? $this->config->get( $prefixedName ) : $default );
		return $value;
	}

	/**
	* Choose config prefix depend on whether config name is system
	*
	* @param string
	* @return string
	*/
	public function choosePrefix( $name ) {
		if( $this->isSystemSetting( $name ) ) {
			return $this->getSystemConfigPrefix();
		}
		return $this->getConfigPrefix();
	}

	/**
	* Get name prefixed name
	*
	* @param string $fieldName
	* @param string $prefix
	* @return string
	*/
	public function getPrefixedName( $fieldName , $prefix = null ) {
		$prefix = $prefix ?: $this->choosePrefix( $fieldName );
		return $prefix . $fieldName;

	}

	/**
	* Get option data
	*
	* @param string $sourceName
	* @param string $inputName
	* @param string $inputType
	* @return Object inplements IterratorAggregate interface
	*/
	public function getOptionsFromSource( $sourceName , $inputName = null , $inputType = null , $prefix = null ){
		$source = Advertikon::getSource( $sourceName );
		//make active (selected or checked)
		if( $inputName && $inputType ) {
			if( ( $value = $this->getValue( $inputName , false , $prefix ) ) !== false ) {
				switch ( $inputType ){
					case 'select' :
						$source->select( $value );
					break;
					case 'multiple' : 
						$source->multiselect( $value );
					break;
				}
			}
		}
		return $source;
	}

	/**
	* Record message in log file
	*
	* @param mixed $msg
	* @return Object $this
	*/
	public function log( $msg = '', $severity = null ) {
		$this->_getLog()->write( $msg , $severity );
		return $this;
	}

	/**
	* Log exeption message and throw Exception
	*
	* @param mixed $msg
	* @throws Sdvertikon_Exception
	*/
	public function logException( $msg , $exceptionType = null ){
		$exceptionType = $exceptionType ?: __NAMESPACE__ . '\Exception';
		$this->log( $msg , Log::ERR );
		throw new $exceptionType( $msg );
	}

	/**
	* Get Start line for Log entries 
	*
	* @param string $text
	* @return string
	*/
	public function getLogStartLine( $text ) {
		return $this->_getogLine( '^' , 'Start ' . $text );
	}

	/**
	* Get End line for Log entries
	*
	* @param string $text
	* @return string
	*/
	public function getLogEndLine( $text ) {
		return $this->_getogLine( '-' , 'End ' . $text );
	}

	/**
	* Checks whether setting name is system
	*
	* @param string $name
	* @return boolean
	*/
	public function isSystemSetting( $name ){
		if( ! $this->getSystemVars() ) {
			$this->setSystemVars( Advertikon::getXmlConfig()->getValues( 'system_setting' ) );
		}
		return array_key_exists( $name , $this->getSystemVars() );
	}


	/**
	* Get path to template file
	*
	* @param string $template
	* @param string $fallback
	* @return string
	*/
	public function getTemplateFile( $template , $fallback = 'default' ) { 
		if( version_compare( VERSION , '2.2.0.0' , '>=' ) ) {
			return $template;
		}
		if( Advertikon::isAdmin() ) {
			return $template;
		}
		$templateFile = $this->sanitizePath( $this->config->get( 'config_template' ) . '/template/' . $template );
		$fallBack = $this->sanitizePath( $fallback . '/template/' . $template );
		return file_exists( DIR_TEMPLATE . $templateFile ) ? $templateFile : $fallBack;
	}

	/**
	* Merge aray Targer with array With
	*
	* @param Array $target
	* @param Array $with
	* @param boolean $rewrite
	*/
	public function merge( Array &$target , Array $with , $rewrite = false ){
        foreach( $with as $key => $value )
            if( $rewrite || ! isset( $target[ $key ] ) ) {
                $target[ $key ] = $value;
            }
    }

    /**
    * Purge path string
    *
    * @param string $path
    * @return string
    */
    public function sanitizePath( $path ){
    	return str_replace( array( '//' , '\\' , '\\\\' , ) , DIRECTORY_SEPARATOR , $path );
    }

	/**
	* Extract params to new array
	*
	* @param Array $from
	* @param Array $fields
	*/
	public function extractParam( $from , $fields ) {
		$return = array();
		foreach( $fields as $name ) {
			if( array_key_exists( $name , $from ) ) {
				$return[ $name ] = $from[ $name ];
			}
		}
		return $return;
	}

	/**
	* Translate
	*
	* @param string $text
	* @return string
	*/
	public function __(){

		//Check translate
		$highlight = false;
		$highlightPattern = '<span style="color:red;">%s</span>';

		$args = func_get_args();

		if( empty( $args[ 0 ] ) ) {
			return '';
		}

		if( ! $this->getIsLanguageLoaded() ) {
			$this->language->load( $this->getFullModuleCode() );
			$this->setIsLanguageLoaded( 1 );
		}

		$translate = $this->language->get( array_shift( $args ) );
		array_unshift( $args , $translate );
		$text = call_user_func_array( 'sprintf' , $args );
		if( ! $text ) {
			return $translate;
		}
		if( $highlight ) {
			return sprintf( $highlightPattern , $text );
		}
		return $text;
	}

	/**
	* Check instance for emptyness
	*
	* @param mixed $elem
	* @return boolean
	*/
	public function isEmpty( $elem , $recursively = true ){

		$empty = true;

		if( is_object( $elem ) ){
			foreach( $elem as $v ){
				return false;
			}
		}

		if( is_array( $elem ) ) {
			foreach( $elem as $val ) {
				if( is_array( $val ) && $recursively ) {
					if( ! $this->isEmpty( $val ) ) {
						return false;
					}
				}
				else {
					return false;
				}
			}
		}

		return $empty;
	}

	/**
	* Remove extension specific prefix
	*
	* @param string|Array $prefixedName
	* @return string|Array
	*/
	public function stripPrefix( $prefixedName ){
		if( is_array( $prefixedName ) ) {
			$return = array();
			foreach( $prefixedName as $key => $value ) {
				$return[ $this->stripPrefix( $key ) ] = $value;
			}
			return $return;
		}
		if( strpos( $prefixedName , $this->getConfigPrefix() ) === 0 ) {
			return substr( $prefixedName , strlen( $this->getConfigPrefix() ) );
		}

		if( strpos( $prefixedName , $this->getSystemConfigPrefix() ) === 0 ) {
			return substr( $prefixedName , strlen( $this->getSystemConfigPrefix() ) );
		}
		return $prefixedName;
	}

	/**
	* Obscure part of a string
	*
	* @param string $str
	* @param iteger $part
	* @param string $obscureChar
	* @param boolean $obscureSpace
	* @return string
	*/
	public function obscureStr( $str , $part = 75 , $obscureChar = '*' , $obscureSpace = false ) {

		if( ! is_string( $str ) ) {
			return '';
		}

		$part = is_int( $part ) ? min( (int)$part , 100 ) : 100;

		$len = ceil( strlen( $str ) * ( $part / 100 ) );
		for( $i = 0; $i < $len ; ++$i ) {
			if( $obscureSpace || $str[ $i ] != self::CHAR_SPACE ) {
				$str[ $i ] = $obscureChar;
			}
		}
		return $str;
	}

	/**
	* Decod json string
	*
	* @param string #str
	* @return mixed
	* @throws Exception
	*/
	public function jsonDecode( $str ) {

		if( ! is_string( $str ) ) {
			$this->logException( sprintf( '%s : input data must be a string' , __METHOD__ ) );
		}

		$json = json_decode( $str );

		if( json_last_error() ) {
			if( version_compare( PHP_VERSION , '5.5.0' , '>=' ) ) {
				$this->logException( sprintf( '%s : error "%s" while decoding string "%s"' , __METHOD__ , json_last_error_msg() , $str ) );
			}
			else {
				$this->logException( sprintf( '%s : error while decoding string "%s"' , __METHOD__ , $str ) );	
			}
		}

		return $json;
	}

	/**
	* Get system variables list
	*
	* @return string
	*/
	public function getVariablesList() {
		if( ! empty( $this->_var ) ) {
			return '{' . implode( '}, {' , array_keys( $this->_var ) ) . '}';
		}
		return '';
	}

	/**
	* Get system variables
	*
	* @return string
	*/
	public function getVariables() {
		return array_keys( $this->_var );
	}

	/**
    * Substitute variables by it's values in string
    *
    * @param string $string
    * @return string
    */
    public function evalString( $string ) {
    	return preg_replace_callback( '#\{.*?\}#m', array( $this , '_varReplace' ), $string ); 
    }

	/**
	* Get Order total
	*
	* @param integer $orderId
	* @return numeric|boolean
	*/
	public function getOrderTotal( $orderId = null ){
		$orderId = $orderId ? $orderId : ( isset( $this->session->data[ 'order_id' ] ) ? $this->session->data[ 'order_id' ] : null );
		if( ! $orderId ) {
			return false;
		}
		return Advertikon::getExtendedModel( 'checkout_order' )->getTotal( $orderId );
	}

	/**
	* Make ckecks upon folder
	*
	* @param string $path
	* @param integer $checks
	* @throws Advertikon_Exception
	*/
	public function checkFolder( $path , $checks ) {

		if( ( $checks & self::CHECK_FOLDER_SYMLINK ) && preg_match( '#(^|/)\.{1,2}(/|$)#', $path ) ) { 
			throw new Exception( $this->__( 'Folder "%s" contains symbolic links' , $path ) );
		}

		if( ( $checks & self::CHECK_FOLDER_EXISTS ) && ! is_dir( $path ) ) {
			throw new Exception( $this->__( 'Folder "%s" does not exsist' , $path ) );
		}

		if( ( $checks & self::CHECK_FOLDER_READABLE ) && ! is_readable( $path ) ) {
			throw new Exception( $this->__( 'Folder "%s" is not readable' , $path ) );
		}

		if( ( $checks & self::CHECK_FOLDER_WRITABLE ) && ! is_writable( $path ) ) {
			throw new Exception( $this->__( 'Folder "%s" is not writable' , $path ) );
		}
	}

	/**
	* Make ckecks upon file
	*
	* @param string $path
	* @param integer $checks
	* @throws Advertikon_Exception On check failure
	*/
	public function checkFile( $path , $checks ) {

		if( ( $checks & self::CHECK_FILE_EXISTS ) && ! is_file( $path ) ) {
			throw new Exception( $this->__( 'File "%s" does not exsist' , $path ) );
		}

		if( ( $checks & self::CHECK_FILE_READABLE ) && ! is_readable( $path ) ) {
			throw new Exception( $this->__( 'File "%s" is not readable' , $path ) );
		}

		if( ( $checks & self::CHECK_FILE_WRITABLE ) && ! is_writable( $path ) ) {
			throw new Exception( $this->__( 'File "%s" is not writable' , $path ) );
		}

		if( ( $checks & self::CHECK_FILE_EXECUTABLE ) && ! is_executable( $path ) ) {
			throw new Exception( $this->__( 'File "%s" is not executable' , $path ) );
		}
	}


	/*********************************** Custom Variables **********************************/

	/**
	* Get current store name
	*
	* @return string
	*/
	public function getStoreName(){
		return $this->config->get( 'config_name' );
	}

	/**
    * Get custoner name
    *
    * @return string
    */
    public function customerName(){

    	//registered customer
    	if( $this->customer && $this->customer->isLogged() ) {
    		return $this->customer->getFirstName() . ' ' . $this->customer->getLastName();
    	}
    	//guest session
    	elseif ( isset( $this->session->data[ 'guest' ] ) ) {
    		$guest = $this->session->data[ 'guest' ];
    		$parts = array();
    		if( isset( $guest[ 'firstname' ] ) ) {
    			$parts[] = $guest[ 'firstname' ];
    		}
    		if( isset( $guest[ 'lastname' ] ) ) {
    			$parts[] = $guest[ 'lastname' ];
    		}
    		return implode( ' ' , $parts );
    	}
    	return '';
    }

    /**
    * Get customer email
    *
    * @return string
    */
    public function customerEmail(){

    	//registered customer
    	if( $this->customer && $this->customer->isLogged() ) {
    		return $this->customer->getEmail();
    	}
    	//guest session
    	elseif ( isset( $this->session->data[ 'guest' ][ 'email' ] ) ) {
    		return $this->session->data[ 'guest' ][ 'email' ];
    	}
    	return '';
    }

    /**
    * Get order ID
    *
    * @return string
    */
    public function getOrderId(){
    	if( $order = $this->getOrder() ) {
    		return isset( $order[ 'order_id' ] ) ? $order[ 'order_id' ] : '';
    	}
    	return '';
    }

    /****************** Protected Methods *********************************/

    /**
    * Make variable eval
    *
    * @param Array $var
    * @return string
    */
    protected function _varReplace( $var ) {
    	$varName = trim( $var[ 0 ] , '{}' );
    	if( isset( $this->_var[ $varName ] ) ) {
    		$callable = $this->_var[ $varName ];
    		if( is_array( $callable ) && count( $callable ) === 1 ) {
    			$callable = array( $this , $callable[ 0 ] );
    		}
    		if( is_callable( $callable ) ) {
    			return call_user_func( $callable );
    		}
    		else {
    			$this->log( sprintf( 'To resolve custom variable "%s" callable needed. Get : "%s" instead' , $varName , print_r( $callable , true ) ) , Advertikon_Log::MSG );
    		}
    	}
    	else {
    		$this->log( sprintf( 'Variable name missing "%s"' , $varName ) , Advertikon_Log::MSG );
    	}
    	return ''; 
    }

    /**
    * Get line for Log entries
    *
    * @param string $symbol
    * @param string $text
    * @return string
    */
    protected function _getogLine( $symbol , $text ) {
    	$totalLength = 100;
    	$paddingLength = ( $totalLength - strlen( $text ) - 6 ) / 2;
    	$padStr = str_repeat( $symbol , $paddingLength );
    	return '//' . $padStr . ' ' . $text . ' ' . $padStr . '//';
    }

    /**
	* Get Logger instance
	*
	* @return Object Advertikon_Log
	*/
	protected function _getLog(){
		return Log::getLogInstance();
	}

	/**
	* Ucfirs wrapper for array_walk
	*
	* @param string $val
	* @param mixed $key
	* @param mixed $param
	*/
	public function ucfirst( & $val , $key , $param = null ) {
		$val = ucfirst( $val );
	}

	/**
	* Get Library Base Directory
	*
	* @return string;
	*/
	public function getLibBaseDir(){
		return __DIR__;
	}
}
?>