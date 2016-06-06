<?php echo $header; ?>
<style scoped>
 .adk-hint{
    position: absolute;
    display: none;
    background-color: #F1F1F1;
    padding: 5px;
    z-index: 1;
    border: solid 1px #ddd;
 }
 .adk-hint:hover{
 	background-color: #D4D3D3;
 }
  #legal {
 	text-align: center;
 }
 #legal b {
 	color: #3A92FF;
 }
 #legal span {
 	color: #FF730F;
 }
 .like-us {
 	text-align: center;
    padding: 5px;
    font-style: italic;
    font-weight: bold;
 }
</style>
<?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-manufacturer" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
				<a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
			</div>
			<h1><?php echo $model->__( 'Stripe' ); ?></h1>
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
	<div class="container-fluid">
		<?php if( ! empty( $error_warning ) ) : ?>
		<div class="alert alert-danger">
			<i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php endif; ?>
		<?php if( ! empty( $error_attention ) ) : ?>
		<div class="alert alert-warning alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<strong>Warning!</strong> <?php echo $error_attention; ?>
		</div>
		<?php endif; ?>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $model->__( 'Stripe Settings' ); ?></h3>
			</div>
			<div class="panel-body">
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab-api" data-toggle="tab"><?php echo $model->__( 'API Keys' ); ?></a></li>
						<li><a href="#tab-general" data-toggle="tab"><?php echo $model->__( 'General' ); ?></a></li>
						<li><a href="#tab-system" data-toggle="tab"><?php echo $model->__( 'System' ); ?></a></li>
						<li><a href="#tab-card" data-toggle="tab"><?php echo $model->__( 'Payment card' ); ?></a></li>
						<!-- <li><a href="#tab-webhook" data-toggle="tab"><?php echo $model->__( 'Webhooks' ); ?></a></li> -->
					</ul>
					<div class="tab-content">

<!--  *********************************************************** Tab Active Start ********************************************************** -->
<!--
	/**
	* test_secret_key
	* test_public_key
	* live_secret_key
	* live_public_key
	*/
-->
						<div class="tab-pane active " id="tab-api">

							<!-- Get API Keys link Start -->
							<div class="form-group">
								<div class="col-sm-2"></div>
								<div class="col-sm-10">
									<a href="//dashboard.stripe.com/account/apikeys" target="_blank"><?php echo $model->__( 'To obtain API keys please go to' ); ?></a>
								</div>
							</div>
							<!-- Get API Keys link End -->

							<!-- Test Secret Key Start -->
							<?php $name = 'test_secret_key'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>">
									<?php echo $model->__( 'Test Secret Key' ); ?>
								</label>
								<div class="col-sm-10">
									<input type="text" name="<?php echo $model->getPrefixedName( $name ); ?>" value="<?php echo $model->getValue( $name ); ?>" class="form-control" id="input-<?php echo $name; ?>" placeholder="<?php echo $model->__( 'Test Secret Key' ); ?>" >
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Test Secret Key End -->

							<!-- Test Public Key Start -->
							<?php $name = 'test_public_key'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>">
									<?php echo $model->__( 'Test Publishable Key' ); ?>
								</label>
								<div class="col-sm-10">
									<input type="text" id="input-<?php echo $name; ?>" class="form-control" name="<?php echo $model->getPrefixedName( $name ); ?>" placeholder="<?php echo $model->__( 'Test Publishable Key' ); ?>" value="<?php echo $model->getValue( $name ); ?>" >
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Test Public Key End -->

							<!-- Live Secret Key Start -->
							<?php $name = 'live_secret_key'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>">
									<?php echo $model->__( 'Live Secret Key' ); ?>
								</label>
								<div class="col-sm-10">
									<input type="text" name="<?php echo $model->getPrefixedName( $name ); ?>" value="<?php echo $model->getValue( $name ); ?>" class="form-control" id="input-<?php echo $name; ?>" placeholder="<?php echo $model->__( 'Live Secret Key' ); ?>">
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Live Secret Key End -->

							<!-- Live Public Key Start -->
							<?php $name = 'live_public_key'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>">
									<?php echo $model->__( 'Live Publishable Key' ); ?>
								</label>
								<div class="col-sm-10">
									<input type="text" id="input-<?php echo $name; ?>" class="form-control" name="<?php echo $model->getPrefixedName( $name ); ?>" placeholder="<?php echo $model->__( 'Live Publishable Key' ); ?>" value="<?php echo $model->getValue( $name ); ?>" >
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Live Public Key End -->

						</div>
