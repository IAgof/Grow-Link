<?php

    $mode = 'default';
    $cols = array( 'default' => array(12,12),
                   'horizontal' => array(4,6)
    );
    $cols = $cols[$mode];
?>
<?php $olang = $this->registry->get('language'); ?>

<div class="product-info">
    <div class="row">
      <?php require( ThemeControlHelper::getLayoutPath( 'common/detail/'.$mode.'.tpl' ) );  ?>

    <!--div class="col-xs-12 col-sm-<?php echo $cols[1]; ?> col-md-<?php echo $cols[1]; ?> col-lg-<?php echo $cols[1]; ?>"-->
<div class="col-sm-6"> <!-- style="max-width:750px; margin-left:0px; float:right; "> -->
        <div class="product-view">
            <div class="product-name">
                <span><?php echo $heading_title; ?></span>
            </div>
<div class"seller-box-test"></div>
            <?php if ($price) { ?>
                <div class="price">
                    <ul class="list-unstyled">
                        <?php if (!$special) { ?>
                            <li class="price-gruop">
                                <span class="text-price"> <?php echo $price; ?> </span>

			     <?php if ($attribute_groups) { ?>
	                                <?php foreach ($attribute_groups as $attribute_group) { ?>
					    <?php if ($attribute_group['name'] == 'Medida') { ?>
						<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
<!--	                                                / <?php echo $attribute['name']; ?>
-->							/ <?php echo $attribute['text']; ?>
	                                        <?php } ?>
					    <?php } ?>
					<?php } ?>
	                    <?php } ?>

				</li>
                        <?php } else { ?>
                            <li> <span class="text-price"> <?php echo $special; ?> </span> <span style="text-decoration: line-through;"><?php echo $price; ?></span> </li>
                        <?php } ?>
                        <?php if ($tax) { ?>
                            <li class="other-price"><?php echo $text_tax; ?> <?php echo $tax; ?></li>
                        <?php } ?>
                        <?php if ($discounts) { ?>
                            <li>
                            </li>
                            <?php foreach ($discounts as $discount) { ?>
                                <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
                            <?php } ?>
                        <?php } ?>
                    </ul>
                </div>
            <?php } ?>

            <?php if ($review_status) { ?>
                <div class="rating">
                    <p>
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                            <?php if ($rating < $i) { ?>
                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                            <?php } else { ?>
                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                            <?php } ?>
                        <?php } ?>
                        <a href="#review-form" class="popup-with-form" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;" ><?php echo $reviews; ?></a> / <a href="#review-form"  class="popup-with-form" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;" ><?php echo $text_write; ?></a></p>
                </div>
            <?php } ?>
            <ul class="list-unstyled description">
                <?php if ($reward) { ?>
                    <li><b><?php echo $text_reward; ?></b> <?php echo $reward; ?></li>
                <?php } ?>
                <?php if ($points) { ?>
                    <li><b><?php echo $text_points; ?></b> <?php echo $points; ?></li>
                <?php } ?>
<!--                <li><b class="availability"><?php echo $text_stock; ?></b> <?php echo $stock; ?></li>
-->            </ul>
            <div id="product" class="product-extra">
              <div class="seller-box-hitech"></div>
<!--
                <?php if ($options) { ?>
                    <h3><?php echo $text_option; ?></h3>
                    <?php foreach ($options as $option) { ?>
                        <?php if ($option['type'] == 'select') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                                    <option value=""><?php echo $text_select; ?></option>
                                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                        <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                            <?php if ($option_value['price']) { ?>
                                                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                            <?php } ?>
                                        </option>
                                    <?php } ?>
                                </select>
                            </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'radio') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label"><?php echo $option['name']; ?></label>
                                <div id="input-option<?php echo $option['product_option_id']; ?>">
                                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                <?php echo $option_value['name']; ?>
                                                <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                <?php } ?>
                                            </label>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'checkbox') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label"><?php echo $option['name']; ?></label>
                                <div id="input-option<?php echo $option['product_option_id']; ?>">
                                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                <?php echo $option_value['name']; ?>
                                                <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                <?php } ?>
                                            </label>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'image') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label"><?php echo $option['name']; ?></label>
                                <div id="input-option<?php echo $option['product_option_id']; ?>">
                                    <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                                                <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                <?php } ?>
                                            </label>
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'text') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                            </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'textarea') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                            </div>product-extra
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label"><?php echo $option['name']; ?></label>
                                <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                            </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'date') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                <div class="input-group date">
                                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                                    </span></div>
                            </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'datetime') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                <div class="input-group datetime">
                                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                    </span></div>
                            </div>
                        <?php } ?>
                        <?php if ($option['type'] == 'time') { ?>
                            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                <div class="input-group time">
                                    <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                    </span></div>
                            </div>
                        <?php } ?>
                    <?php } ?>
                <?php } ?>
