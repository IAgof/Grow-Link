<?php
/**
* Advertikon Stripe Customer Resource
*
* @author Advertikon
* @package Stripe
* @version 2.2.0.4
*/

namespace Advertikon\Stripe\Resource\Stripe;

use \Advertikon\Resource;

class Customer extends Resource{

	protected $_tableName = 'advertikon_stripe_customer';
	protected $_fieldName = 'oc_customer_id';

	/**
	* Whether current customer has record at Stripe Dashboard
	*
	* @return boolean
	*/
	public function isRegisteredWithStripe(){
		return !! $this->getStripeId();
	}

}