<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="currency">
  <div class="box-currency">
    <label><?php echo $text_currency; ?></label>

    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['symbol_left']) { ?>
    <a href="javascript:void(0);" class="currency-select list-item" data-name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_left']; ?></a>
    <?php } else { ?>
    <a href="javascript:void(0);" class="currency-select list-item" data-name="<?php echo $currency['code']; ?>"><?php echo $currency['symbol_right']; ?></a>
    <?php } ?>
    <?php } ?>

    <input type="hidden" name="code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
<?php } ?>