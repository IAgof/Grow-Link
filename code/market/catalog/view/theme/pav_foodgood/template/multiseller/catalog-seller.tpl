<?php echo $header; ?>
<div class="container catalog-seller">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
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
<!--      <h1><?php echo $ms_catalog_sellers_heading; ?></h1>
-->

	<?php if (isset($sellers) && $sellers) { ?>

      <div class="row">
          <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>

        <div class="col-md-3 text-right">

        </div>
        <div class="col-md-1 text-right">

        </div>
        <div class="col-md-2 text-right">

        </div>
      </div>
      <br />
      <div class="row">
		<?php foreach ($sellers as $seller) { ?>
		  <div class="product-layout product-list col-xs-12">
		  <div class="product-thumb">
			<div class="image">
				<a href="<?php echo $seller['href']; ?>"><img src="<?php echo $seller['thumb']; ?>" title="<?php echo $seller['nickname']; ?>" alt="<?php echo $seller['nickname']; ?>" /></a>
			</div>

			<div>
            <div class="caption">
				<h1><a href="<?php echo $seller['href']; ?>"><?php echo $seller['nickname']; ?></a></h1>

				<?php if ($seller['country']) { ?>
					<p class="country">
						<b><?php echo $ms_catalog_sellers_country; ?></b>
						<img class="country-flag" src="<?php echo $seller['country_flag']; ?>" alt="<?php echo $seller['country']; ?>" title="<?php echo $seller['country']; ?>" /> <span class="country-name"><?php echo $seller['country']; ?></span>
					</p>
				<?php } ?>

				<?php if ($seller['company']) { ?>
					<p class="company"><b><?php echo $ms_catalog_sellers_company; ?></b> <?php echo $seller['company']; ?></p>
				<?php } ?>

				<?php if ($seller['website']) { ?>
					<p class="website"><b><?php echo $ms_catalog_sellers_website; ?></b> <?php echo $seller['website']; ?></p>
				<?php } ?>

				<p class="totalsales"><b><?php echo $ms_catalog_sellers_totalsales; ?></b> <?php echo $seller['total_sales']; ?></p>
				<p class="totalproducts"><b><?php echo $ms_catalog_sellers_totalproducts; ?></b> <?php echo $seller['total_products']; ?></p>
			</div>
			</div>
			<div class="seller-description"><?php echo $seller['description']; ?></div>
		  </div>
		  </div>
		<?php } ?>
		</div>

      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
	<?php } else { ?>
		<div class="content"><?php echo $ms_catalog_sellers_empty; ?></div>
	    <div class="buttons">
			<div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
	    </div>
	<?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
