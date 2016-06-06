<?php
/**
* Common Advertikon Stripe Model
*
* @author Advertikon
* @package Stripe
* @version 2.2.0.4
*/

namespace Advertikon\Stripe;

use Advertikon\Model as StripeModel;
use Advertikon\Advertikon;
use Advertikon\Exception as AdvertikonException;
use Advertikon\Log;

abstract class Model extends StripeModel{

	/**
	* Module version constants
	*
	* @var integer
	*/
	const VERSION_LIGHT		= 10;
	const VERSION_BASE		= 20;
	const VERSION_PRO		= 30;

	/**
	* Module version labels
	*
	* @var string
	*/
	const LABEL_LIGHT	= 'Light';
	const LABEL_BASE	= 'Base';
	const LABEL_PRO		= 'Pro';

	/**
	* Config values
	*
	* @var string
	*/
	const CONFIG_SANDBOX 				= 'test_mode';
	const CONFIG_TEST_PUBLIC_KEY 		= 'test_public_key';
	const CONFIG_TEST_SECRET_KEY 		= 'test_secret_key';
	const CONFIG_LIVE_PUBLIC_KEY 		= 'live_public_key';
	const CONFIG_LIVE_SECRET_KEY 		= 'live_secret_key';
	const CONFIG_CVC_CHECK				= 'cvc_check';
	const CONFIG_ZIP_CHECK				= 'zip_check';
	const CONFIG_ADDRESS_CHECK			= 'address_check';
	const CONFIG_PAYMENT_METHOD			= 'payment_method';
	const CONFIG_SAVE_CC				= 'save_card_data';
	const CONFIG_PAYMENT_CURRENCY		= 'payment_currency';
	const CONFIG_STATEMENT_DESCRIPTOR	= 'statement_descriptor';
	const CONFIG_CHARGE_DESCRIPTION		= 'charge_description';
	const CONFIG_STATUS_AUTHORIZED		= 'status_authorized';
	const CONFIG_STATUS_CAPTURED		= 'status_captured';
	const CONFIG_STATUS_VOIDED			= 'status_voided';
	const CONFIG_CUSTOMER_DESCRIPTION	= 'customer_description';

	/**
	* Payment methods
	*
	* @var integer
	*/	
	const PAYMENT_AUTHORIZE 		= 0;
	const PAYMENT_AUTHORIZE_CAPTURE	= 1;

	/**
	* Currency source for payment
	*
	* @var integer
	*/
	const CURRENCY_STORE = 1;
	const CURRENCY_ORDER = 2;

	/**
	* Status constants
	*
	* @var integer
	*/
	const STATUS_AUTHORIZED	= 1;
	const STATUS_CAPTURED	= 2;
	const STATUS_VOIDED		= 3;

	/**
	* Maximum count of requests to Stripe Server
	*
	* @var integer
	*/
	const MAX_REQUEST_COUNT = 10;

	/**
	* Current module version
	*
	* @var integer
	*/
	protected $_moduleVersion = self::VERSION_LIGHT;

	/**
	* Default currency code for Stripe gateway
	*
	* @var string
	*/
	const DEFAULT_CURRENCY_CODE = 'USD';

	/**
	* Minimum total amount for the Gateway
	*
	* @var numeric
	*/
	const MIN_AMOUNT = 0.5;

	/**
	* Payment method code
	*
	* @var string
	*/
	const MODULE_CODE = 'advertikon_stripe';

	/**
	* Prefix for settings data
	* If match self::MODULE_CODE - module settings will be cleaned up on unistall automatically
	*
	* @var string
	*/
	const SETTINGS_CODE = 'adk_stripe';

	/**
	* The Extension category
	*
	* @var string
	*/
	const CATEGORY = 'payment';

	/**
	* @var string MODULE_NAME Module name without vendor prefix
	*/
	const MODULE_NAME = 'stripe';

	/**
	* Currencies without cent fractional part
	*
	* @var array
	*/
	protected $_nonCentsCurrency = array( 'BIF' , 'CLP' , 'DJF' , 'GNF' , 'JPY' , 'KMF' , 'KRW' , 'MGA' , 'PYG' , 'RWF' , 'VND' , 'VUV' , 'XAF' , 'XOF' , 'XPF' , );

	/**************************** Public Methods *************************************/

	public function __construct( $registry ){
		parent::__construct( $registry );
	}

	/**
	* Get current module's label
	*
	* @return string
	*/
	public function getModuleLabel(){
		switch( $this->_moduleVersion ) {
			case self::VERSION_LIGHT :
				return self::LABEL_LIGHT;
			break;
			case self::VERSION_BASE :
				return self::LABEL_BASE;
			break;
			case self::VERSION_PRO :
				return self::LABEL_PRO;
			break;
			default :
				return 'Undefined';
			break;
		}
	}

	/**
	* Get module name without vendor prefix
	*
	* @return string
	*/
	public function getModuleName(){
		return self::MODULE_NAME;
	}

