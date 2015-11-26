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
        
        <?php require( PAVO_THEME_DIR."/template/product/product_detail_hitech.tpl" );  ?>

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

			<div class="container">
			<div class="row">
			<section id="sidebar-main" class="col-md-9">
			<div class="product-info">
			<div class="seller-box">
			<?php if (isset($seller) && !empty($seller)) { ?>
			<hr />
			<div class="ms-sellerprofile description">
				<h3><?php echo $ms_catalog_product_sellerinfo; ?></h3>
				<div class="seller-data">
					<div class="avatar-box">
						<a href="<?php echo $seller['href']; ?>"><img src="<?php echo $seller['thumb']; ?>" /></a>
					</div>
					<div class="info-box">
					<ul class="list-unstyled">
					    <li><a class="nickname" style="text-decoration: none" href="<?php echo $seller['href']; ?>"><b><?php echo $seller['nickname']; ?></b></a></li>
						<?php if ($seller['country']) { ?>
							<li><?php echo $ms_catalog_seller_profile_country; ?></b> <?php echo $seller['country']; ?></li>
						<?php } ?>

						<?php if ($seller['zone']) { ?>
							<li><?php echo $ms_catalog_seller_profile_zone; ?></b> <?php echo $seller['zone']; ?></li>
						<?php } ?>

						<?php if ($seller['company']) { ?>
							<li><?php echo $ms_catalog_seller_profile_company; ?></b> <?php echo $seller['company']; ?></li>
						<?php } ?>

						<?php if ($seller['website']) { ?>
							<li><?php echo $ms_catalog_seller_profile_website; ?></b> <?php echo $seller['website']; ?></li>
						<?php } ?>

						<li><?php echo $ms_catalog_seller_profile_totalsales; ?></b> <?php echo $seller['total_sales']; ?></li>
						<li><?php echo $ms_catalog_seller_profile_totalproducts; ?></b> <?php echo $seller['total_products']; ?></li>

			    <li class="ms-badges">
                    <?php foreach($seller['badges'] as $badge) { ?>
                        <img src="<?php echo $badge['image']; ?>" title="<?php echo $badge['description']; ?>" />
                    <?php } ?>
				</li>
			
                        <?php if ($this->config->get('mmess_conf_enable') || $this->config->get('msconf_enable_private_messaging') == 2) { ?>
                            <?php if ((!$this->customer->getId()) || ($this->customer->getId() != $seller['seller_id'])) { ?>
                                <?php echo $contactForm; ?>
                                <div class="contact">
                                    <?php if ($this->customer->getId()) { ?>
                                      <div class="button-group">
                                        <button type="button" class="btn btn-default btn-block ms-sellercontact" data-toggle="modal" data-target="#contactDialog"><span><?php echo $ms_catalog_product_contact; ?></span></button>
                                      </div>
                                    <?php } else { ?>
                                        <?php echo sprintf($this->language->get('ms_sellercontact_signin'), $this->url->link('account/login', '', 'SSL'), $seller['nickname']); ?>
                                    <?php } ?>
                                </div>
                            <?php } ?>
                        <?php } ?>
					</ul>
					</div>
				</div>
				<!-- end sellerinfo -->
			</div>
			<hr />
			<!-- end seller block -->

			    <?php if ($this->config->get('msconf_sl_status') && !empty($seller['social_links'])) { ?>
                    <div class="ms-social-links">
                        <ul>
                            <?php foreach($seller['social_links'] as $link) { ?>
                                <?php if($this->MsLoader->MsHelper->isValidUrl($link['channel_value'])) { ?>
                                    <li><a target="_blank" href="<?php echo $this->MsLoader->MsHelper->addScheme($link['channel_value']); ?>"><img src="<?php echo $link['image']; ?>" /></a></li>
                                <?php } ?>
                            <?php } ?>
                        </ul>
                    </div>
                    <hr />
                    <!-- end seller social -->
				<?php } ?>
			
			<?php } ?>
			</div>
			</div>
			</section>
			</div>
			</div>
			
<div class"seller-box"></div>
<?php echo $footer; ?>
