<?php
/**
* Advertikon Stripe Common Controller
*
* @author Advertikon
* @package Stripe
* @version 2.2.0.4
*/

namespace Advertikon\Stripe;

use \Advertikon\Controller as AdvertikonController;

class Controller extends AdvertikonController{

	/*protected $rebilling_periods;
	protected $available_ps;
	protected $decimalZero;
	protected $stripePlans;*/

	public function __construct( $registry ){

		parent::__construct( $registry );
	}

/********************************** Protected Methods *******************************************/



/**************************************** APIs ********************************************************************/


	/*protected function createCustomer( Array $data ){
		$return = new stdClass();

		if( empty( $data[ 'email' ] ) )
		{
			$return->error = 'Customer Email missing';
			return $return;
		}

		$mandatory = array( 'description' => null , 'source' => null , 'metadata' => null );
		foreach( $mandatory as $key => $val ){
			if( ! isset( $data[ $key ] ) )
				$data[ $key ] = $val;
		}

		$this->setApiKey();
		$this->debugLog->write( __METHOD__ . ' call' , $data );
		$customer = $this->call( 'Stripe_Customer::create' ,  array( $data ) );
		$this->debugLog->write( __METHOD__ . ' response' , $customer );

		if( isset( $customer->id ) )
		{
			$customer->customer_id = $this->customer->getId();
			$this->load->model( 'payment/stripe_payments' );
			$this->model_payment_stripe_payments->addTransaction( array( 'type' => TRANSACTION_CREATE_CUSTOMER , 'customer_ref' => $customer->id ) );
		}
		return $customer;
	}

	protected function createCharge( $data ){
		$return = new stdClass();

		if( empty( $data[ 'customer' ] ) )
		{
			$return->error = 'Customer is Missing';
			$this->debugLog->throwError( __METHOD__ . " - Customer is missing" );
			return $return;
		}

		$this->language->load( 'payment/stripe_payments' );

		if( empty( $data[ 'amount' ] ) || (float)$data[ 'amount' ] <= 0 )
		{
			$return->error = $this->language->get( 'error_invalid_amount' );
			$this->debugLog->throwError( __METHOD__ . ' - amount is missing' );
			return $return;
		}

		if( empty( $data[ 'currency' ] ) )
		{
			$return->error = $this->language->get( 'error_missing_currency' );
			$this->debugLog->throwError( __METHOD__ . ' - amount is missing' );
			return $return;
		}

		$mandatory = array( 'description' => null , 'receipt_email' => null , 'metadata' => null , 'customer' => null , 'statement_descriptor' => null , 'shipping' => null );
		foreach( $mandatory as $key => $val ){
			if( ! isset( $data[ $key ] ) )
				$data[ $key ] = $val;
		}

		$this->setApiKey();
		$this->debugLog->write( __METHOD__ . ' call' , $data );
		$charge = $this->call( 'Stripe_Charge::create' ,  array( $data ) );
		$this->debugLog->write( __METHOD__ . ' response' , $charge );

		if( isset( $charge->id ) )
		{
			$this->load->model( 'payment/stripe_payments' );
			$this->model_payment_stripe_payments->addTransaction( array( 'type' => TRANSACTION_CREATE_CHARGE , 'charge_ref' => $charge->id , 'amount'	=> $charge->amount , 'status' => $charge->status , ) );
		}
		return $charge;
	}*/
}
?>