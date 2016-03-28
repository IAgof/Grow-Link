<?php echo $header;  $config = $this->registry->get('config');  ?>
<?php
		require( DIR_TEMPLATE.$config->get('config_template')."/template/common/config.tpl" );
		$themeConfig = (array)$config->get('themecontrol');
		$productConfig = array(
			'product_enablezoom'         => 1,
			'product_zoommode'           => 'basic',
			'product_zoomeasing'         => 1,
			'product_zoomlensshape'      => "round",
			'product_zoomlenssize'       => "150",
			'product_zoomgallery'        => 0,
			'enable_product_customtab'   => 0,
			'product_customtab_name'     => '',
			'product_customtab_content'  => '',
			'product_related_column'     => 0,
		);
		$listingConfig = array(
			'category_pzoom'				          	=> 1,
			'quickview'                                 => 0,
			'show_swap_image'                       	=> 0,
			'catalog_mode'								=> 1
		);
		$listingConfig  				= array_merge($listingConfig, $themeConfig );
		$categoryPzoom 	    			= $listingConfig['category_pzoom'];
		$quickview          			= $listingConfig['quickview'];
		$swapimg           				= ($listingConfig['show_swap_image'])?'swap':'';

		$productConfig 		            = array_merge( $productConfig, $themeConfig );
		$languageID 			        = $config->get('config_language_id');


	//	echo '<pre>'.print_r( $productConfig ,1 );die;
?>

<div class="container">
    <?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
  <?php require( PAVO_THEME_DIR."/template/common/breadcrumb.tpl" );  ?>
  <div class="row"><?php if( $SPAN[0] ): ?>
			<aside id="sidebar-left" class="col-md-<?php echo $SPAN[0];?>">
				<?php echo $column_left; ?>
			</aside>
		<?php endif; ?>

   <section id="sidebar-main" class="col-md-<?php echo $SPAN[1];?>"><div id="content"><?php echo $content_top; ?>


<!-- HITECH -->

<?php

		$mode = 'default';
		$cols = array( 'default' => array(12,12),
									 'horizontal' => array(4,6)
		);
		$cols = $cols[$mode];
?>
<?php $olang = $this->registry->get('language'); ?>

<div class="product-info">
		<div class="row">
			<?php require( ThemeControlHelper::getLayoutPath( 'common/detail/'.$mode.'.tpl' ) );  ?>

		<!--div class="col-xs-12 col-sm-<?php echo $cols[1]; ?> col-md-<?php echo $cols[1]; ?> col-lg-<?php echo $cols[1]; ?>"-->
<div class="col-sm-6"> <!-- style="max-width:750px; margin-left:0px; float:right; "> -->
				<div class="product-view">
						<div class="product-name">
								<span><?php echo $heading_title; ?></span>
						</div>
							<a class="nickname" style="text-decoration: none" href="<?php echo $seller['href']; ?>"><b><?php echo $seller['nickname']; ?></b></a>


						<?php if ($price) { ?>
								<div class="price">
										<ul class="list-unstyled">
												<?php if (!$special) { ?>
														<li class="price-gruop">
																<span class="text-price"> <?php echo $price; ?> </span>

					 <?php if ($attribute_groups) { ?>
																	<?php foreach ($attribute_groups as $attribute_group) { ?>
							<?php if ($attribute_group['name'] == 'Medida') { ?>
						<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
<!--	                                                / <?php echo $attribute['name']; ?>
-->							/ <?php echo $attribute['text']; ?>
																					<?php } ?>
							<?php } ?>
					<?php } ?>
											<?php } ?>

				</li>
												<?php } else { ?>
														<li> <span class="text-price"> <?php echo $special; ?> </span> <span style="text-decoration: line-through;"><?php echo $price; ?></span> </li>
												<?php } ?>
												<?php if ($tax) { ?>
														<li class="other-price"><?php echo $text_tax; ?> <?php echo $tax; ?></li>
												<?php } ?>
												<?php if ($discounts) { ?>
														<li>
														</li>
														<?php foreach ($discounts as $discount) { ?>
																<li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
														<?php } ?>
												<?php } ?>
										</ul>
								</div>
						<?php } ?>

						<?php if ($review_status) { ?>
								<div class="rating">
										<p>
												<?php for ($i = 1; $i <= 5; $i++) { ?>
														<?php if ($rating < $i) { ?>
																<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
														<?php } else { ?>
																<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
														<?php } ?>
												<?php } ?>
												<a href="#review-form" class="popup-with-form" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;" ><?php echo $reviews; ?></a> / <a href="#review-form"  class="popup-with-form" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;" ><?php echo $text_write; ?></a></p>
								</div>
						<?php } ?>
						<ul class="list-unstyled description">
								<?php if ($reward) { ?>
										<li><b><?php echo $text_reward; ?></b> <?php echo $reward; ?></li>
								<?php } ?>
								<?php if ($points) { ?>
										<li><b><?php echo $text_points; ?></b> <?php echo $points; ?></li>
								<?php } ?>