	/**
	* Get module code
	*
	* @return string
	*/
	public function getModuleCode(){
		return self::MODULE_CODE;
	}

	/**
	* Get full module code
	*
	* @return string
	*/
	public function getFullModuleCode(){
		return self::CATEGORY . '/' . self::MODULE_CODE;
	}

	/**
	* Get module category
	*
	* @return string
	*/
	public function getModuleCategory(){
		return self::CATEGORY;
	}

	/**
	* Get prefix for config non uninstalled settings
	*
	* @var string
	*/
	public function getConfigPrefix(){
		return self::SETTINGS_CODE . '_';
	}

	/**
	* Get config for required system config settings
	*
	* @var string
	*/
	public function getSystemConfigPrefix(){
		return self::MODULE_CODE . '_';
	}

	/**
	* Check minimum total amount for the Gateway
	*
	* @param numeric $amount
	* @param string $currencyCode
	* @return boolean|numeric
	*/
	public function checkMinAmount( $amount , $currencyCode ) {
		$amount = is_numeric( $amount ) ? $amount : 0;
		$amount = $this->currency->convert( $amount , $currencyCode , self::DEFAULT_CURRENCY_CODE );
		if( $amount >= self::MIN_AMOUNT ) {
			return true;
		}

		return $this->currency->convert( self::MIN_AMOUNT , self::DEFAULT_CURRENCY_CODE , $currencyCode );
	}

	/**
	* Get publishable key
	*
	* @return string
	*/
	public function getPublicKey(){
		return $this->getConfigValue( self::CONFIG_SANDBOX ) ? $this->getConfigValue( self::CONFIG_TEST_PUBLIC_KEY ) : $this->getConfigValue( self::CONFIG_LIVE_PUBLIC_KEY );
	}

	/**
	* Get secret key
	*
	* @return string
	*/
	public function getSecretKey(){
		return $this->getConfigValue( self::CONFIG_SANDBOX ) ? $this->getConfigValue( self::CONFIG_TEST_SECRET_KEY ) : $this->getConfigValue( self::CONFIG_LIVE_SECRET_KEY );
	}

	/**
	* Get link to Confirm Order Pade
	*/
	public function getConfirmOrderUrl(){
		return $this->url->link( 'payment/advertikon_stripe/order' , '' , 'SSL' );
	}

	/**
	* Get Stripe Customer Object
	*
	* @return Object
	*/
	public function getOcStripeCustomerById(){
		$customer = Advertikon::getResource( 'stripe/stripe_customer' );
		$customer->load( $this->customer->getId() , 'oc_customer_id' );
		return $customer;
	}

	/**
    * Convert aumont in cents
    *
    * @param number
    * @param string
    */
   	public function amountToCents( $amount , $currency ){
   		if( in_array( strtoupper( $currency ) , $this->_nonCentsCurrency ) ) {
   			return (int)$amount;
   		}
   		return (int)( $amount * 100 );
   	}

   	/**
    * Convert cents to amount
    *
    * @param integer
    * @param string
    * @return number
    */
   	public function centsToAmount( $cents , $currency ){
   		if( in_array( strtoupper( $currency ) , $this->_nonCentsCurrency ) ) {
   			return (int)$cents;
   		}
   		return $this->currency->formar( $cents / 100 , $currency , 1 , false );
   	}

	/**
	* Get order price depend on settings
	*
	* @param Array $order
	* @return Array
	*/
	public function getPrice( $order ) {
		$price = array();
		switch( $this->getConfigValue( self::CONFIG_PAYMENT_CURRENCY ) ) {
			case self::CURRENCY_ORDER :
				$price[ 'currency' ] 	= $order[ 'currency_code' ];
				$price[ 'amount' ] 		= $this->amountToCents( $order[ 'total' ] * $order[ 'currency_value' ] , $price[ 'currency' ] );
			break;
			case self::CURRENCY_STORE :
				$price[ 'currency' ] 	= $this->config->get( 'config_currency' );
				$price[ 'amount' ] 		= $this->amountToCents( $order[ 'total' ] , $price[ 'currency' ] );
			break;
			default : 
				$this->logException( $this->__( 'Invalid Payment Currency Choise' ) );
			break;
		}
		return $price;
	}

	/**
	* Authorize and Capture payment
	*
	* @param Array $order
	* @param Object $data
	* @throws Exception
	*/
	public function authorizeCapture( $order , $data ){
		$this->_charge( $order , $data , true );
	}

    /**
    * Authorize payment
    *
    * @param Array $order
    * @param Object $data
    * @throws Advertikon_Stripe_Exception
    */
    public function authorize( $order , $data ){
    	$this->_charge( $order , $data );
    }

