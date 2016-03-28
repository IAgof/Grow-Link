<?php echo $header; ?>
<div class="container ms-catalog-seller-profile">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li> <a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?> </a> </li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>

    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
		<!-- left column -->
  
		<div class="<?php echo $class; ?> seller-data">
      <div class="info-box">
        <a class="avatar-box thumbnail" href="<?php echo $seller['href']; ?>"><img src="<?php echo $seller['thumb']; ?>" /></a>
        <div>
        <ul class="list-unstyled">
          <li><h3><?php echo $seller['nickname']; ?></h3></li>
          <?php if (isset($seller['country']) && $seller['country']) { ?><li><?php echo $ms_catalog_seller_profile_country; ?> <?php echo $seller['country']; ?></li><?php } ?>
          <?php if (isset($seller['company']) && $seller['company']) { ?><li><?php echo $ms_catalog_seller_profile_company; ?> <?php echo $seller['company']; ?></li><?php } ?>
          <?php if ($seller['website']) { ?><li><?php echo $ms_catalog_seller_profile_website; ?> <?php echo $seller['website']; ?></li><?php } ?>
          <li><?php echo $ms_catalog_seller_profile_totalsales; ?> <?php echo $seller['total_sales']; ?></li>
          <li><?php echo $ms_catalog_seller_profile_totalproducts; ?> <?php echo $seller['total_products']; ?></li>
        </ul>
        </div>
      </div>
<div class="shop-description" style="text-align: justify; margin-bottom: 10px" >

</div>
			<?php if ($this->config->get('msconf_enable_seller_banner') && isset($seller['banner'])) { ?>

			<ul class="thumbnails seller-banner">
					<li><a class="thumbnail"><img src="<?php echo $seller['banner']; ?>" title="<?php echo $seller['nickname']; ?>" alt="<?php echo $seller['nickname']; ?>" /></a></li>
			</ul>
			<?php } ?>
			<div class="seller-description" style="margin-bottom:20px; margin-top:5px; "><?php echo $seller['description']; ?></div>

			<?php if ($seller['products']) { ?>
			<hr />
			<h3><?php echo $ms_catalog_seller_profile_products; ?></h3>
			<div class="row">
			  <?php foreach ($seller['products'] as $product) { ?>
			  <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="product-thumb transition">
				  <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
				  <div class="caption">
					<h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
				  </div>
				  <div class="button-group">
					<a href="<?php echo $product['href']; ?>"><button type="button" class="btn btn-main btn-block"><span><?php echo $ms_view; ?></span></button></a>
				  </div>
				</div>
			  </div>
			  <?php } ?>
			</div>
			<?php } ?>
			<!-- end products -->
		</div>

		<!-- right column -->
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">


		</div>
	  </div>
	  <?php echo $content_bottom; ?>
	</div>
	<?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>
