<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="button" id="saveSettings" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_subtitle; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <div class="alert alert-danger hidden"><i class="fa fa-exclamation-circle"></i><button type="button" class="close" data-dismiss="alert">&times;</button></div>

    <div class="alert alert-success hidden"><i class="fa fa-check-circle"></i><button type="button" class="close" data-dismiss="alert">&times;</button></div>

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $heading_subtitle; ?></h3>
      </div>
      <div class="panel-body">
        <form method="post" enctype="multipart/form-data" id="form-settings" class="form-horizontal">
			<div class="form-group">
				<label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
				<div class="col-sm-10">
				  <select name="msconf_sl_status" class="form-control">
					<?php if ($msconf_sl_status) { ?>
						<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
						<option value="0"><?php echo $text_disabled; ?></option>
					<?php } else { ?>
						<option value="1"><?php echo $text_enabled; ?></option>
						<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
					<?php } ?>
				  </select>
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
					<a href="<?php echo $this->url->link('multiseller/social_link', 'token=' . $this->session->data['token'], 'SSL'); ?>"><button type="button" class="btn btn-primary pull-left"><i class="fa fa-gears"></i> <?php echo $ms_sl_manage; ?></button></a>
				</div>
			</div>
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
			url: 'index.php?route=module/multimerch_social_links/savesettings&token=<?php echo $token; ?>',
			data: $('#form-settings').serialize(),
			success: function(jsonData) {
				$('.alert-danger').addClass('hidden').find('i').text('');
				if (jsonData.errors) {
					for (error in jsonData.errors) {
					    if (!jsonData.errors.hasOwnProperty(error)) {
					        continue;
					    }
					    $('.alert-danger').removeClass('hidden').find('i').append('<p>'+jsonData.errors[error]+'</p>');
					}
				} else {
					$(".alert-success").removeClass('hidden').find('i').append('<p>'+jsonData.success+'</p>');
					window.location.reload();
				}
	       	}
		});
	});
});
</script>

<?php echo $footer; ?>