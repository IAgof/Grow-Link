<?php
/**
* Catalog Advertikon Stripe Controller
*
* @author Advertikon
* @package Stripe
* @version 2.2.0.4
*/
class ControllerPaymentAdvertikonStripe extends Advertikon\Stripe\Controller {

	public function __construct( $registry ){
		parent::__construct( $registry );
	}

	public function index() {

		$model = Advertikon\Advertikon::getCurrentModel();

		$data[ 'button_confirm' ]	= $this->language->get('button_confirm');
		$data[ 'button_back' ]		= $this->language->get('button_back');
		$data[ 'model' ]			= $model;

		return $this->load->view( $model->getTemplateFile( 'payment/advertikon_stripe_form.tpl' ) , $data );	
	}

	/**
	* Place order
	*/
	public function order() {

		$json = array();

		$model = Advertikon\Advertikon::getCurrentModel();

		$model->log( 'Start Ordering' );

		try{

			$model->pay();
 
			$json['success'] = $this->url->link( 'checkout/success', '', 'SSL' );
		}
		catch( Advertikon\Stripe\Exception $e ) {
			$json[ 'error' ] = $e->getMessage();
		}
		catch( Advertikon\Exception $e ) {
			$json[ 'error' ] = $model->__( 'There was an error when ordering. Please try again later' );
		}
		catch( Exception $e ) {
			$model->log( $e->getMessage() , Advertikon\Log::ERR );
			$json[ 'error' ] = $model->__( 'There was an error when ordering. Please try again later' );
		}

		$this->response->setOutput( json_encode( $json ) );
	}
}
?>