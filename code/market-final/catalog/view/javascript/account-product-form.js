$(function() {
	// filters
	$('input[name=\'filter\']').autocomplete({
		'source': function(request, response) {
			$.ajax({
				url: 'index.php?route=catalog/filter/autocomplete&filter_name=' +  encodeURIComponent(request),
				dataType: 'json',
				success: function(json) {
					response($.map(json, function(item) {
						return {
							label: item['name'],
							value: item['filter_id']
						}
					}));
				}
			});
		},
		'select': function(item) {
			$('input[name=\'filter\']').val('');

			$('#product-filter' + item['value']).remove();

			$('#product-filter').append('<div id="product-filter' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_filter[]" value="' + item['value'] + '" /></div>');
		}
	});

	$('#product-filter').delegate('.fa-minus-circle', 'click', function() {
		$(this).parent().remove();
	});

    if ($("input[name='product_enable_shipping']:checked").val() == 0) {
		$('#shipping_tab').hide();
	}

	$("body").on("change", "input[name='product_enable_shipping']", function() {
	    $('#shipping_tab').toggle();
        if (msGlobals.config_enable_quantities == 2) $("input[name='product_quantity']").parents('.form-group').toggle();
    });

	//$( ".product_image_files" ).sortable();
    new Sortable($( ".product_image_files" )[0]);

	$("body").delegate(".ms-price-dynamic", "propertychange input paste focusout", function(){
		$(".attention.ms-commission span").load($('base').attr('href') + "index.php?route=seller/account-product/jxGetFee&price=" + $(".ms-price-dynamic").val());
	});
	$(".attention.ms-commission span").load($('base').attr('href') + "index.php?route=seller/account-product/jxGetFee&price=" + $(".ms-price-dynamic").val());

	$("body").delegate(".date", "focusin", function(){
		$(this).datetimepicker({pickTime: false});
	});

	$("body").delegate(".datetime", "focusin", function(){
		$(this).datetimepicker({pickTime: true, pickDate: true});
	});

    $("body").delegate(".time", "focusin", function(){
		$(this).datetimepicker({pickDate: false});
	});

	$('body').delegate("a.ms-button-delete", "click", function() {
		$(this).parents('tr').remove();
	});
	
	$('body').delegate("a.ffClone", "click", function() {
		var lastRow = $(this).closest('table').find('tbody tr:last input:last').attr('name');
		if (typeof lastRow == "undefined") {
			var newRowNum = 1;
		} else {
			var newRowNum = parseInt(lastRow.match(/[0-9]+/)) + 1;
		}

		var newRow = $(this).closest('table').find('tbody tr.ffSample').clone();
		newRow.find('input,select').attr('name', function(i,name) {
			return name.replace('[0]','[' + newRowNum + ']');
		});
		
		$(this).closest('table').find('tbody').append(newRow.removeAttr('class'));
	});
	
    // Manufacturer
    $('input[name=\'product_manufacturer\']').autocomplete({
        'source': function(request, response) {
            $.ajax({
                url: $('base').attr('href') + 'index.php?route=seller/account-product/jxautocomplete&filter_name=' +  encodeURIComponent(request),
                dataType: 'json',
                success: function(json) {
                    json.unshift({
                        manufacturer_id: 0,
                        name: msGlobals.text_none
                    });

                    response($.map(json, function(item) {
                        return {
                            label: item['name'],
                            value: item['manufacturer_id']
                        }
                    }));
                }
            });
        },
        'select': function(item) {
            $('input[name=\'product_manufacturer\']').val(item.label);
            $('input[name=\'product_manufacturer_id\']').val(item.value);
        }
    });

	$(".product_image_files").delegate(".ms-remove", "click", function() {
		$(this).parent().remove();
	});

	$(".product_download_files").delegate(".ms-button-delete", "click", function() {
		$(this).parents('.ms-download').remove();
		return false;
	});

	$("#ms-submit-button").click(function() {
		var button = $(this);
		var url = 'jxsubmitproduct';

        if (msGlobals.config_enable_rte == 1) {

			for (var instance in CKEDITOR.instances) {
				CKEDITOR.instances[instance].updateElement();
			}
        }

		$.ajax({
			type: "POST",
			dataType: "json",
			url: $('base').attr('href') + 'index.php?route=seller/account-product/'+url,
			data: $("form#ms-new-product").serialize(),
			beforeSend: function() {
                $('.error').html('');
			    $('.alert-danger').hide().find('i').text('');
                button.hide().before('<span class="wait"></span>');
			},
			complete: function(jqXHR, textStatus) {
                button.show().prev('span.wait').remove();
				if (textStatus != 'success') {
					button.show().prev('span.wait').remove();
					$('.alert-danger').text(msGlobals.formError).show();
					window.scrollTo(0,0);
				}
			},
			success: function(jsonData) {
				if (jsonData.fail) {
                    $('.alert-danger').show().find('i').text(msGlobals.formError);
					window.scrollTo(0,0);
				} else 	if (!jQuery.isEmptyObject(jsonData.errors)) {
					button.show().prev('span.wait').remove();
					for (error in jsonData.errors) {
                        if (!jsonData.errors.hasOwnProperty(error)) {
                            continue;
                        }

                        if ($('#error_' + error).length > 0) {
                            $('#error_' + error).text(jsonData.errors[error]);
                            $('#error_' + error).parents('.form-group').addClass('has-error');
                        } else {
                            $('[name^="' + error + '"]').nextAll('.error:first').text(jsonData.errors[error]);
                            $('[name^="' + error + '"]').parents('.form-group').addClass('has-error');
                        }

					}
                    $('.alert-danger').show().find('i').text(msGlobals.formNotice);
					window.scrollTo(0,0);
				} else if (!jQuery.isEmptyObject(jsonData.data) && jsonData.data.amount) {
					$(".ms-payment-form form input[name='custom']").val(jsonData.data.custom);
					$(".ms-payment-form form input[name='amount']").val(jsonData.data.amount);
					$(".ms-payment-form form").submit();
				} else {
					location = jsonData['redirect'];
				}
		   	}
		});
	});

	new MSUploader(
		{
			browse_button: 'ms-file-addimages'
		},
		{
			url: 'seller/account-product/jxUploadImages',
			initSelectors: { addId: '.product_image_files', addClass: '.image.progress, #error_product_image' },
			fileUploadedCb: function (data) {
				if (!$.isEmptyObject(data.files)) {
					for (var i = 0; i < data.files.length; i++) {
						$(".product_image_files").append(
							'<div class="ms-image">' +
							'<input type="hidden" value="'+data.files[i].name+'" name="product_images[]" />' +
							'<img src="'+data.files[i].thumb+'" />' +
							'<span class="ms-remove"></span>' +
							'</div>').children(':last').hide().fadeIn(2000);
					}
				}
			}
		});

	new MSUploader(
		{
			browse_button: 'ms-file-addfiles'
		},
		{
			url: 'seller/account-product/jxUploadDownloads',
			initSelectors: {addId: '.product_download_files', addClass: '.download.progress, #error_product_download'},
			fileUploadedCb: function (data) {
				if (!$.isEmptyObject(data.files)) {
					var lastFileTag =
						$('.product_download_files .ms-download:last').find('input:hidden[name$="[filename]"]').attr('name');
					var newFileNum;

					if (typeof lastFileTag == "undefined") {
						newFileNum = 0;
					} else {
						newFileNum = parseInt(lastFileTag.match(/[0-9]+/)) + 1;
					}

					for (var i = 0; i < data.files.length; i++) {
						$(".product_download_files").append(
							'<div class="ms-download">' +
							'<input type="hidden" name="product_downloads[' + newFileNum + '][filename]" value="' + data.files[i].fileName + '" />' +
							(data.files[i].filePages ? '<input type="hidden" name="product_downloads[' + newFileNum + '][filePages]" value="' + data.files[i].filePages + '" />' : '') +
							'<span class="ms-download-name">' + data.files[i].fileMask + '</span>' +
							'<div class="ms-buttons">' +
							(data.files[i].filePages ? '<a href="' + $('base').attr('href') + 'index.php?route=module/multimerch_pdfgen/jxRenderPdfgenDialog" class="ms-button-pdf" title="' + msGlobals.button_generate + '"></a>' : '') +
							'<span class="ms-button-download disabled"></span>' +
							'<span class="ms-button-update disabled"></span>' +
							'</div>' +
							'</div>');
					}
				}
			}
		});


	
	$('.ms-file-updatedownload').each(function() {
		var fileTag = $(this);
		var parentContainer = $(this).parents('.ms-download');

		new MSUploader(
			{
				browse_button: fileTag.attr('id'),
				preinit : {
					UploadFile: function(up, file) {
						up.settings.multipart_params.file_id = fileTag.attr('id');
					}
				}
			},
			{
				url: 'seller/account-product/jxUpdateFile',
				initSelectors: { addId: '.product_download_files', addClass: '.download.progress, #error_product_download' },
				fileUploadedCb: function (data) {
					if (!$.isEmptyObject(data.fileName)) {
						parentContainer.find('.ms-download-name').text(data.fileMask);
						parentContainer.find('input:hidden[name$="[filename]"]').val(data.fileName);
						parentContainer.find('.ms-button-download').replaceWith('<span class="ms-button-download disabled"></span>');
					}
				}
			});

	});

	if (msGlobals.config_enable_rte == 1) {

        $('.ckeditor').each(function () {
			CKEDITOR.replace(this);
        });
    }
});