<!--                <li><b class="availability"><?php echo $text_stock; ?></b> <?php echo $stock; ?></li>
-->            </ul>
						<div id="product" class="product-extra">
<!--							<div class="seller-box-hitech"></div>
-->
<!-- /HITECH -->

		<?php if ($recurrings) { ?>
										<hr>
										<h3><?php echo $text_payment_recurring ?></h3>
										<div class="form-group required">
												<select name="recurring_id" class="form-control">
														<option value=""><?php echo $text_select; ?></option>
														<?php foreach ($recurrings as $recurring) { ?>
																<option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
														<?php } ?>
												</select>
												<div class="help-block" id="recurring-description"></div>
										</div>
								<?php } ?>

								<div class="qty">
										<div class="quantity-adder clearfix">
												<div class="quantity-number pull-left">
														<span><?php echo $olang->get('entry_qty'); ?></span>
												</div>
												<div class="pull-right qt-right">
														<div class="quantity-number pull-left">
																<input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" />
														</div>
														<div class="quantity-wrapper pull-left">
																<span class="add-up add-action">+</span>
																<span class="add-down add-action">-</span>
														</div>
					<a id="button-cart"  class="btn btn-outline-inverse btn-shopping-cart" data-loading-text="<?php echo $text_loading; ?>">
														<i class="fa fa-shopping-cart"></i>
<!--                            <span><?php echo $button_cart; ?></span>
-->                        </a>

												</div>
										</div>

								<input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
								</div>
								<div class="action">
<!--                    <div class="cart">
												<a id="button-cart"  class="btn btn-outline-inverse btn-shopping-cart" data-loading-text="<?php echo $text_loading; ?>">
														<i class="fa fa-shopping-cart"></i>
														<span><?php echo $button_cart; ?></span>
												</a>
										</div>
                    <div class="wishlist">
												<a class="btn btn-outline-inverse" data-toggle="tooltip" onclick="wishlist.addwishlist('<?php echo $product_id; ?>');" title="<?php echo $button_wishlist; ?>">
														<i class="fa fa-heart"></i>
														<span><?php echo $button_wishlist; ?></span>
												</a>
										</div>
										<div class="compare">
												<a class="btn btn-outline-inverse" data-toggle="tooltip" onclick="compare.addcompare('<?php echo $product_id; ?>');" title="<?php echo $button_compare; ?>">
														<i class="fa fa-retweet"></i>
														<span><?php echo $button_compare; ?></span>
												</a>
										</div>
								</div>
-->
						</div>

			<?php if ($minimum > 1) { ?>
								<div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
						<?php } ?>


<!--
						<div class="clearfix product-box-bottom tabs-group box">
								<div id="tabs" class="tab-nav">
										<ul class="nav nav-theme clearfix">
												<li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
												<?php if ($attribute_groups) { ?>
														<li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
												<?php } ?>
												<?php if ($review_status) { ?>
														<li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
												<?php } ?>
												<?php if( $productConfig['enable_product_customtab'] && isset($productConfig['product_customtab_name'][$languageID]) ) { ?>
														<li><a href="#tab-customtab" data-toggle="tab"><?php echo $productConfig['product_customtab_name'][$languageID]; ?><span class="triangle-bottomright"></span></a></li>
												<?php } ?>
										</ul>
								</div>
