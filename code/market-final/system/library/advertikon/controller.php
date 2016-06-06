<?php
/**
* Advertikon Controller
* Extends OpenCart Controller functionality
*
* @author Advertikon
* @package Advertikon
* @version 2.2.0.4
*/

namespace Advertikon;

abstract class Controller extends \Controller{

	/**
	* Current module version
	*
	* @var integer
	*/
	protected $_moduleVersion;

	/**
	* Controller Errors
	*
	* @var Array
	*/
	protected $error = array();

	/**
	* PHP version for Advertikn Lib
	*
	* @var string
	*/
	const MIN_PHP_VER = '5.3.0';

	/********************************************* Public Methods **********************************************/

	public function __construct( $registry ){
		parent::__construct( $registry );
		if( ! class_exists( 'Advertikon\Autoloader' , false ) ) {
			new Autoloader;
		}
		Advertikon::init( $registry , $this->getCounterpartModel() );
	}
	
	/**
	* Get/set to registry prefixed values
	*
	* @param string $key
	* @param Array $arguments
	* @return mixed|Advertikon_Controller
	*/
	public function __call( $key , $arguments ) {
		$operation  = substr( $key , 0 , 3 );
		$prefix = 'adk_';

		switch( $operation ) {
			case 'set' :
				$name = $prefix . Advertikon_Advertikon::underscore( substr( $key , 3 ) );
				$this->{$name} = isset( $arguments[ 0 ] ) ? $arguments[ 0 ] : null;
				return $this;
			break;
			case 'get' :
				$name = $prefix . Advertikon_Advertikon::underscore( substr( $key , 3 ) );
				return $this->{$name};
			break;
			case 'uns' :
				$name = $prefix . Advertikon_Advertikon::underscore( substr( $key , 3 ) );
				$this->{$name} = null;
				return $this;
			break;
		}
	}

	/**
	* Called by system during installation process
	*
	* Check compatibility for specific extension
	* Run instasllation method on specific extension
	* Mark extension as installed (OC mark extension as installed
	* prior to call this method )
	*/
	public function install(){

		$model = Advertikon::getCurrentModel();

		try {
			$this->_checkCompatibility();
		}
		catch( Exception\Transport $e ) {
			$this->errorPage( $e->getData() , 424 , 'Failed Dependency' );
		}

		$this->_install();

		$config = Advertikon::getXmlConfig();
		$settingsModel = Advertikon::getExtendedModel( 'setting_setting' );
		$settings = $model->stripPrefix( $settingsModel->getSetting() );
		$model->merge( $settings , $config->getValues( '/' ) );
		$settingsModel->editSetting( $settings );

		//mark the extension as installed
		Advertikon::getExtendedModel( 'setting_setting' )->setSettingValue( 'installed' , 1 );
	}

	/**
	* Run uninstallation process
	*
	* Run uninstalltion method on spcific extension
	* Delete DB tables of specific extension - depend on configuration
	* Clear settings of specific extension - depend on configuration
	* Mark extension as uninstalled @see self::install()
	*/
	public function uninstall(){
		$this->_uninstall();
		$model = $this->getCounterpartModel();

		if( $model->getConfigValue( 'uninstall_clear_db' ) ) {
			$this->_uninstallDb();
		}
		if( $model->getConfigValue( 'uninstall_clear_settings' ) ) {
			$this->_uninstallSettings();
		}

		//mark the extension as uninstalled
		//better to use editSetting - since there is may be no 'installed' value in config after uninstall
		Advertikon::getExtendedModel( 'setting_setting' )->editSettingValue( 'installed' , 0 );
	}

	/**
	* Get counterpart (to contolller) model instance
	*
	* @return Object
	*/
	public function getCounterpartModel(){

		$controllerName = get_class( $this );

		//check if OC controller
		if( strpos( $controllerName, 'Controller' ) === 0 ) {
			$modelName = Advertikon::underscore( substr( $controllerName , strlen( 'Controller' ) ) );
			$realName = 'Model' . substr( $controllerName , strlen( 'Controller' ) );
			$parts = explode( '_' , $modelName , 2 );
			$modelPath= implode( '/' , $parts );
			$this->load->model( $modelPath );
			$loadedModel = 'model_' . $modelName;
			return new $realName( $this->registry );
		}
	}