    /**
    * Make payment
    *
    * @throws Exception
    */
    public function pay(){

    	$order_id = $this->session->data[ 'order_id' ];
    	if( ! isset( $order_id ) ) { 
    		$this->logException( $this->__( 'Order ID missing' ) ); 
    	}

    	$exOrderModel = Advertikon::getExtendedModel( 'checkout_order' );
    	if( ! $order = $exOrderModel->getOrder( $order_id ) ) {
    		$this->logException( $this->__( 'Corresponding order missing' ) );
    	}

    	if( isset( $exOrderModel->getAdditionalData( $order_id , 'payment' )->charge ) ) {
			$this->logException( $this->__( 'The order "#%s" was already placed' , $this->session->data[ 'order_id' ] ) );
    	}

    	$this->setOrder( $order );

    	$data = $this->_validate();

		switch(  $this->getConfigValue( self::CONFIG_PAYMENT_METHOD ) ) {
			case self::PAYMENT_AUTHORIZE : 
				$this->authorize( $order , $data );
			break;
			case self::PAYMENT_AUTHORIZE_CAPTURE : 
				$this->authorizeCapture( $order , $data );
			break;
			default :
				$this->logException( $model->__( 'Undefined payment method' ) , '\Advertikon\Exception' );
			break;
		}
    }

    /**
    * Whether to make records at Stripe Dashboard
    *
    * @return boolean
    */
    public function storeCardData(){
    	return $this->getConfigValue( self::CONFIG_SAVE_CC ) && $this->customer->isLogged();
    }

    /**
    * Validate card token
    * Create customer record or new card on Stripe side
    *
    * @return Object
    * @throws Exception
    */
    protected function _validate(){

    	$this->log( $this->getLogStartLine( 'Payment Validation' ) );

    	$return = new \stdClass;

    	$token = isset( $this->request->post[ 'token' ] ) ? $this->request->post[ 'token' ] : '';
    	//throw Exception on empty
    	$this->_checkToken( $token , false );

		//do not save credit card in Stripe
    	if( ! $this->storeCardData() ) {
    		$this->log( 'No need to store CC in Srtripe. Stop validation' );
    		$this->log( $this->getLogEndLine( 'Payment Validation' ) );
    		$return->token = $token;
    		return $return;
    	}

    	$this->log( 'Credit card data should be stored in Stripe' );

    	$this->setApiKey();

    	$ocStripeCustomer = $this->getOcStripeCustomerById();

    	//flag to create new customer
    	$needToCreateNewCustomer = true;

    	//we have already that Stripe customer
    	//obtaine stripeApiCard object, stripeApiCustomer Object
    	if( $ocStripeCustomer->isRegisteredWithStripe() ) {

    		$this->log( 'Stripe Customer already exists' );

	    	//fetch customer from Stripe
	    	try{
    			$stripeApiCustomer = $this->call( '_fetchApiCustomer' , null , array( $ocStripeCustomer->getStripeId() ) );
	    		//check if customer was deleted on Stripe side
	    		if( ! $this->_isDeleted( $stripeApiCustomer ) ) {
	    			$needToCreateNewCustomer = false;
	    		}
	    	}
	    	catch( Exception $e ) {

	    	}

    		if( ! $needToCreateNewCustomer ) {

	    		//add new card to customer
	    		$newApiCard = $this->call( '_addApiCard' , null , array( $stripeApiCustomer , $token ) );

	    		//if card alresdy exists (duplicated fingerprints)
	    		if( $initialApiCard = $this->_cardLookup( $stripeApiCustomer , $newApiCard ) ) {
	    			/*
		    		* If that card already exists at Stripe - same fingerprint - delete duplicated card
		    		* and use initial card instance stored at Stripe
		    		* All this mess because of Stripe does not expose card fingerprint at card token - only at card object
	    			*/
	    			$this->call( '_deleteApiCard' , null , array( $newApiCard ) );
	    			$stripeApiCard = $initialApiCard;
	    		}
	    		else {
	    			$stripeApiCard = $newApiCard;
	    		}
	    		
	    		//make this card default card if we had such setting
    			if( false ) {
    				$this->call( '_setActiveCard' , null , array( $stripeApiCustomer , $stripeApiCard->id ) );
    			}
			}
		}
		//if we don't have this customer in Stripe - create new Stripe customer
    	//obtaine stripeApiCard object, stripeApiCustomer object
    	if( $needToCreateNewCustomer ) {
    		$this->log( 'Stripe customer does not exists' );

	    	$customerData = array(
					"description"	=> $this->evalString( $this->getConfigValue( self::CONFIG_CUSTOMER_DESCRIPTION ) ),
					"source"		=> $token,
					"email"			=> $this->customerEmail(),
					"metadata"		=> array(

						),
				);

	    	$stripeApiCustomer = $this->call( '_createApiCustomer' , null , array( $customerData ) );

	    	//default card
	    	$stripeApiCard = $this->call( '_fetchApiCard' , null , array( $stripeApiCustomer ) );

	    	if( $this->customer->isLogged() ) {

	    		$this->log( 'Current customer is logged in Store' );

	    		if( $customerId = $this->customer->getId() ){
	    			//import data from Stripe customer to OC customer
		    		if( $ocStripeCustomer->setOcCustomerId( $customerId )
		    			->setStripeId( $stripeApiCustomer->id )
		    			->setDateAdded( date( 'c' ) )
		    			->save() ) {
			    		$this->log( 'OC Stripe Customer was updated/created' );
			    		$this->log( $ocStripeCustomer->debug() );
		    		}
		    		else {
		    			$this->log( 'Customer do not saved at DB' , Log::ERR );
		    		}

	    		}
	    		else {
	    			$this->log( "OC Stripe Customer was not created. Empty OC Customer ID" );
	    		}
	    	}
	    	//guest session
	    	else {
	    		$this->log( 'Current customer is guest' );
	    	}
    	}

    	$return->card = $stripeApiCard;
    	$return->customer = $stripeApiCustomer;

    	return $return;
    }

