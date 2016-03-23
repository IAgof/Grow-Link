<div class="list-group">
  <?php foreach ($manufacturers as $manufacturer) { ?>
  <?php if ($manufacturer['manufacturer_id'] == $manufacturer_id) { ?>
  <a href="<?php echo $manufacturer['href']; ?>" class="list-group-item active"><?php echo $manufacturer['name']; ?></a>
  <?php if ($manufacturer['children']) { ?>
  <?php foreach ($manufacturer['children'] as $child) { ?>
  <?php if ($child['manufacturer_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $manufacturer['href']; ?>" class="list-group-item"><?php echo $manufacturer['name']; ?></a>
  <?php } ?>
  <?php } ?>
</div>