-->
		<?php if ($recurrings) { ?>
                    <hr>
                    <h3><?php echo $text_payment_recurring ?></h3>
                    <div class="form-group required">
                        <select name="recurring_id" class="form-control">
                            <option value=""><?php echo $text_select; ?></option>
                            <?php foreach ($recurrings as $recurring) { ?>
                                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                            <?php } ?>
                        </select>
                        <div class="help-block" id="recurring-description"></div>
                    </div>
                <?php } ?>

                <div class="qty">
                    <div class="quantity-adder clearfix">
                        <div class="quantity-number pull-left">
                            <span><?php echo $olang->get('entry_qty'); ?></span>
                        </div>
                        <div class="pull-right qt-right">
                            <div class="quantity-number pull-left">
                                <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" />
                            </div>
                            <div class="quantity-wrapper pull-left">
                                <span class="add-up add-action">+</span>
                                <span class="add-down add-action">-</span>
                            </div>
 			    <a id="button-cart"  class="btn btn-outline-inverse btn-shopping-cart" data-loading-text="<?php echo $text_loading; ?>">
                            <i class="fa fa-shopping-cart"></i>
<!--                            <span><?php echo $button_cart; ?></span>
-->                        </a>

                        </div>
                    </div>

                <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                </div>
                <div class="action">
<!--                    <div class="cart">
                        <a id="button-cart"  class="btn btn-outline-inverse btn-shopping-cart" data-loading-text="<?php echo $text_loading; ?>">
                            <i class="fa fa-shopping-cart"></i>
                            <span><?php echo $button_cart; ?></span>
                        </a>
                    </div>
                    <div class="wishlist">
                        <a class="btn btn-outline-inverse" data-toggle="tooltip" onclick="wishlist.addwishlist('<?php echo $product_id; ?>');" title="<?php echo $button_wishlist; ?>">
                            <i class="fa fa-heart"></i>
                            <span><?php echo $button_wishlist; ?></span>
                        </a>
                    </div>
                    <div class="compare">
                        <a class="btn btn-outline-inverse" data-toggle="tooltip" onclick="compare.addcompare('<?php echo $product_id; ?>');" title="<?php echo $button_compare; ?>">
                            <i class="fa fa-retweet"></i>
                            <span><?php echo $button_compare; ?></span>
                        </a>
                    </div>
                </div>
-->
            </div>

	    <?php if ($minimum > 1) { ?>
                <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>


<!--
            <div class="clearfix product-box-bottom tabs-group box">
                <div id="tabs" class="tab-nav">
                    <ul class="nav nav-theme clearfix">
                        <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
                        <?php if ($attribute_groups) { ?>
                            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
                        <?php } ?>
                        <?php if ($review_status) { ?>
                            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
                        <?php } ?>
                        <?php if( $productConfig['enable_product_customtab'] && isset($productConfig['product_customtab_name'][$languageID]) ) { ?>
                            <li><a href="#tab-customtab" data-toggle="tab"><?php echo $productConfig['product_customtab_name'][$languageID]; ?><span class="triangle-bottomright"></span></a></li>
                        <?php } ?>
                    </ul>
                </div>
-->
                <div class="tab-content">

		    <?php if ($attribute_groups) { ?>
                             <?php foreach ($attribute_groups as $attribute_group) { ?>
                                 <?php if ($attribute_group['name'] == 'Producto de temporada') { ?>
	                                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
					    <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
						<td><?php echo $attribute_group['name']; ?> : <?php echo $attribute['text']; ?></td>

                 	               	    </div>
				         <?php } ?>
                                <?php } ?>
                            <?php } ?>
                    <?php } ?>
                    <?php if ($review_status) { ?>

                        <div class="tab-pane" id="tab-review">

                            <div id="review"></div>
                            <p> <a href="#review-form"  class="popup-with-form btn btn-sm btn-danger" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;" ><?php echo $text_write; ?></a></p>

                           <div class="hide"> <div id="review-form" class="panel review-form-width"><div class="panel-body">
                            <form class="form-horizontal" id="form-review">

                                <h2><?php echo $text_write; ?></h2>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                        <input type="text" name="name" value="" id="input-name" class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                        <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                        <div class="help-block"><?php echo $text_note; ?></div>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <div class="col-sm-12">
                                        <label class="control-label"><?php echo $entry_rating; ?></label>
                                        &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                        <input type="radio" name="rating" value="1" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="2" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="3" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="4" />
                                        &nbsp;
                                        <input type="radio" name="rating" value="5" />
                                        &nbsp;<?php echo $entry_good; ?></div>
                                </div>
                                  <?php if ($site_key) { ?>
                                  <div class="form-group">
                                    <div class="col-sm-12">
                                      <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                                    </div>
                                  </div>
                                <?php } ?>
                            <div class="buttons clearfix">
                                    <div class="pull-right">
                                        <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                                    </div>
                                </div>
                            </form></div></div></div>

                        </div>
                    <?php } ?>
                    <?php if( $productConfig['enable_product_customtab'] && isset($productConfig['product_customtab_content'][$languageID]) ) { ?>
                        <div id="tab-customtab" class="tab-content tab-pane custom-tab">
                            <div class="inner">
                                <?php echo html_entity_decode( $productConfig['product_customtab_content'][$languageID], ENT_QUOTES, 'UTF-8'); ?>
                            </div>
                        </div>
                    <?php } ?>
            </div>

        </div>
    </div>

</div>
</div>
</div>