    /**
    * Check for Stripe Token Object
    *
    * @param Object
    * @param string
    * @return bool
    */
    public function isStripeApiObject( $obj , $type = null , $silent = false ){
    	if( ! $type 
    		/* Some kind of bug */
    		|| strtolower( $type ) == 'token' ) {
    		$type = 'StripeObject';
    	}
    	$typeInst = 'Stripe\\' . ucfirst(strtolower( $type ) );
    	if( $obj instanceof $typeInst ) {
    		return true;
    	}
    	$msg = $this->__( "Don't got expected '%s' object from Stripe" , $typeInst );
    	if( $silent ) {
    		$this->log(  $msg , true );
    		return false;
    	}
    	throw new AdvertikonException( $msg );
    }

    /**
    * Get config order status
    *
    * @param string $status
    * @return string
    */
    public function getOrderStatus( $status ) {
    	switch( $status ) {
    		case self::STATUS_AUTHORIZED :
    			return $this->getConfigValue( self::CONFIG_STATUS_AUTHORIZED );
    		break;
    		case self::STATUS_CAPTURED :
    			return $this->getConfigValue( self::CONFIG_STATUS_CAPTURED );
    		break;
    		case self::STATUS_VOIDED :
    			return $this->getConfigValue( self::CONFIG_STATUS_VOIDED );
    		break;
    		default : 
    			$this->logException( 'Undefined Order Status' );
    		break;
    	}
    }

    /**
    * Get Stripe object type by id
    *
    * @return string
    */
    protected function _getStripeObjType( $id ) {
    	preg_match( '/^(\w+)_/' , $id , $m );
    	switch( $m[ 1 ] ) {
    		case 'ch' :
    			return 'Charge';
    		break;
    		case 're' :
    			return 'Refund';
    		break;
    		case 'cus' :
    			return 'Customer';
    		break;
    		case 'card' :
    			return 'Card';
    		break;
    		case 'sub' :
    			return 'Subscription';
    		break;
    		default : 
    			return 'Undefined';
    		break;
    	}
    }

    /**
    * Check if object was deleted
    *
    * @param object
    * @return bool
    */
    protected function _isDeleted( $obj , $silent = true ){

    	if( $obj instanceof \Stripe\StripeObject ) {
    		$deleted = $obj->deleted === true;
    		$id = $obj->id ? $obj->id : '';
    	}
    	else {
    		$deleted = ! empty( $obj->deleted ) && $obj->deleted === true;
    		$id = isset( $obj->id ) ? $obj->id : '';
    	}

    	if( $deleted ) {
    		$msg = $this->__( "%s '#%s' was deleted" , $this->_getStripeObjType( $id ) , $id );
    		$this->log( $msg );
    		if( ! $silent ) {
    			throw new AdvertikonException( $msg );
    		}
    	}
    	return $deleted;
    }

    /**
    * Check if result of Stripe API call was successfull
    *
    * @param object
    * @return bool
    */
    protected function _isSuccess( $obj ){
    	return ( $obj instanceof \Stripe\StripeObject ) && $obj->status !== 'failed';
    }

    /**
    * Fetch error message from Stripe Object
    *
    * @param object
    * @return string
    */
    protected function _getError( $obj ){
    	if( ( $obj instanceof \Stripe\StripeObject ) && $msg = $obj->failure_message ) {
    		return $msg;
    	}
    	return '';
    }

    /**
    * Whether payment will be made not in Order currency
    *
    * @return boolean
    */
    public function isDifferentPaymentCurrency(){
    	return ( $this->getConfigValue( self::CONFIG_PAYMENT_CURRENCY ) != self::CURRENCY_ORDER && $this->config->get( 'config_currency' ) != $this->getCurrencyCode() );
    }

    /**
    * Get currency code by caurrency ID
    *
    * @return String
    */
    public function getCurrencyCode() {
    	if( version_compare( VERSION , '2.2.0.0' , '>=' ) ) {
    		return $this->session->data[ 'currency' ];
    	}
    	else {
    		return $this->currency->getCode();
    	}
    }

