<?php $objlang = $this->registry->get('language');  $ourl = $this->registry->get('url');   ?>

<div class="product-block" itemtype="http://schema.org/Product" itemscope>	
	<?php if ($product['thumb']) { ?>
		<div class="image">
	      	<?php if( $product['special'] ) { ?>
	    	<div class="ribbon">
				<div class="product-label product-label-special">
					<div class="text"><?php echo $objlang->get( 'text_sale' ); ?></div>
				</div>
			</div>
	    	<?php } ?>
			<a class="img" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive" >
			<?php if( !isset($listingConfig['catalog_mode']) || !$listingConfig['catalog_mode'] ) { ?>
				<button onclick="cart.addcart('<?php echo $product['product_id']; ?>');" class="btn btn-shopping-cart btn-outline-inverse">
                                	<i class="fa fa-shopping-cart"></i>
                                </button>
			<?php } ?>
			</img>
			</a>

<!--			
			<div class="">
				<div class="action">
					<div class="btn-action">
						<?php if( isset($categoryPzoom) && $categoryPzoom ) { $zimage = str_replace( "cache/","", preg_replace("#-\d+x\d+#", "",  $product['thumb'] ));  ?>
							<div class="zoom btn btn-outline">
								<a href="<?php echo $zimage;?>" class="info-view colorbox product-zoom" title="Zoom image"><i class="fa fa-search-plus"></i></a>
							</div>
						<?php } ?>

						<div class="compare btn btn-outline">			
							<a onclick="compare.addcompare('<?php echo $product['product_id']; ?>');" title="<?php echo $objlang->get("button_compare"); ?>" ><i class="fa fa-files-o"></i><span><?php echo $objlang->get("button_compare"); ?></span></a>	
						</div>	

						<div class="wishlist btn btn-outline">
							<a onclick="wishlist.addwishlist('<?php echo $product['product_id']; ?>');"  title="<?php echo $objlang->get("button_wishlist"); ?>" ><i class="fa fa-heart-o"></i></a>	
						</div>	
					</div>
					<?php if ($quickview) { ?>
					<div class="quick-view btn btn-outline-black">
						<a class="iframe-link pav-colorbox" href="<?php echo $ourl->link('themecontrol/product','product_id='.$product['product_id']);?>"  title="<?php echo $objlang->get('quick_view'); ?>" ><span><?php echo $objlang->get('quick_view'); ?></span></a>
					</div>
					<?php } ?> 
				</div>
			</div>
-->
		</div>
	<?php } ?>
	
	<div class="product-meta">	
		<div class="">
			<table>
				<tbody>
					<tr>

						<td class="names">
							<h3 class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
						</td>
						<td >

<!--


						<td>
							<?php if ( isset( $product['rating']) ) { ?>
				              <div class="rating">
				                <?php for ($is = 1; $is <= 5; $is++) { ?>
				                <?php if ($product['rating'] < $is) { ?>
				                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
				                <?php } else { ?>
				                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
				                <?php } ?>
				                <?php } ?>
				              </div>
				            <?php } ?>
						</td>
-->
					</tr>

				</tbody>
			</table>	

			<div class="clearfix"></div>
			<?php if( isset($product['description']) ){ ?><?php echo $product['description']; ?>

			<p class="description" itemprop="description"><?php echo utf8_substr( strip_tags($product['description']),0,80);?>....</p>
			<?php } ?>
	
			<div class="bottom">
				<div class="wrap-hover">
					<?php if( !isset($listingConfig['catalog_mode']) || !$listingConfig['catalog_mode'] ) { ?>
						<div class="cart">						
							<div class="content-cart">
								<span><?php echo $objlang->get('button_cart'); ?></span>
							</div>
							<button onclick="cart.addcart('<?php echo $product['product_id']; ?>');" class="btn btn-shopping-cart btn-outline-inverse">
								<i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					<?php } ?>

					<div class="price" itemtype="http://schema.org/Offer" itemscope itemprop="offers">
						<?php if (!$product['special']) { ?>
							<span class="special-price"><?php echo $product['price']; ?></span>
							<?php if( preg_match( '#(\d+).?(\d+)#',  $product['price'], $p ) ) { ?> 
							<meta content="<?php echo $p[0]; ?>" itemprop="price">
							<?php } ?>
						<?php } else { ?>
							<span class="price-new"><?php echo $product['special']; ?></span>
							<span class="price-old"><?php echo $product['price']; ?></span> 
							<?php if( preg_match( '#(\d+).?(\d+)#',  $product['special'], $p ) ) { ?> 
							<meta content="<?php echo $p[0]; ?>" itemprop="price">
							<?php } ?>
						<?php } ?>

					</div>
				</div>	
			</div>

		</div>	
	</div>	

</div>