-->
								<div class="tab-content">
									<?php echo $description; ?>
				<?php if ($attribute_groups) { ?>
														 <?php foreach ($attribute_groups as $attribute_group) { ?>
																 <?php if ($attribute_group['name'] == 'Producto de temporada') { ?>
																	<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
																		<div class="tab-pane active" id="tab-description"></div>
																			<td><?php echo $attribute_group['name']; ?> : <?php echo $attribute['text']; ?></td>
																		</div>
								 <?php } ?>
																<?php } ?>
														<?php } ?>
										<?php } ?>
										<?php if ($review_status) { ?>

												<div class="tab-pane" id="tab-review">

														<div id="review"></div>
<!--														<p> <a href="#review-form"  class="popup-with-form btn btn-sm btn-danger" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;" ><?php echo $text_write; ?></a></p>
-->
													 <div class="hide"> <div id="review-form" class="panel review-form-width"><div class="panel-body">
														<form class="form-horizontal" id="form-review">

																<h2><?php echo $text_write; ?></h2>
																<div class="form-group required">
																		<div class="col-sm-12">
																				<label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
																				<input type="text" name="name" value="" id="input-name" class="form-control" />
																		</div>
																</div>
																<div class="form-group required">
																		<div class="col-sm-12">
																				<label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
																				<textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
																				<div class="help-block"><?php echo $text_note; ?></div>
																		</div>
																</div>
																<div class="form-group required">
																		<div class="col-sm-12">
																				<label class="control-label"><?php echo $entry_rating; ?></label>
																				&nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
																				<input type="radio" name="rating" value="1" />
																				&nbsp;
																				<input type="radio" name="rating" value="2" />
																				&nbsp;
																				<input type="radio" name="rating" value="3" />
																				&nbsp;
																				<input type="radio" name="rating" value="4" />
																				&nbsp;
																				<input type="radio" name="rating" value="5" />
																				&nbsp;<?php echo $entry_good; ?></div>
																</div>
																	<?php if ($site_key) { ?>
																	<div class="form-group">
																		<div class="col-sm-12">
																			<div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
																		</div>
																	</div>
																<?php } ?>
														<div class="buttons clearfix">
																		<div class="pull-right">
																				<button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
																		</div>
																</div>
														</form></div></div></div>

												</div>
										<?php } ?>
										<?php if( $productConfig['enable_product_customtab'] && isset($productConfig['product_customtab_content'][$languageID]) ) { ?>
												<div id="tab-customtab" class="tab-content tab-pane custom-tab">
														<div class="inner">
																<?php echo html_entity_decode( $productConfig['product_customtab_content'][$languageID], ENT_QUOTES, 'UTF-8'); ?>
														</div>
												</div>
										<?php } ?>
						</div>

				</div>
		</div>

</div>
</div>
</div>




         <?php if ($products) {
            $heading_title = $text_related;
        ?>
        <div class="box products-related"> <?php require( PAVO_THEME_DIR."/template/common/products_related.tpl" );  ?> </div>

          <?php } ?>

<!--
          <?php if ($tags) { ?>
          <p><?php echo $text_tags; ?>
            <?php for ($i = 0; $i < count($tags); $i++) { ?>
            <?php if ($i < (count($tags) - 1)) { ?>
            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
            <?php } else { ?>
            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
            <?php } ?>
            <?php } ?>
          </p>
          <?php } ?>
-->
      <?php echo $content_bottom; ?></div>
   </section>
<?php if( $SPAN[2] ): ?>
	<aside id="sidebar-right" class="col-md-<?php echo $SPAN[2];?>">
		<?php echo $column_right; ?>
	</aside>
<?php endif; ?></div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {

				if (json['error']['seller']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['seller'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					$('.warning').fadeIn('slow');
					$('html, body').animate({ scrollTop: 0 }, 'slow');
				}
			
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('#notification').html('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart-total').html(json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	$('#form-upload input[name=\'file\']').on('change', function() {
		$.ajax({
			url: 'index.php?route=tool/upload',
			type: 'post',
			dataType: 'json',
			data: new FormData($(this).parent()[0]),
			cache: false,
			contentType: false,
			processData: false,
			beforeSend: function() {
				$(node).button('loading');
			},
			complete: function() {
				$(node).button('reset');
			},
			success: function(json) {
				$('.text-danger').remove();

				if (json['error']) {

				if (json['error']['seller']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['seller'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					$('.warning').fadeIn('slow');
					$('html, body').animate({ scrollTop: 0 }, 'slow');
				}
			
					$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
				}

				if (json['success']) {
					alert(json['success']);

					$(node).parent().find('input').attr('value', json['code']);
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	});
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {

				if (json['error']['seller']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['seller'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					$('.warning').fadeIn('slow');
					$('html, body').animate({ scrollTop: 0 }, 'slow');
				}
			
				$('#review-form').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review-form').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('#img-detail a').click(
		function(){
			$.magnificPopup.open({
			  items: {
			    src:  $('img',this).attr('src')
			  },
			  type: 'image'
			});
			return false;
		}
	);
});
//--></script>
<?php if( $productConfig['product_enablezoom'] ) { ?>
<script type="text/javascript" src=" catalog/view/javascript/jquery/elevatezoom/elevatezoom-min.js"></script>
<script type="text/javascript">
		var zoomCollection = '<?php echo $productConfig["product_zoomgallery"]=="basic"?".product-image-zoom":"#image";?>';
		$( zoomCollection ).elevateZoom({
		<?php if( $productConfig['product_zoommode'] != 'basic' ) { ?>
		zoomType        : "<?php echo $productConfig['product_zoommode'];?>",
		<?php } ?>
		lensShape : "<?php echo $productConfig['product_zoomlensshape'];?>",
		lensSize    : <?php echo (int)$productConfig['product_zoomlenssize'];?>,
		easing:true,
		gallery:'image-additional-carousel',
		cursor: 'pointer',
		galleryActiveClass: "active"
	});

</script>
<?php } ?>
<div class"seller-box"></div>

<?php echo $footer; ?>