    /**
    * Type hinting for \Stripe\StripeObjects
    *
    * @param Object $obj
    * @param string
    * @param string $pos
    * @param string $method
    * @throws AdvertikonException on type mistatch 
    */
    public function typeHint( $obj , $type , $pos , $method ) {
    	if( ! $this->isStripeApiObject( $obj , $type , true ) ) { 
			$this->logException( $this->__( "%s argument for method '%s' must be '%s' instance" , $pos , $method , '\Stripe\\' . ucfirst( $type ) ) , '\Advertikon\Exception' );
		}
    }

    /**
	* Log exeption message and throw Exception
	* Local instance @see \Advertikon\Model::logException()
	*
	* @param mixed $msg
	* @throws \Advertikon\Exception
	*/
	public function logException( $msg , $exceptionType = null ){
		$exceptionType = $exceptionType ?: __NAMESPACE__ . '\Exception'; 
		parent::logException( $msg , $exceptionType );
	}

    /*************************************** Protected Methods *******************************************************/

    /**
    * Lookup for duplicated cards on Customer
    *
    * @param Stripe_Customer
    * @param Stripe_Card
    * @return Stripe_Card
    * @throws Exception
    */
    protected function _cardLookup( $customer , $card ) {

    	$this->typeHint( $customer , 'customer' , 'First' , __METHOD__  );
    	$this->typeHint( $card , 'card' , 'Second' , __METHOD__  );

    	if( empty( $card->fingerprint ) ) {
    		$this->log( 'Card lookup: searched card finherprint is missing. Stop lookup' );
    		return false;
    	}

    	$this->isStripeApiObject( $card , 'card' );
    	$duplicatedCard = null;

    	$cardsList = $this->_fetchApiCardsAll( $customer );
    	foreach( $cardsList as $oldCard ) {
    		if( $card->fingerprint == $oldCard->fingerprint && $card->id != $oldCard->id ) {
    			$duplicatedCard = $oldCard;
    			$this->log( 'Card lookup: duplicated card found' );
    			break;
    		}
    	}
    	return $duplicatedCard;
    }

    /**
    * Whether use token as charge source
    *
    * @return boolean
    */
    protected function _useToken(){
    	return ! $this->storeCardData();
    }

    /**
    * Create Charge
    *
    * @param Array $order
    * @param Object $data
    * @param boolean $capture
    * @throws Exception
    */
    protected function _charge( $order , $data , $capture = false ){

    	$this->log( $this->getLogStartLine( 'Charge' ) );

   		$price = $this->getPrice( $order );

    	$this->log( $this->__( "Payment of %s %s. Capture - '%s'" , $price[ 'amount' ] , $price[ 'currency' ] , $capture ? 'true' : 'false'  ) );

    	if( ( $minAmount = $this->checkMinAmount( $price[ 'amount' ] , $price[ 'currency' ] ) ) !== true ) {
    		$this->logException( $this->__( 'Total amount can not be less then %s' , $this->currency->format( $minAmount , $price[ 'currency' ] , 1 ) ) , 'Exception' );
    	} 

   		$this->setApiKey();
   		
    	$chargeObj = array(
			'amount'		=> $price[ 'amount' ],
			'currency'		=> $price[ 'currency' ],
			'capture'		=> $capture,
			'description'	=> $this->evalString( $this->getConfigValue( self::CONFIG_CHARGE_DESCRIPTION ) ),		
			'metadata'		=> array(
								'orderId'			=> $order[ 'order_id' ],
								/*'website'			=> $this->websiteName() , 
								'store Group'		=> $this->storeGroupName(),
								'store'				=> $this->storeName() ,
								'email'				=> $this->customerEmail(),
								'orderIncrement'	=> $this->orderId(),
								'paymentId'			=> $payment->getEntityId(),*/
								),
		);

		if( $this->_useToken() ) {
			if( empty( $data->token ) ) {
				$this->logException( $this->__( 'Stripe Card Token missing' ) );
			}
			$chargeObj[ 'source' ] = $data->token;
		}
		else {

			if( ! isset( $data->customer ) || ! ( $data->customer instanceof \Stripe\Customer ) ) {
	    		$this->logException( 'Missing Stripe Customer Object' , '\Advertikon\Exception' );
	    	}

	    	if( ! isset( $data->card ) || ! ( $data->card instanceof \Stripe\Card ) ) {
	    		$this->logException( 'Missing Stripe Card Object' , '\Advertikon\Exception' );
	    	}

			if( ! $data->customer->id  ) {
				$this->logException( $this->__( 'Missing customer ID' ) ); 
			}

	   		if( ! $data->card->id  ) {
				$this->logException( $this->__( 'Missing card ID' ) );
			}

			$chargeObj[ 'customer' ] = $data->customer->id;
			$chargeObj[ 'source' ] = $data->card->id; 
		}

		if( $statmentDescriptor = $this->getConfigValue( self::CONFIG_STATEMENT_DESCRIPTOR ) ) {
			$chargeObj[ 'statement_descriptor' ] = $statmentDescriptor;
		}

		$stripeApiCharge = $this->call( '_createApiCharge' , null , array( $chargeObj ) );

		$orderModel = Advertikon::getExtendedModel( 'checkout_order' );
		$orderModel->addOrderHistory( $order[ 'order_id' ] , $this->getOrderStatus( $capture ? self::STATUS_CAPTURED : self::STATUS_AUTHORIZED ) , $this->session->data[ 'comment' ] , $this->config->get( 'config_order_mail' ) );
		$orderModel->setAdditionalData( $order[ 'order_id' ] , 'charge' , $stripeApiCharge->__toArray( true ) , 'payment' );

		//authorize action do not produce balance transaction
		if( $stripeApiCharge->balance_transaction ) {
			$orderModel->addAdditionalData( $order[ 'order_id' ] , 'transaction' , array( 'capture' => $stripeApiCharge->balance_transaction ) , 'payment' );
			$this->log( sprintf( 'Set transaction ID #%s to order' , $stripeApiCharge->balance_transaction ) );
		}

		$this->log( $this->getLogEndLine( 'Charge' ) );
    }

