<link rel="stylesheet" type="text/css" href="<?php echo $model->config->get('config_ssl'); ?>catalog/view/theme/default/stylesheet/Advertikon/Stripe/form.min.css">
<?php if( $model->isDifferentPaymentCurrency() ) : ?>
<div id="currency-notification" class="currency-notification"><?php echo $model->__( 'Your card will be charged for' ) . ' ' . $model->currency->format( $model->getOrderTotal() , $model->config->get( 'config_currency' ) ); ?></div>
<?php endif; ?> 
<form action="" method="POST" id="payment-form" class="form-horizontal payment-form">
	<div id="msgBox" role="alert"><i></i><span style="margin-left:10px;"></span></div>
	<div class="content col-sm-6 sp-payment" id="payment">
		<div class="row" id="header" class="header">
			<div class="col-sm-12">
				<h2 class="sp-header"><?php echo $model->__( 'Payment Card Data' ); ?></h2>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-12">
				<div class="credit-cards">
					<img id="credit-cards-background" class="credit-cards-background" src="catalog/view/theme/default/image/Advertikon/Stripe/stripe-cc-logos.png">
					<div id="credit-cards-highlight" class="credit-cards-highlight"></div> 
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for='cc-number'>
				<?php echo $model->__( 'Card Number' ); ?>
			</label>
			<div class="col-sm-8">
				<input type="text" id="cc-number" class="form-control" data-stripe="number" value="" >
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="cc-month">
				<?php echo $model->__( 'Expiration date' ); ?>
			</label>
			<div class="col-sm-4 strict-dim" style="margin-top:10px">
				<select id="cc-month" data-stripe="exp-month" class="form-control">
					<?php foreach ( $model->getOptionsFromSource( 'month' ) as $month) : ?> 
					<option value="<?php echo $month[ 'value' ]; ?>"><?php echo $month[ 'text' ]; ?></option>
					<?php endforeach; ?>
				</select>
			</div>
			<div class="col-sm-4 strict-dim" style="margin-top:10px">
				<select id="cc-year" data-stripe="exp-year" class="form-control"> 
					<?php foreach ( $model->getOptionsFromSource( 'nextyears' ) as $year) : ?>
					<option value="<?php echo $year[ 'value' ]; ?>"><?php echo $year[ 'text' ]; ?></option>
					<?php endforeach; ?>
				</select>
			</div>
		</div>
		<?php if( $model->getConfigValue( Advertikon\Stripe\Model::CONFIG_CVC_CHECK ) ) : ?>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="cc-cvv">
				<?php echo $model->__( 'CVV code' ); ?>
			</label>
			<div class="col-sm-8">
				<input id="cc-cvv" type="password" data-stripe="cvc" value="" class="form-control" >
			</div>
		</div>
		<?php endif; ?>
		<div class="form-group">
			<div class="col-sm-8 col-sm-push-4">
				<button type="button" class="btn btn-primary" id="button-confirm" data-loading-text="Processing"><?php echo $button_confirm; ?></button>
			</div>
		</div>
	</div>
	<?php if( $model->getConfigValue( 'show_card_image' ) ) : ?>
	<!--[if gt IE 8]>-->
	<div class="col-sm-6">
		<div id="sp-container" class="sp-container">
			<div id="sp-card" class="sp-card">
				<div id="sp-face" class="sp-face">
					<div class="sp-code">
						<input id="sp-code-1" class="sp-code-field">
						<input id="sp-code-2" class="sp-code-field">
						<input id="sp-code-3" class="sp-code-field">
						<input id="sp-code-4" class="sp-code-field">
					</div>  
					<div class="sp-expire">
						<input id="sp-expire" class="sp-expire-field">
					</div>
				</div>
				<div id="sp-back" class="sp-back">
					<div class="sp-cvv">
						<input id="sp-cvv" class="sp-cvv-field">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--<![endif]-->
	<?php endif; ?>
