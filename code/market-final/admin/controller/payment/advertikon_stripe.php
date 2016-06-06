<?php
/**
* Admin Advertikon Stripe Controller
*
* @author Advertikon
* @package Stripe
* @version 2.2.0.4
*/

class ControllerPaymentAdvertikonStripe extends Advertikon\Stripe\Controller {

	protected $_minAmountAdjastment = '';

	public function __construct( $registry ){
		parent::__construct( $registry );
	}

	/**
	* Extensin specific indexAction
	*
	* @see Advertikon\Controller::index()
	*/
	protected function _index() {

		$model = Advertikon\Advertikon::getCurrentModel();
		$settingsModel = Advertikon\Advertikon::getExtendedModel( 'setting_setting' );  
		$moduleCode = $model->getModuleCode(); 

		$this->document->setTitle( $model->__( 'Stripe Settings' ) );

		if ( ( $this->request->server[ 'REQUEST_METHOD' ] == 'POST' ) && $this->_validate() ) {

			//settings without prefixes
			$settings = $settingsModel->getSetting();

			//rewrite stripe settings with post data
			$model->merge( $settings , $model->stripPrefix( $this->request->post ) , true );

			$settingsModel->editSetting( $settings );		

			$this->session->data['success'] = $model->__( 'The Module Settings was successfully changed.' ) . $this->_minAmountAdjastment;

			$this->response->redirect( $this->url->link( 'extension/payment', 'token=' . $this->session->data[ 'token' ], 'SSL' ) );
		}

		$data[ 'button_save' ] = $this->language->get('button_save');
		$data[ 'button_cancel' ] = $this->language->get('button_cancel');

		foreach( $this->error as $key => $val ){
			if( is_array( $val ) ) {
				$data[ 'error_' . $key ] = implode( '<br>' , $val );
			}
			else {
				$data[ 'error_' . $key ] = $val;
			}
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
		);

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('text_payment'),
			'href'      => $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'),
		);

		$data['breadcrumbs'][] = array(
			'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('payment/' . $moduleCode, 'token=' . $this->session->data['token'], 'SSL'),
		);

		$data[ 'action' ] = $this->url->link( 'payment/' . $moduleCode , 'token=' . $this->session->data['token'] , 'SSL' );
		$data[ 'cancel' ] = $this->url->link( 'extension/payment' , 'token=' . $this->session->data['token'] , 'SSL' );

		$data[ 'model' ] = $model;

		$data[ 'currency_symbol_left' ] = $this->currency->getSymbolLeft( $this->config->get( 'config_currency' ) );
		$data[ 'currency_symbol_right' ] = $this->currency->getSymbolRight( $this->config->get( 'config_currency' ) );

		$data[ 'header' ] = $this->load->controller( 'common/header' );
		$data[ 'footer' ] = $this->load->controller( 'common/footer' );
		$data[ 'column_left' ] = $this->load->controller( 'common/column_left' );

		preg_match( '/@version([^\n]+)/' , file_get_contents( __FILE__ ) , $m );
		$data[ 'version' ] = isset( $m[ 0 ] ) ? $m[ 1 ] : '';

		$data[ 'like_us_url' ] = $this->url->link( 'payment/advertikon_stripe/like_us' , '&token=' . $this->session->data[ 'token' ] , 1 );

		$data[ 'webhook_url' ] = HTTPS_CATALOG . 'index.php?route=payment/' . $moduleCode . '/webhooks';