    /**
    * Check card token
    *
    * @param string $token
    * @param boolean $silent
    * @return boolean
    * @throws Advertikon\Stripe\Exception
    */
    protected function _checkToken( $token , $silent = true ) {
    	$valid = !! trim( $token );
    	if( $valid ) {
    		return true;
    	}
    	if( $silent ) {
    		return false;
    	}
    	$this->logException( $this->__( 'Invalid Card Token' ) );
    }

	/*********************************** APIs ***************************************************/

	/**
	* Set Stripe API key
	*
	* @param bool
	*/
	public function setApiKey( $secret = true ){
		$key = $secret ? $this->getSecretKey() : $this->getPublicKey();
		\Stripe\Stripe::setApiKey( $key );
		$msg = $secret ? 'Set secret API key "'  . $this->obscureStr( $key ) . '"' : 'Set public API key "'  . $key . '"';
    	$this->log( $msg );
	}

	/**
	* Create Stripe Card Token
	*
	* @param array
	* @return object
	*/
	protected function _createApiToken( $param ){

		$stripeApiToken = \Stripe\Token::create( array( 'card' => $param ) );

		//throw Exception if not a Token
		$this->isStripeApiObject( $stripeApiToken , 'token' );

		$this->log( 'Create API card token' );
		$this->log( $stripeApiToken->__toJSON() );

		return $stripeApiToken;
	}

	/**
	* Create customer on Stripe side
	*
	* @param array
	* @return object
	*/
	protected function _createApiCustomer( array $data ){

		$stripeApiCustomer = \Stripe\Customer::create( $data );

		//throw Exception if not customer
		$this->isStripeApiObject( $stripeApiCustomer , 'customer' );

		$this->log( 'Customer created in Stripe' );
		$this->log( $stripeApiCustomer->__toJSON() );

		return $stripeApiCustomer;
	}

	/**
	* Fetch customer on Stripe side
	*
	* @param string
	* @return object
	*/
	protected function _fetchApiCustomer( $stripeCustomerId ){

		$stripeApiCustomer = \Stripe\Customer::retrieve( $stripeCustomerId );

		//throw Exception if not customer
		$this->isStripeApiObject( $stripeApiCustomer , 'customer' );

		$this->log( 'Customer fetched from Stripe' );
		$this->log( $stripeApiCustomer->__toJSON() );

		return $stripeApiCustomer;
	}

	/**
	* Fetch all Stripe side customers
	*
	* @return array
	*/
	protected function _fetchApiCustomerAll( Array & $customers = null , $count = 0 ){

		if( $count >= self::MAX_REQUEST_COUNT ) {
			$this->logException( $this->__( "Maximum request (%s) to Stripe server reached" , $count ) , 'Advertikon\Exception' );
		}

		$options = array( 'limit' => 100 );

		if( $customers ) {

			if( empty( $customers[ count( $customers ) - 1 ] ) ) {
				$this->logException( $this->__( "For some reason last element of customers Array is empty" ) , '\Advertikon\Exception' );
			}

			$lastCustomer = $customers[ count( $customers ) - 1 ];

			//throw Exception if not a Customer
			$this->isStripeApiObject( $lastCustomer , 'customer' );

			$options[ 'starting_after' ] = $lastCustomer->id;
		}

		$stripeApiCustomerList = Stripe_Customer::all( $options );
		$count++;

		//throw Exception if not List
		$this->isStripeApiObject( $stripeApiCustomerList , 'list' );

		if( ! $customers ) {
			$customers = $stripeApiCustomerList->data;
		}
		else {
			$customers = array_merge( $customers , $stripeApiCustomerList->data );
		}

		if( $stripeApiCustomerList->has_more ) {
			$this->_fetchApiCustomerAll( $customers , $count );
		}

		$this->log( $this->__( " %s Stripe Customers was fetched" , count( $customers ) ) );
		return $customers;
	}