	/**
	* Index Action
	* Define common logic for all the extensions:
	* check compatibility, if passed - run _indexAction on extension controller
	*/
	public function index(){
		/*
			Since the extension can fail compatibility check but still OpenCart mark it as installed
			so there must be redirect to Error page with instructions
		 */
		try {
			$this->_checkCompatibility();
		}
		catch( Exception\Transport $e ) {
			$this->errorPage( $e->getData() , 424 , 'Failed Dependency' );
		}

		/*
			If extension has passed compatibility validation but still was not installed - problems existed and subsequently fixed
			Redirect to installation page
		*/
		$model = Advertikon::getCurrentModel();
		if( ! $model->isInstalled() ) {
			$this->response->redirect( $this->url->link( 'extension/' . $model->getModuleCategory() . '/install' , 'token=' . $this->session->data[ 'token' ] . '&extension=' . $model->getModuleCode() , true ) );
		}

		//if the extension passed compatibility check - run _indexAction on real extension controller
		$this->_index();
	}

	/**
	* Error Page Controller
	*
	* @param Object Advertikon\Page\Content $content
	* @param integer $errCode
	* @param string $errorMessage
	*/
	public function errorPage( $content , $errorCode = 500 , $errorMessage = 'Internal Server Error'){

		$model = $this->getCounterpartModel();

		$this->document->setTitle( $model->__( 'Error %s' , $errorCode ) );

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get( 'text_home' ),
			'href'      => $this->url->link( 'common/home', 'token=' . $this->session->data['token'], 'SSL' ),
		);

		$data['breadcrumbs'][] = array(
			'text'      => $model->__( 'Error %s' , $errorCode  ),
			'href'      => '',
		);

		$data[ 'model' ] = $model;
		$data[ 'content' ] = $content;
		$data[ 'errorCode' ] = $errorCode;

		$data[ 'header' ] = $this->load->controller( 'common/header' );
		$data[ 'footer' ] = $this->load->controller( 'common/footer' );

		$this->response->setOutput( $this->load->view( 'advertikon_error.tpl' , $data ) );
		$this->response->addHeader( sprintf( 'HTTP/1.0  %s %s' , $errorCode , $errorMessage ) );
		$this->response->output();
		exit( 0 );
	}


	/************************************ Protected Methods *****************************************/

	/**
	* Check compatibility for Advertikon Library
	* Run check compatibility on library then on specific extension
	*
	* @throws Advertikon\Exception\Transport on check fail
	*/
	private function _checkCompatibility(){

		$pageContent = new Page\Content;
		$model = Advertikon::getCurrentModel();
		$mock = false;

		if(  $mock || version_compare( PHP_VERSION , self::MIN_PHP_VER ) === -1 ) {
			$contentRecord = new Page\Content\Record;
			$contentRecord->setTypeWarning();
			$record =  $model->__( 'PHP version needed at least %s, current version %s.' , self::MIN_PHP_VER , PHP_VERSION );
			$record .=  sprintf( ' <a href="%s" target="_blank">%s</a>' , 'http://php.net/manual/install.php' , $model->__( 'More details' ) );
			$contentRecord->setRecord( $record );
			$pageContent->addRecord( $contentRecord );
		}

		$this->_childCheckCompatibility( $pageContent , $mock );

		if( $pageContent->recordCount() > 0 ) {
			$pageContent->setHeader( $model->__( 'The library incompatibility, with the runtime environment, detected. The following must be corrected for the continuation:' ) );
			throw new Exception\Transport( $pageContent );
		}

		return true;
	}

	/**
	* Check compatibility for specific extension
	*
	* @param Object $content
	*/
	protected function _childCheckCompatibility( & $pageContent , $mock ){

	}
}
?>