		$this->response->setOutput( $this->load->view( 'payment/' . $moduleCode . '.tpl' , $data ) );
	}

	/**
	* Handle click on like us link
	*/
	public function like_us() {
		$set = Advertikon\Advertikon::getExtendedModel( 'setting_setting' );
		$set->setSettingValue( 'extension_commented' , 1 );
		$this->response->setOutput( 'success' );
	}

	/**
	* Extension specific validate method
	*
	* @see Advertikon\Controller::validate()
	*/
	protected function _validate() {

		$model = Advertikon\Advertikon::getCurrentModel();
		$prefix = $model->getConfigPrefix();

		//check permissions to modify the extension's settings
		if( ! $model->hasPermissions( 'modify' ) ) {
			$this->error[ 'warning' ] = $this->language->get( 'error_permission' );
		}

		//presece of test or live key pair depend on sandbox mode
		if( $this->request->post[ $model->getPrefixedName( 'test_mode' ) ] ) {
			if( ! $this->request->post[ $model->getPrefixedName( 'test_secret_key' ) ] )	{
				$this->error[ 'test_secret_key' ] = $model->__( 'Test Secret Key Required!' );
			}
			if( empty( $this->request->post[ $model->getPrefixedName( 'test_public_key' ) ] ) ) {
				$this->error['test_public_key'] = $model->__( 'Test Publishable Key Required!' );
			}
		}
		else {
			if( empty( $this->request->post[ $model->getPrefixedName( 'live_secret_key' ) ] ) ) {
				$this->error['live_secret_key'] = $model->__( 'Live Secret Key Required!' );
			}
			if( empty( $this->request->post[ $model->getPrefixedName( 'live_public_key' ) ] ) ) {
				$this->error['live_public_key'] = $model->__( 'Live Publishable Key Required!' );
			}
		}
		
		//minimum total amount adjastmet (if needed)
		$minTotal = ! empty( $this->request->post[ $model->getPrefixedName( 'total_min' ) ] ) ? $this->request->post[ $model->getPrefixedName( 'total_min' ) ] : 0;
		$correctMinTotal = $model->checkMinAmount( $minTotal , $this->config->get( 'config_currency' ) );
		if( true !== $correctMinTotal ) {
			$this->request->post[ $model->getPrefixedName( 'total_min' ) ] = $this->currency->format( $correctMinTotal , $this->config->get( 'config_currency' ) , 1 , false );
			$this->_minAmountAdjastment = ' ' .  $model->__( 'Minimum total amount has been adjusted to meet the Stripe requirements' );
		}

		$this->request->post[  $model->getPrefixedName( 'total_max' ) ] = is_numeric( $this->request->post[  $model->getPrefixedName( 'total_max' ) ] ) ? $this->request->post[  $model->getPrefixedName( 'total_max' ) ] : null;
		if( ! empty( $this->request->post[  $model->getPrefixedName( 'total_max' ) ] ) ) {
			if( $this->request->post[  $model->getPrefixedName( 'total_max' ) ] < $this->request->post[  $model->getPrefixedName( 'total_min' ) ] ) {
				$this->error[ 'total_max' ] = $model->__( 'Maximum total amount cannot be lesser then minimum total amount' );
			}
		}

		//title
		if( empty( $this->request->post[ $model->getPrefixedName( 'title' ) ] ) ) {
				$this->error[ 'title' ] = $model->__( 'Specify the title of some sort' );
		}

		//charge description
		if( empty( $this->request->post[ $model->getPrefixedName( 'charge_description' ) ] ) ) {
				$this->error[ 'charge_description' ] = $model->__( 'Specify description for charge' );
		}

		//customer description
		if( empty( $this->request->post[ $model->getPrefixedName( 'customer_description' ) ] ) ) {
				$this->error[ 'customer_description' ] = $model->__( 'Specify customer desription' );
		}

		//log file
		$path = substr( $this->request->post[ $model->getPrefixedName( 'log_file' ) ] , strlen( DIR_LOGS ) ); 
		$this->request->post[ $model->getPrefixedName( 'log_file' ) ] = $path ? $path : null; 

		if( empty( $this->request->post[ $model->getPrefixedName( 'use_oclog' ) ] ) && ! empty( $this->request->post[ $model->getPrefixedName( 'debug' ) ] ) && $this->request->post[ $model->getPrefixedName( 'debug' ) ] != Advertikon_Log::DISABLE ) {

			if( ! $path ) {
				$this->error[ 'log_file' ] = $model->__( 'You must specify path to the log file' );
			}
			try{
				$model->checkFolder( $path , Advertikon_Model::CHECK_FOLDER_SYMLINK );
			}
			catch( Advertikon_Exception $e )  {
				$this->error[ 'log_file' ] = $model->__( 'Symbolic links do not permitted' );
			}
		}

		if( empty( $this->error ) ) {
			return true;
		}

		$msg = $model->__( 'In order to continue you have to correct some data' );

		if( ! empty( $this->error[ 'warning' ] ) ) {
			$this->error[ 'warning' ] = (array)$this->error[ 'warning' ];
			$this->error[ 'warning' ][] = $msg;
		}
		else {
			$this->error[ 'warning' ] = $msg;
		}
		return false;
	}

	/**
	* Extension specific installation method
	*
	* @see Advertikon\Controller::install()
	*/
	protected function _install(){

		$model = Advertikon\Advertikon::getCurrentModel();
		$model->createCustomerTable(); 
	}

	/**
	* Remove extension tables from DB
	*
	* Extension specific method @see Advertikon\Controller::uninstall()
	*/
	protected function _uninstallDb(){
		$model = Advertikon\Advertikon::getCurrentModel();
		$model->deleteCustomerTable();
	}

	/**
	* Remove extension settings
	*
	* Extension specific method @see Advertikon\Controller::uninstall()
	*/
	protected function _uninstallSettings(){
		Advertikon\Advertikon::getExtendedModel( 'setting_setting' )->deleteSetting();
	}

	/**
	* Check extension compatibility with runtime
	* Extension specific method @see Advertikon\Controller::checkCompatibility()
	*
	* @param Advertikon\Page\Content $pageContent
	*/
	protected function _childCheckCompatibility( & $pageContent , $mock = false ){

		$model = Advertikon\Advertikon::getCurrentModel();

		if ( $mock || ! function_exists( 'curl_init' ) ) {
			$contentRecord = new Advertikon\Page\Content\Record;
			$contentRecord->setTypeWarning();
			$record =  $model->__( 'Stripe needs the CURL PHP extension.' );
			$record .=  sprintf( ' <a href="%s" target="_blank">%s</a>' , 'http://php.net/manual/book.curl.php' , $model->__( 'More details' ) );
			$contentRecord->setRecord( $record );
			$pageContent->addRecord( $contentRecord );
		}

		if ( $mock || 
				function_exists( 'curl_version' ) &&
				( $cv = curl_version() ) &&
				isset( $cv['features'] ) && 
				! ( $cv['features'] & CURL_VERSION_SSL )
			) {
			$contentRecord = new Advertikon\Page\Content\Record;
			$contentRecord->setTypeWarning();
			$record =  $model->__( 'SSL is not supported with this cURL installation.' );
			$record .=  sprintf( ' <a href="%s" target="_blank">%s</a>' , 'http://php.net/manual/book.curl.php' , $model->__( 'More details' ) );
			$contentRecord->setRecord( $record );
			$pageContent->addRecord( $contentRecord );
		}

		if ( $mock || ! function_exists( 'json_decode' ) ) {
			$contentRecord = new Advertikon\Page\Content\Record;
			$contentRecord->setTypeWarning();
			$record =  $model->__( 'Stripe needs the JSON PHP extension.' );
			$record .=  sprintf( ' <a href="%s" target="_blank">%s</a>' , 'http://php.net/manual/book.json.php' , $model->__( 'More details' ) );
			$contentRecord->setRecord( $record );
			$pageContent->addRecord( $contentRecord );
		}

		if ( $mock || ! function_exists( 'mb_detect_encoding' ) ) {
			$contentRecord = new Advertikon\Page\Content\Record;
			$contentRecord->setTypeWarning();
			$record =  $model->__( 'Stripe needs the Multibyte String PHP extension.' );
			$record .=  sprintf( ' <a href="%s" target="_blank">%s</a>' , 'http://php.net/manual/book.mbstring.php' , $model->__( 'More details' ) );
			$contentRecord->setRecord( $record );
			$pageContent->addRecord( $contentRecord );
		}
	}
}
?>