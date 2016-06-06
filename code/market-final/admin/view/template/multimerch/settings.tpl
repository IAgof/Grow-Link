<?php echo $header; ?><?php echo $column_left; ?>
<div id="content" class="ms-settings">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button id="saveSettings" type="submit" form="form-store" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $ms_settings_heading; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if (isset($error_warning)) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if (isset($success)) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $ms_settings_heading; ?></h3>
      </div>
      <div class="panel-body">
        <form id="settings" method="post" enctype="multipart/form-data" id="form-store" class="form-horizontal">
                <div class="tab-content">

					<legend><?php echo $ms_menu_badge; ?></legend>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $text_enabled; ?></label>
						<div class="col-sm-10">
							<label class="radio-inline"><input type="radio" name="msconf_badge_enabled" value="1" <?php if($msconf_badge_enabled == 1) { ?> checked="checked" <?php } ?>  /><?php echo $text_yes; ?></label>
							<label class="radio-inline"><input type="radio" name="msconf_badge_enabled" value="0" <?php if($msconf_badge_enabled == 0) { ?> checked="checked" <?php } ?>  /><?php echo $text_no; ?></label>
						</div>
					</div>

					<div class="form-group required">
						<label class="col-sm-2 control-label"><?php echo $ms_config_badge_size; ?></label>
						<div class="col-sm-10 control-inline">
							<input class="form-control" type="text" name="msconf_badge_width" value="<?php echo $msconf_badge_width; ?>" size="3" />
							x
							<input class="form-control" type="text" name="msconf_badge_height" value="<?php echo $msconf_badge_height; ?>" size="3" />
						</div>
					</div>

					<legend><?php echo $ms_menu_social_links; ?></legend>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $text_enabled; ?></label>
						<div class="col-sm-10">
							<label class="radio-inline"><input type="radio" name="msconf_sl_status" value="1" <?php if($msconf_sl_status == 1) { ?> checked="checked" <?php } ?>  /><?php echo $text_yes; ?></label>
							<label class="radio-inline"><input type="radio" name="msconf_sl_status" value="0" <?php if($msconf_sl_status == 0) { ?> checked="checked" <?php } ?>  /><?php echo $text_no; ?></label>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $ms_sl_icon_size; ?></label>
						<div class="col-sm-10 control-inline">
							<input class="form-control" type="text" name="msconf_sl_icon_width" value="<?php echo $msconf_sl_icon_width; ?>" size="3" />
							x
							<input class="form-control" type="text" name="msconf_sl_icon_height" value="<?php echo $msconf_sl_icon_height; ?>" size="3" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $ms_sl_manage; ?></label>
						<div class="col-sm-10 control-inline">
							<a target="_blank" href="<?php echo $this->url->link('multiseller/social_link', 'token=' . $this->session->data['token'], 'SSL'); ?>"><button type="button" class="btn btn-primary pull-left"><i class="fa fa-gears"></i> <?php echo $ms_sl_manage; ?></button></a>
						</div>
					</div>

					<legend><?php echo $mmes_messaging; ?></legend>
					<div class="form-group">
						<label class="col-sm-2 control-label"><?php echo $mmess_config_enable; ?></label>
						<div class="col-sm-10">
							<label class="radio-inline"><input type="radio" name="mmess_conf_enable" value="1" <?php if($mmess_conf_enable == 1) { ?> checked="checked" <?php } ?>  /><?php echo $text_yes; ?></label>
							<label class="radio-inline"><input type="radio" name="mmess_conf_enable" value="0" <?php if($mmess_conf_enable == 0) { ?> checked="checked" <?php } ?>  /><?php echo $text_no; ?></label>
						</div>
					</div>
				<div>
			</form>
		</div>
	</div>
  </div>
</div>
<script>

$(function() {
	$("#saveSettings").click(function() {
		$.ajax({
			type: "POST",
			dataType: "json",
			url: 'index.php?route=module/multimerch/savesettings&token=<?php echo $token; ?>',
			data: $('#settings').serialize(),
			success: function(jsonData) {
				if (jsonData.errors) {
					$("#error").html('');
					for (error in jsonData.errors) {
						if (!jsonData.errors.hasOwnProperty(error)) {
							continue;
						}
						$("#error").append('<p>'+jsonData.errors[error]+'</p>');
					}
				} else {
					window.location.reload();
				}
		   	}
		});
	});
});
</script>

<?php echo $footer; ?>	
</div>