	/**
	* Delete customers at Stripe side
	*
	* $param array
	* @return bool
	*/
	protected function _deleteApiCustomersAll( $filter = array() , $ignore = true ){

		$this->log( $this->getLogStartLine( 'Customer Delition' ) );

		$customers = $this->_fetchApiCustomerAll();

		$skipped = 0;
		$deleted = 0;
		$error = 0;

		$filterId = isset( $filter[ 'id' ] ) ? $filte[ 'id' ] : null;

		foreach( $customers as $customer ){

			if( $filterId === $customer->id ) {
				$this->log( $this->__( "Customer with ID #%s was skipped" , $customer->id ) );
				$skipped++;
				continue;
			}

			if( $this->_deleteApiCustomer( $customer , $ignore ) ) {
				$deleted++;
			}
			else {
				$error++;
			}
		}

		$this->log( $this->__( 'Deletion details: deleted - %s, skipped - %s , error - %s' , $deleted , $skipped , $error ) );
		$this->log( $this->getLogEndLine( 'Customer Delition' ) );
	}

	/**
	* Delete customer at Stripe side
	*
	* @param Stripe_Customer|string
	* @return bool
	*/
	protected function _deleteApiCustomer( $customer , $ignore = false ){

		if( ! $customer instanceof \Stripe\Customer && ! is_string( $customer ) ) {
			$msg = $this->__( "Can not delete Stripe customer: invalid customer instance");
			$this->log( $msg , Log::ERR );
			if( $ignore ) {
				return false;
			}
			else {
				throw new \Advertikon\Exception( $msg );
			}
		}

		if( is_string( $customer ) ) {
			$customer = $stripeApiCustomer = $this->_fetchApiCustomer( $customer );
		}
		
		$delete = $customer->delete();

		if( $this->_isDeleted( $delete ) ) {
			return true;
		}
		else {
			$msg = $this->__( "Stripe customer #'%s' was not deleted" , $stripeApiCustomer->id );
			if( $ignore ) {
				$this->log( $msg , true );
				return false;
			}
			$this->logException( $msg , '\Advertikon\Exception' );
		}
	}

	/**
	* Fetch card on Stripe side
	*
	* @param Stripe_Customer
	* @param string
	* @return Stripe_Card
	*/
	protected function _fetchApiCard( $stripeApiCustomer , $cardId = null ) {

		$this->typeHint( $stripeApiCustomer , 'customer' , 'First' , __METHOD__  );

		if( ! $cardId ) {
			$cardId = $stripeApiCustomer->default_source;
		}
		if( ! $cardId ) {
			$this->logException( $this->__( "Can't fetched default card ID from Customer Object" ) , '\Advertikon\Exception' );
		}
		$stripeApiCard = $stripeApiCustomer->sources->retrieve( $cardId );

		//throw Exception if not a Card
		$this->isStripeApiObject( $stripeApiCard , 'card' );

		$this->log( 'Card fetched from Stripe' );
		$this->log( $stripeApiCard->__toJSON() );

		return $stripeApiCard;
	}

	/**
	* Add card to customer souurses on Stripe side
	*
	* @param Stripe_Customer
	* @param string
	* @return Stripe_Card
	*/
	protected function _addApiCard( $stripeApiCustomer , $stripeApiToken ){

		$this->typeHint( $stripeApiCustomer , 'customer' , 'First' , __METHOD__  );

		$stripeApiCard = $stripeApiCustomer->sources->create( array( 'source' => $stripeApiToken ) );

		//throw Exception if not a Card
		$this->isStripeApiObject( $stripeApiCard , 'card' );

		$this->log( 'Card added to Customer sources on Stripe side' );
		$this->log( $stripeApiCard->__toJSON() );

		return $stripeApiCard;
	}

	/**
	* Replace sources with card and make it default
	*
	* @param Stripe_Customer
	* @param string
	* @return Stripe_Card
	*/
	protected function _setApiCard( $stripeApiCustomer , $stripeApiToken ){

		$this->typeHint( $stripeApiCustomer , 'customer' , 'First' , __METHOD__  );
		$this->typeHint( $stripeApiToken , 'token' , 'Second' , __METHOD__  );

		$stripeApiCard = $stripeApiCustomer->source = $stripeApiToken ;

		//throw Exception if not a Card
		$this->isStripeApiObject( $stripeApiCard , 'card' );

		$stripeApiCustomer->save();

		$this->log( 'Replace customer source with Card' );
		$this->log( $stripeApiCard->__toJSON() );

		return $stripeApiCard;
	}

