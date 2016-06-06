<?php if ($modules) { ?>
<div id="column-right" class="hidden-xs sidebar">
	<div id="search" class="nav-search visible">     
	   <div class="input-group">
		    <input type="text" name="search" placeholder="Search..." value="<?php echo isset($search)?$search:""; ?>" class="input-search form-control" />
		    <span class="input-group-btn">       
		   		<button class="input-group-addon button-search" type="button"><span class="fa fa-search"></span></button>
		    </span>
	   </div>      
	</div>
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
</div>
<?php } ?>
