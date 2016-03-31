<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
    <h1><?php echo $ms_account_stats_heading; ?></h1>


	</div>
	</div>
</div>
	<?php echo $column_right; ?></div>
</div>

<?php echo $footer; ?>
