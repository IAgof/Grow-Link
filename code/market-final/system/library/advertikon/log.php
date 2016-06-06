<?php
/**
* Advertikon Log
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon;

class Log extends \Log{

	/**
	* Path to log file
	*
	* @var string
	*/
	const LOG_FILE = 'payment_advertikon_stripe.log';
	protected $_logFilePath;
	protected $_logFile;

	/**
	* Default log file size, in bytes
	*
	* @var integer
	*/
	const LOG_FILE_SIZE = 10240000;//10 MB
	protected $_logFileSize;

	/**
	* Default log file expiration period, in seconds
	*
	* @var integer
	*/
	//const::LOG_FILE_EXPIRATION = 2592000;//month

	/**
	* EOL
	*
	* @var int
	*/
	const EOL = PHP_EOL;

	/**
	* Log severity
	*
	* @var integer
	*/
	const DISABLE 	= -1;
	const ERR 		= 0;
	const MSG 		= 50;
	const DEBUG 	= 100;

	/**
	* Logger instance
	*
	* @var self
	*/
	protected static $_instance;

	/**
	* Whether to use OpenCart log file
	*
	* @var boolean
	*/
	static protected $_useOcLog = true;

	/**
	* Log threshold
	*
	* @var integer
	*/
	protected $_threshold;

	/**
	* Log message prefix
	* Used with OpenCart log file
	*
	* @var string
	*/
	protected $_prefix = 'Stripe: ';

	public function __construct( $logFile = null ) {

		$this->_logFile = $logFile ? Advertikon::getCurrentModel()->sanitizePath( $logFile ) : self::LOG_FILE;
		$this->_logFilePath = DIR_LOGS . $this->_logFile;
		$this->_logFileSize = self::LOG_FILE_SIZE;
		$this->_threshold = Advertikon::getCurrentModel()->getConfigValue( 'debug' );

		$this->_init();

		if( ! self::$_useOcLog ) {
			$this->_checkFileSize();
		}
		
		if( ! self::$_useOcLog ) {
			$this->_prefix = '';
			parent::__construct( $this->_logFile );
		}
	}

	public function __destruct(){
		if( ! self::$_useOcLog ) { 
			parent::__destruct();
			$this->_checkFileSize();
		}
	}

	/**
	* Get Logger instance
	* Prevent from crearing multiple instances
	*
	* @return Object
	*/
	public static function getLogInstance(){

		if( ! self::$_instance ) {
			self::$_useOcLog = Advertikon::getCurrentModel()->getConfigValue( Model::CONFIG_USE_OCLOG );
			if( self::$_useOcLog ) {
				$logFile = Advertikon::getCurrentModel()->config->get( 'config_error_filename' );
			}
			else {
				$logFile = Advertikon::getCurrentModel()->getConfigValue( Model::CONFIG_LOG_FILE );
			}
			self::$_instance = new self( $logFile );
		}
		return self::$_instance;
	}

	/**
	* Check file size
	* @see self::LOG_FILE_SIZE
	*/
	protected function _checkFileSize(){

		$fileSize = filesize( $this->_logFilePath );

		//if file size lesser then config value - do nothing
		if( $this->_logFileSize >=  $fileSize || $this->_logFileSize <= 0 ) {
			return true;
		}

		$tmpName = preg_replace( '#[^./]+$#', 'tmp' , $this->_logFilePath );
		rename( $this->_logFilePath , $tmpName );

		$fh = fopen( $tmpName , 'r+' );

		if( $fh === false ) {
			return;
		}
 
		//set pointer to point at config value bytes from the end of the file
		fseek( $fh , $fileSize - $this->_logFileSize );
		$char = true;
		$i = 0;
		while( $char !== false ) {
			$i++;
			//seek for EOL
			if( ( $char = fgetc( $fh ) ) == "\r" || $char == "\n" ) {
				break;
			}
			//step from end to start of the file
			fseek( $fh , -2 , SEEK_CUR );
			if( $i > $fileSize )break;
		}
		file_put_contents( $this->_logFilePath , fread( $fh , $this->_logFileSize ) );
		fclose( $fh );
		unlink( $tmpName );
	}

	/**
	* Write line to log file
	*
	* @param mixed $msg
	* @param integer $severity
	*/
	public function write( $msg = '' , $severity = null ) {

		if( is_null( $severity ) ) {
			$severity = self::DEBUG;
		}
		if( $this->_threshold >= $severity ) { 

			switch( $severity ) {
				case self::ERR :
					$prefix = $this->_prefix . 'Error - '; 
				break;
				case self::MSG :
					$prefix = $this->_prefix . 'Message - ';
				break;
				default :
					$prefix = $this->_prefix;
				break;
			}

			$msg = $this->_stringifyMsg( $msg );

			if( self::$_useOcLog ) {
				Advertikon::getCurrentModel()->log->write( $prefix . $msg );
			}
			else {
				parent::write( $prefix . $msg );
			}
		}
	}

	/**
	* Initalize logger instance
	*/
	protected function _init(){

		if( self::$_useOcLog ) {
			return;
		}

		$model = Advertikon::getCurrentModel();
		try {
			$model->checkFolder( DIR_LOGS , Model::CHECK_FOLDER_EXISTS | Model::CHECK_FOLDER_WRITABLE | Model::CHECK_FOLDER_READABLE );

			$model->checkFolder( $this->_logFilePath , Model::CHECK_FOLDER_SYMLINK );
			$parts = explode( '/' , trim( dirname( $this->_logFile ) , '/' ) );

			$path = DIR_LOGS;
			foreach( $parts as $folder ) {

				$path .= $folder . '/';

				if( ! is_dir( $path ) ) {
					mkdir( $path );
					chmod( $path , 0777 );
				}
				elseif( 0777 != ( fileperms( $path ) & 0777 ) ) { 
					if( ! chmod( $path , 0777 ) ) {
						throw new Exception( $model->__( 'Unable to change permissions of folder "%s"' , $path ) );
					}
				}
			}

			if( ! is_file( $this->_logFilePath ) ) {
				file_put_contents( $this->_logFilePath , '' );
				chmod( $this->_logFilePath , 0777 );
			}
		}
		catch( Exception $e ) {
			$model->logException( $model->__( 'Advertikon Stripe Logger Error: %s' , $e->getMessage() ) );
		}
	}

	/**
	* Convert message instance to string
	*
	* @param mixed $msg 
	* @return string|object
	*/
	protected function _stringifyMsg( $msg ) {
		if( is_scalar( $msg ) ) {
			return $msg;
		}
		if( is_object( $msg ) && method_exists( $msg , '__toString ' ) ) {
			return $msg;
		}
		return print_r( $msg , true );
	}
}
?>