	 /**
	* Fetch all Stripe side cards
	*
	* @param Stripe_Customer
	* @param Array
	* @param integer
	* @return array
	* @throws Exception
	*/
	protected function _fetchApiCardsAll( $customer , Array & $cards = null , $count = 0 ){

		$this->typeHint( $customer , 'customer' , 'First' , __METHOD__  );

		//Stripe Customer always contaoin last 10 cards, so if total count less then 10 - that's all customers cards
		if( count( $customer->sources->data ) < 10 ) {
			$cardList = $customer->sources->data;
			$this->log( $this->__( " %s Stripe Card(s) was fetched (from Customer object)" , count( $cardList ) ) );
			return $cardList;
		}

		if( $count >= self::MAX_REQUEST_COUNT ) {
			$this->logException( $this->__( "Maximum request (%s) to Stripe server reached" , $count ) , '\Advertikon\Exception' );
		}

		$options = array( 'limit' => 100 , 'object' => 'card' , );

		if( $cards ) {

			if( empty( $cards[ count( $cards ) - 1 ] ) ) {
				$this->logException( $this->__( "For some reason last element of cards Array is empty" ) , '\Advertikon\Exception' );
			}

			$lastCard = $cards[ count( $cards ) - 1 ];

			//throw Exception if not a Card
			$this->isStripeApiObject( $lastCard , 'card' );

			$options[ 'starting_after' ] = $lastCard->id;
		}

		$stripeApiCardList = $customer->sources->all( $options );
		$count++;

		//throw Exception if not List
		$this->isStripeApiObject( $stripeApiCardList , 'list' );

		if( ! $cards ) {
			$cards = $stripeApiCardList->data;
		}
		else {
			$cards = array_merge( $cards , $stripeApiCardList->data );
		}

		if( $stripeApiCardList->has_more ) {
			$this->_fetchApiCardsAll( $customer , $cards , $count );
		}

		$this->log( $this->__( " %s Stripe Card(s) was fetched" , count( $cards ) ) );
		return $cards;
	}

	/**
	* Delete card at Stripe side
	*
	* @param Stripe_Customer
	* @param string
	* @throws Exception
	*/
	protected function _deleteApiCard( $card ) {

		$this->typeHint( $card , 'card' , 'First' , __METHOD__  );

		$this->isStripeApiObject( $card , 'card' );
		$deleted = $card->delete();
		if( ! $this->_isDeleted( $deleted ) ) {
			$this->logException( $this->__( "Error occured while deleting card '%s' at Stripe side" , $card->id ) , '\Advertikon\Exception' );
		}
	}

	/**
	* Set default source to Customer
	*
	* @param Scripe_Customer
	* @param string
	* @throws Exception
	*/
	protected function _setActiveCard( $customer , $cardId ) {

		$this->typeHint( $customer , 'customer' , 'First' , __METHOD__  );

		$customer->default_source = $cardId;
		$customer->save();
	}

	/**
	* Charge Stripe customer
	*
	* @param array
	* @return object
	*/
	protected function _createApiCharge( $data ){

		$stripeApiCharge = \Stripe\Charge::create( $data );

		//throw Exception if not a Charge
		$this->isStripeApiObject( $stripeApiCharge , 'charge' );

		$this->log( 'Create charge on Stripe side' );
		$this->log( $stripeApiCharge->__toJSON() );

		if( ! $this->_isSuccess( $stripeApiCharge ) ) {
			if( $stripeApiError = $this->_getError( $stripeApiCharge) )	{ 
				$this->logException( $stripeApiError );
			}
			$this->logException( $this->__( 'Error while creating charge on Stripe side' ) , '\Advertikon\Exception' );
		}

		return $stripeApiCharge;
	}

	/**
	* Call Stripe API functions
	*
	* @param string
	* @param string
	* @param array
	* @return mixed
	*/
	public function call( $method , $exceptionType = null , $args = array() ){
		$exceptionType = $exceptionType ?: __NAMESPACE__ . '\Exception';
		if( is_callable( array( $this , $method ) ) ) {
			try {
				return call_user_func_array( array( $this , $method ), $args );
			}
			catch( \Stripe\Error\Base $e ) {
				if( ( $err = $e->getJsonBody() ) && isset( $err[ 'error' ][ 'message' ] ) ) {
					$msg = $err[ 'error' ][ 'message' ];
					if( isset( $err[ 'error' ][ 'decline_code' ] ) ) {
						$msg .= ' ( ' . $err[ 'error' ][ 'decline_code' ] . ' )';
					}
				}
				else {
					$msg = $e->getMessage();
				}
				throw new $exceptionType( $msg );
			}
			catch( Exception $e ) {
				throw new AdvertikonException( $e->getMessage() );
			}
		}
		throw new AdvertikonException( $this->__( 'Method %s::%s is not callable' , __CLASS__ , $method ) );
	}
}
?>