<!--  *********************************************************** Tab Active End ********************************************************** -->

<!--  *********************************************************** Tab General Start ********************************************************** -->
<!--
	/**
	* title
	* payment_method
	* charge_description
	* customer_description
	* statement_descriptor
	* total_min
	* total_max
	* geo_zone
	* sort_order
	*/
-->
						<div class="tab-pane" id="tab-general">

							<!-- Title Start -->
							<?php $name = 'title'; ?>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>" >
									<?php echo $model->__( 'Title' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'The title under which the extension appears on the checkout' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<input type="text" name="<?php echo $model->getPrefixedName( $name ); ?>" value="<?php echo $model->getValue( $name ); ?>" class="form-control" id="input-<?php echo $name; ?>" placeholder="<?php echo $model->__( 'Title' ); ?>" >
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Title End -->

							<!-- Payment Method Start -->
							<?php $name = 'payment_method'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Payment method' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Authorize payment only or authorize and capture it' ); ?>" style="cursor:pointer;" ></span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach( $model->getOptionsFromSource( 'stripe/payment_methods' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Paymet Method End -->

							<!-- Paymet Currency Start -->
							<?php $name = 'payment_currency'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Payment currency' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'What currency to use for payments' ); ?>" style="cursor:pointer;" ></span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach( $model->getOptionsFromSource( 'stripe/payment_currency' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Paymet Currency End -->

							<!-- Charge Description Start -->
							<?php $name = 'charge_description'; ?>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>" >
									<?php echo $model->__( 'Charge description' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Customizable charge description. Supported variables: %s' , $model->getVariablesList() ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<input type="text" name="<?php echo $model->getPrefixedName( $name ); ?>" value="<?php echo $model->getValue( $name ); ?>" class="form-control adk-var" id="input-<?php echo $name; ?>" placeholder="<?php echo $model->__( 'Charge description' ); ?>" >
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Charge Description End -->

							<!-- Customer Description Start -->
							<?php $name = 'customer_description'; ?>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>" >
									<?php echo $model->__( 'Customer description' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Customizable customer description. Supported variables: %s' , $model->getVariablesList() ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<input type="text" name="<?php echo $model->getPrefixedName( $name ); ?>" value="<?php echo $model->getValue( $name ); ?>" class="form-control adk-var" id="input-<?php echo $name; ?>" placeholder="<?php echo $model->__( 'Customer description' ); ?>" >
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Customer Description End -->

							<!-- Statement Descriptior End -->
							<?php $name = 'statement_descriptor'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>" >
									<?php echo $model->__( 'Statement descriptor' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'An arbitrary string to be displayed on your customer\'s credit card statement' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<input type="text" name="<?php echo $model->getPrefixedName( $name ); ?>" value="<?php echo $model->getValue( $name ); ?>" class="form-control" id="input-<?php echo $name; ?>" placeholder="<?php echo $model->__( 'Statement descriptor' ); ?>" >
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Statement Descriptor End -->

							<!-- Min Total Amount Start -->
							<?php $name = 'total_min'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>">
									<?php echo $model->__( 'Min total amount' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Minimum order amount for the payment gateway' ); ?>" style="cursor:pointer;" ></span>
								</label>
								<div class="col-sm-10">
									<div class="input-group">
										<?php if( $currency_symbol_left ) : ?>
										<span class="input-group-addon"><?php echo $currency_symbol_left; ?></span>
										<?php endif; ?>
										<input type="number" id="input-total" class="form-control" name="<?php echo $model->getPrefixedName( $name ); ?>" value="<?php echo $model->getValue( $name ); ?>" >
										<?php if( $currency_symbol_right ) : ?>
										<span class="input-group-addon"><?php echo $currency_symbol_right; ?></span>
										<?php endif; ?>
									</div>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Min Total Amount End -->

							<!-- Max Total Amount Start -->
							<?php $name = 'total_max'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>">
									<?php echo $model->__( 'Max total amount' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Maximum order amount for the payment gateway' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<div class="input-group">
										<?php if( $currency_symbol_left ) : ?>
										<span class="input-group-addon"><?php echo $currency_symbol_left; ?></span>
										<?php endif; ?>
										<input type="number" id="input-<?php echo $name; ?>" class="form-control" name="<?php echo $model->getPrefixedName( $name ); ?>" value="<?php echo $model->getValue( $name ); ?>" >
										<?php if( $currency_symbol_right ) : ?>
										<span class="input-group-addon"><?php echo $currency_symbol_right; ?></span>
										<?php endif; ?>
									</div>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Max Total Amount End -->

							<!-- Geo Zones Start -->
							<div class="form-group">
								<?php $name = 'geo_zone'; ?>
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>"> 
									<?php echo $model->__( 'Geo zones' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Permitted Geo Zones' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ) . '[]'; ?>" id="select-<?php echo $name; ?>" class="form-control" multiple>
										<?php foreach ( $model->getOptionsFromSource( 'geozones' , $name , 'multiple' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Geo Zones End -->

							<!-- Sort Order Start -->
							<?php $name = 'sort_order'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>">
									<?php echo $model->__( 'Sort Order' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Sort order, on checkout, amongst the other payment methods' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<input type="number" id="input-<?php echo $name; ?>" class="form-control" name="<?php echo $model->getPrefixedName( $name ); ?>" value="<?php echo $model->getValue( $name ); ?>" >
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Sort Order End -->

						</div>
<!--  *********************************************************** Tab General End ********************************************************** -->

<!--  *********************************************************** Tab System Start ********************************************************** -->
<!--
	/**
	* status
	* status_authorized
	* status_captured
	* status_voided
	* debug
	* use_oclog
	* log_file
	* test_mode
	* uninstall_clear_settings
	* uninstall_clear_db
	*/
-->
						<div class="tab-pane" id="tab-system">

							<!-- Status Start -->
							<?php $name = 'status'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Extension Status' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Defines whether the extension is active' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'enabledisable' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Status End -->

							<!-- Authorized Payment Start -->
							<?php $name = 'status_authorized'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Authorized Payment Status' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Which status to assign to an order upon authorized payment' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'orderstatusdefault' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Authorized Payment End -->

							<!-- Captured Payment Start -->
							<?php $name = 'status_captured'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>"> 
									<?php echo $model->__( 'Captured Payment Status' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Which status to assign to an order upon payment capture' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'orderstatusprocessingdefault' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Captured Payment End -->

							<!-- Voided Payment Start -->
							<?php $name = 'status_voided'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>"> 
									<?php echo $model->__( 'Refunded Payment Status' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Which status to assign to an order upon payment full refund' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'orderstatuscomplete' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Voided Payment End -->


							<!-- Debug Start -->
							<?php $name = 'debug'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Debug strictness' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Which events should be logged' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'debug' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Debug End -->

							<!-- Use OC Log Start -->
							<?php $name = 'use_oclog'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Use OpenCart Log' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Whether to use OpenCart Error log file for the extension system messages' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'yesno' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Use OC Log End -->

							<!-- Log File Start -->
							<?php $name = 'log_file'; ?>
							<div class="form-group required" data-depend-on="select-use_oclog">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>" >
									<?php echo $model->__( 'Log file' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Path to the extension log ' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<input type="text" name="<?php echo $model->getPrefixedName( $name ); ?>" value="<?php echo DIR_LOGS . $model->getValue( $name ); ?>" class="form-control" id="input-<?php echo $name; ?>" placeholder="<?php echo $model->__( 'Log file' ); ?>" >
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Log File End -->

							<!-- Test mode Start -->
							<?php $name = 'test_mode'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Sandbox' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Defines whether the extension is in the test mode: customes\'s payment card won\'t be charged' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'yesno' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Test mode End -->		

							<!-- Clear Settings On Uninstall Start -->
							<?php $name = 'uninstall_clear_settings'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Clear settings' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Whether to delete the extension\'s settings during uninstallation' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'yesno' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Claear Settings On Uninstall End -->		

							<!-- Clear DB On Uninstall Start -->
							<?php $name = 'uninstall_clear_db'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Clear DB' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Whether to delete the extension\'s database tables during uninstallation' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'yesno' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Claear DB On Uninstall End -->			
							
						</div>
<!--  *********************************************************** Tab System End ********************************************************** -->

<!--  *********************************************************** Tab Card Start ********************************************************** -->
<!--
	/**
	* save_card_data
	* cvc_check
	* zip_check
	* address_check
	* show_card_image
	*/
-->
						<div class="tab-pane" id="tab-card">

							<!-- Save Card Data Start -->
							<?php $name = 'save_card_data'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Save Paymet Card data' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Whether to save Payment Card details at the Stripe Dashboard' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'yesno' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Save Card Data End -->

							<!-- CVC check Start -->
							<?php $name = 'cvc_check'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'CVC Verification' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Whether to perform CVC/CVV verification' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'enabledisable' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- CVC check End -->		

							<!-- ZIP check Start -->
							<?php $name = 'zip_check'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'ZIP-code Verification' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Whether to perform address ZIP-code verification' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'enabledisable' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- ZIP check End -->		

							<!-- Address check Start -->
							<?php $name = 'address_check'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Address line 1 Verification' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Whether to perform address line 1 verification' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'enabledisable' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Address check End -->	

							<!-- Show card image Start -->
							<?php $name = 'show_card_image'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="select-<?php echo $name; ?>">
									<?php echo $model->__( 'Show card image' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'Whether to show, on checkout, the payment card image, which illustrated the payment card and the payment form fields relation' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<select name="<?php echo $model->getPrefixedName( $name ); ?>" id="select-<?php echo $name; ?>" class="form-control">
										<?php foreach ( $model->getOptionsFromSource( 'yesno' , $name , 'select' ) as $option ) : ?>
										<option value="<?php echo $option[ 'value' ]; ?>" <?php echo $option[ 'active' ]; ?> ><?php echo $option[ 'text' ]; ?></option>
										<?php endforeach; ?>
									</select>
									<?php $error = 'error_' . $name; ?>
									<?php if( ! empty( $$error ) ) : ?>
									<div class="text-danger"><?php echo $$error; ?></div>
									<?php endif; ?>
								</div>
							</div>
							<!-- Show card image End -->


						</div>
<!--  *********************************************************** Tab Card End ********************************************************** -->


<!--  *********************************************************** Tab Webhook Start ********************************************************** -->
<!--
	/**
	* webhook_url
	*/
-->
						<div class="tab-pane" id="tab-webhook">

							<!-- Set Webhook endpoint Start -->
							<div class="form-group">
								<div class="col-sm-2"></div>
								<div class="col-sm-10">
									<a href="//dashboard.stripe.com/account/webhooks" target="_blank"><?php echo $model->__( 'In order to configure Stripe Webhooks please go to' ); ?></a>
								</div>
							</div>
							<!-- Set Webhook endpoint End -->


							<!-- Webhook URL Start -->
							<?php $name = 'webhook_url'; ?>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-<?php echo $name; ?>">
									<?php echo $model->__( 'Webhook URL' ); ?>
									<span class="glyphicon" data-toggle="popover" data-content="<?php echo $model->__( 'The Stripe webhooks endpoint for your store' ); ?>" style="cursor:pointer;" >
									</span>
								</label>
								<div class="col-sm-10">
									<input type="text" id="input-<?php echo $name; ?>" class="form-control" value="<?php echo $webhook_url; ?>" readonly >
								</div>
							</div>
							<!-- Webhook URL End -->

						</div>
<!--  *********************************************************** Tab Webhook End ********************************************************** -->

					</div><!-- .tab-content -->
				</form><!-- #form -->
			</div><!-- .panel-body -->
		</div><!--.panel .panel-default -->
		<?php if( ! $model->getConfigValue( 'extension_commented' ) ) : ?>
		<div class="like-us">
		<?php echo sprintf( '%s - <a href="http://www.opencart.com/index.php?route=extension/extension/info&extension_id=21872#rating" target="_blank">%s</a>' , $model->__( 'If you find our extension useful' ) , $model->__( 'feel free to rate it' ) ); ?>
		</div>
		<?php endif; ?>
		<div id="legal">
			<span>Adverti<b>k</b>on</span> &#169; 2015-<?php echo date( 'Y' );?> All Rights Reserved.<br>Version <?php echo $version; ?>
		</div>
	</div><!-- .container-fluid -->
</div><!-- #content -->
wewewe
<script>
	'use strict';
	$( '[data-toggle=\'popover\']' ).popover( {
		title : '' ,
		html : true,
		template : '<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content" style="min-width:150px;"></div></div>'
	} );

	//select content of webhook URL input on click
	$( '#input-webhook_url' ).on( 'click' , function(){ this.select(); } );

	//Select all geozones when choosed first option in list
	/*$( '#select-geo_zone option:first' ).on( 'click' , function(){
		$( this ).parent().find( 'option' ).removeAttr( 'selected' ).not( ':first' ).attr( 'selected' , 'selected' );
	} );*/

	/*
	Create hint field under input fild with system variables
	*/
	var vars = [<?php echo '"' . implode( '","' , $model->getVariables() ) . '"'; ?>];
	$( '.adk-var' ).on( 'input' , function( evt ){

		var input = $( evt.target ),
			val = input.val(),
			line;

		//create hint string with more apropriate variable name
		line = val.replace( /\{([^\s\}]+)(\s|\}?)/g , function( match , p1 ){

			var name = '',
				max = 0,
				count = 0;
			
			for( var i = 0; i < vars.length; ++i ) {
				count = strCmp( vars[ i ].toLowerCase() , p1.toLowerCase() );
				if( count > max ) {
					name = vars[ i ];
					max = count;
				}
			}
			return '{' + name + '}';
		} );

		var hint = getHint( input );
		if( line != val ) {
			hint.fadeIn();
			hint.html( highlightStr( val , line ) );
		}
	} );

	/**
	* Get Hint Element
	*
	* @param Element
	* @return Elemenet
	*/
	function getHint( input ) {
		var list = input.parent().children( '.adk-hint' ),
			hint;

		if( list.length === 0 ) {
			input.parent().append( $( '<div class="adk-hint"></div>') );
			list = input.parent().children( '.adk-hint' );
			hint = $( list[ 0 ] );
			hint.on( 'click' , function(){
				input.val( stripTags( hint.text() ) );
				hint.fadeOut();
		 	} );
		}
		else {
			hint = $( list[ 0 ] );
		}
		hint.width( input.outerWidth() );
		hint.text( '' );

		return hint;
	}

	/**
	* Compare two string
	*
	* @param string
	* @param string
	* @return integer
	*/
	function strCmp( str1 , str2 ) {
		var count = 0;
		for( var y = 0, len = Math.min( str1.length, str2.length ); y < len; ++y ) {
			if( str1[ y ] == str2[ y ] ) {
				count++;
			}
			else {
				break;
			}
		}
		return count;
	}

	/**
	* Highlight part of str2 that is not match with str1
	*
	* @param string str1
	* @param string str2
	* @return string
	*/
	function highlightStr( str1 , str2 ) {

		var start = '<b>',
			stop = '</b>',
			process = false,
			str = '';

		for( var i = 0, len = str2.length; i < len; ++i ) {
			if( str1[ i ] != str2[ i ] && ! process ) {
				str += start;
				process = true;
			}
			else if( str1[ i ] == str2[ i ] && process ) {
				str += stop;
				process = false;
			}
			str += str2[ i ];
		}
		return str;
	}

	/**
	* Strip tags
	*
	* @param string str
	* @return string
	*/
	function stripTags( str ){
		return str.replace( /<.*?>/g , '' );
	}

	/*
		Handle elements dependencies
		Attribute data-depend-on specify on which element depend field visibility
	*/
	jQuery( document ).ready( function(){

		$( '[data-depend-on]' ).each( function( ind , elem ){
			var subj = $( elem ),
				obj = $( '#' + subj.attr( 'data-depend-on' ) );

			if( obj.val() == true ) {
				subj.hide();
			}

			obj.on( 'change' , function(){
				if( obj.val() == false ) {
					subj.fadeIn();
				}
				else {
					subj.fadeOut();
				}
			} );
		} );
		
	} );

	/*
		Log file path
	*/
	var logDir = '<?php echo DIR_LOGS; ?>';
	$( '#input-log_file' ).on( 'input' , function( evt ){
		var input = $( evt.target );
		if( -1 === input.val().indexOf( logDir ) ) {
			input.val( logDir );
		}
	} );

	//Like us click
	$( '.like-us' ).on( 'click' , function(){
		$.get( '<?php echo $like_us_url; ?>'.replace( /(&amp;)+/g , '&' ) , { click: "true" } )
		.fail()
		.always()
		.done( function( resp ) {
			if( /success/.test( resp ) ) {
				$( '.like-us' ).html( '<?php echo $model->__( "Thank you" ); ?>' );
			}
		} );
	} );

</script>