</form>
<script>
'use strict';

	function isStripeLoaded(){
		if( 'querySelectorAll' in document ) {
			return !! document.getElementsByTagName( 'head' )[ 0 ].querySelectorAll( 'script[src*="js.stripe.com"]' ).length;
		}
		return false;
	}

	if( ! isStripeLoaded() ) {
		var script = document.createElement( 'script'),
			head = document.getElementsByTagName( 'head' )[ 0 ];
		script.src = "https://js.stripe.com/v2/";
		head.appendChild( script );
		try{console.log( 'Stripe.js was loaded' );}catch(e){}
	}

	jQuery(function($){

		var
			cardExpireInput = $( '#sp-expire' ),
			cardCvvInput = $( '#sp-cvv' ),
			formNumber = $( '#cc-number' ),
			formExpMonth = $( '#cc-month' ),
			formExpYear = $( '#cc-year' ),
			formCvv = $( '#cc-cvv' ),

			$form = $( '#payment-form' ),
			$msgBox = $( '#msgBox' );

		function setApiKey(){
			Stripe.setPublishableKey( '<?php echo $model->getPublicKey(); ?>' );
		}

		function addMsg( msg , type ){

			$msgBox[ 0 ].className =  'alert alert-' + type;
			$msgBox.find( 'span' ).text( msg );

			var className = '';
			switch( type ){
				case 'danger' :
					className = 'fa-lg fa fa-exclamation-triangle';
				break;
				case 'warning' :
					className = 'fa fa-cog fa-spin urgent-2x';
				break;
				case 'success' : 
					className = 'fa-2x fa fa-check';
				break;
			}
			$msgBox.find( 'i' )[ 0 ].className = className;
		}

		/**
		* Handle response from the Stripe
		*
		* @param integer status
		* @param Object response
		*/
		var stripeResponseHandler = function( status, response ){
			
			$msgBox.find( 'img' ).remove();

			if( response.error ) {
				addMsg( response.error.message , 'danger' )
				$form.find('button').button( 'reset' );
			}
			else if( status < 300 && response.id ) {

				var spData = {
					'token' : response.id
				}

				/*if( $( '#recurring-box-toggler').is( ':checked' ) )
				{
					spData.recurring = 1,
					spData.period = $( '#erb-period' ).val(),
					spData.stopDate = $( '#erb-stop-date' ).val() ? $( '#erb-stop-date' ).val() : 0,
					spData.mailMe = $( '#erb-mail-me' ).is( ':checked' ) ? 1 : 0
				}*/

				addMsg( '<?php echo $model->__( "Placing the order..." ); ?>' , 'warning' );

				$.ajax({
					url: '<?php echo $model->getConfirmOrderUrl(); ?>',
					type: 'post',
					data: spData,
					dataType: 'text'
				})
				.done( function( resp ){

					try{console.dir( resp );}catch( e ) {}

					if( resp ) {
						var json;
						try { 
							json = JSON.parse( resp );
						}
						catch( err ) {
							addMsg( '<?php echo $model->__( "There was an error when ordering. Please use another payment method" ); ?>' , 'danger' );
						}
						if( json ) {
							if( json.error ) {
								addMsg( json.error , 'danger' );
							}
							else if( json.success ) {
								$form.find('button').attr( 'disabled' , 'disabled' );
								addMsg( '<?php echo $model->__( "Order was successfully placed" ); ?>' , 'success' );
								//take a time to read success caption
								setTimeout( function(){ document.location.assign( json.success ) } , 2000 );
							}
							else {
								addMsg( '<?php echo $model->__( "There was an error when ordering. Please use another payment method" ); ?>' , 'danger' );
							}
						}
					}
					else {
						addMsg( '<?php echo $model->__( "There was an error when ordering. Please use another payment method" ); ?>' , 'danger' );
					}
				} )
				.fail( function( err ){

					try{console.log( err );}catch(e){}

					addMsg( '<?php echo $model->__( "There was an error when ordering. Please use another payment method" ); ?>' , 'danger' );
					
				} )
				.always( function(){ $form.find('button').button( 'reset' ); });
			}
			else {
				//unrecogmized error
				addMsg( '<?php echo $model->__( "There was an error when ordering. Please use another payment method" ); ?>' , 'danger' );
			}
		}

		/**
		* Confirm order button click handler
		*/
		$('#button-confirm').on( 'click' , function( e ){

			if( ! isStripeLoaded() ) {
				alert( '<?php $model->__( "Please wait until the Stripe library will be fully loaded" ); ?>' );
				return;
			}

			$( this ).button( 'loading' );
			addMsg( '<?php echo $model->__( "Creating a token card..." ); ?>' , 'warning' );
			setApiKey();
			Stripe.card.createToken( getFormData() , stripeResponseHandler );
			return false;
		});

		/**
		* Get card date from token
		*
		* @return Object
		*/
		function getFormData(){

			var data = {};

			if( ! formNumber.val() ) {
				addMsg( '<?php echo $model->__( "You must specify the card number" ); ?>' , 'danger' );
			}

			data = {
				'number' 	: formNumber.val(),
				'exp-month'	: formExpMonth.val(),
				'exp-year'	: formExpYear.val(),
				'cvc'		: formCvv.val() ? formCvv.val() : null
			}
			<?php if( $model->getConfigValue( Advertikon\Stripe\Model::CONFIG_ZIP_CHECK ) ) : ?>
			data.address_zip = "<?php echo $model->session->data[ 'payment_address' ][ 'postcode' ]; ?>";
			<?php endif; ?>
			<?php if( $model->getConfigValue( Advertikon\Stripe\Model::CONFIG_ADDRESS_CHECK ) ) : ?>
			data.address_line1 = "<?php echo $model->session->data[ 'payment_address' ][ 'address_1' ]; ?>";
			<?php endif; ?>
			data.name = "<?php echo $model->session->data[ 'payment_address' ][ 'firstname' ] . ' ' . $model->session->data[ 'payment_address' ][ 'lastname' ]; ?>";
			return data;
		}

		/**
		* Get payment card vendor
		* Use this value to highlight vendor
		*/
		$( '#cc-number' ).on( 'input propertychange', function(){
			setApiKey();
			var cctype = Stripe.card.cardType( $( this ).val() );
			cctype = cctype.replace( /\s/g, '' ).toLowerCase();
			$( '.credit-cards-highlight' ).removeClass().addClass( 'credit-cards-highlight ' + cctype );
		} );
	
		/**
		* Format card number
		* Rotate card model and fill number value
		*/
		$( '#cc-number' ).on({
			focus : function(){
				showFront();
				$( '.sp-code > input' ).each( function( elem ){ makeActive( elem ); } );
			},
			blur : function(){
				$( '.sp-code > input' ).each( function( elem ){ deactive( elem ); } );
			},
			input : function(){
				var $input = $( this ),
					pos = getCaretPosition( this ),
					rawText = this.value,
					str = $input.val().replace( /[^0-9]/g , '' ).substr( 0 , 16 ),
					code = '',
					shift = 0;

				for( var i = 0 , len = str.length ; i < len ; i++ ){
						if( i != 0 && ! ( i % 4 ) ) {
							code += ' ';
						}
						code += str[ i ];
				}

				shift = getOffset( rawText , code , pos );
				$input.val( code );
				setCaretPosition( this , pos + shift );

				$( '.sp-code-field' ).val( '' );
				for( var i = 0, list = code.split( ' ' ), len = list.length; i < len; ++i ) {
					$( '#sp-code-' + ( i + 1 ) ).val( list[ i ] );
				}
			}
		} );

		/**
		* Get offset to append to card munber string
		*
		* @param String {strIn} String from card number input
		* @param String {strOut} String from formatting to octets
		* @param Integer {pos} Cursor position
		* @return Integer
		*/
		function getOffset( strIn , strOut , pos ) {
			var offsetIn = 0,
				offsetOut = 0,
				m = strIn.slice( 0 , pos ).match( /\D/g );

			//Count of whitespaces before	
			if( m ) {
				offsetIn = m.length;
			}
			else {
				offsetIn = 0;
			}

			//Count of whitespaces after
			m = strOut.slice( 0 , pos ).match( /\D/g );
			if( m ) {
				offsetOut = m.length;
			}
			else {
				offsetOut = 0;
			}
			//Return count of new whitespaces
			return Math.max( 0 , offsetOut - offsetIn );
		}

		/**
		* Set cursor at sprcific position
		*
		* @param Object {element} DOM element
		* @param Integer {caretPos} Cursor position
		*/
		function setCaretPosition( element, caretPos ) {
			if( element != null ) {
				if( element.createTextRange ) {
					var range = elem.createTextRange();
					range.move( 'character', caretPos );
					range.select();
				}
				else {
					if( element.selectionStart ) {
					element.focus();
					element.setSelectionRange( caretPos, caretPos );
				}
				else
					element.focus();
				}
			}
		}

		/**
		* Get caret position within input element
		*
		* @param Object {element} Input DOM object
		* @return Integer
		*/
		function getCaretPosition ( element ) {
			var pos = 0;
			// IE Support
			if ( document.selection ) {
				element.focus();
				var sel = document.selection.createRange();
				sel.moveStart( 'character' , -element.value.length );
				pos = sel.text.length;
			}
			// Firefox support
			else if ( element.selectionStart || element.selectionStart == '0') {
				pos = element.selectionStart;
			}

			return pos;
		}

		/**
		* Rotate card model and fill expiration field
		*/
		$( '#cc-month, #cc-year' ).on({ 
			focus : function(){
				showFront();
				makeActive( cardExpireInput );
			},
			blur : function(){
				deactive( cardExpireInput );
			},
			change : function(){
				var month = $( '#cc-month' ).val() ? $( '#cc-month' ).val() : '  ',
					year = $( '#cc-year' ).val() ? $( '#cc-year' ).val() : '  ';
				cardExpireInput.val( month + '/' + year );
			}
		});

		/*
		* Format CVV value
		* Rotate card model and fill CVV field
		*/
		$( '#cc-cvv' ).on( {
			focus :  function(){
				showBack();
			},
			input : function(){
				var str = $( this ).val().replace( /[^\d]/g , '' ).substr( 0 , 4 );
				this.value = str;
				cardCvvInput.val( obscure( str ) );
			}
		});

		/**
		* Obscure text
		*
		* @return string
		*/
		function obscure( text ) {
			var obscureChar = '*';
			return text.replace( /./g , obscureChar );
		}

		/**
		* Show front side of card model
		*/
		function showFront(){
			$( '#sp-card' ).removeClass( 'back' ).addClass( 'front' );
		}

		/**
		* Show back side of card model
		*/
		function showBack(){
			$( '#sp-card' ).removeClass( 'front' ).addClass( 'back' );
		}

		/**
		* Make active the element
		*/
		function makeActive( element ) {
			$( element ).addClass( 'active' );
		}

		/**
		* Deactive the element
		*/
		function deactive( element ){
			$( element ).removeClass( 'active' );
		}

	});
</script>