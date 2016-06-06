<?php  $objlang = $this->registry->get('language'); ?>

<?php if( count($testimonials) ) { ?>
	<?php $id = rand(1,10)+rand();?>
   
<div class="box pavtestimonial">
	<div class="box-heading title-module">
		<span><?php echo $objlang->get('text_testimonial_title'); ?></span>
	</div>
	<div class="box-content">
	   <div id="pavtestimonial<?php echo $id;?>" class="carousel slide pavtestimonial">
	   		<div class="col-lg-7 col-md-7 col-sm-7 testi-content">
	   			<?php foreach ($testimonials as $i => $testimonial) {  ?>
					<div class="item <?php if($i==0) {?>active<?php } ?>">
		 				<div class="testimonial-item">
							<?php if(  $testimonial['description'] ) { ?>
							<div class="testimonial">
								<div><?php echo $testimonial['description']; ?></div>
							</div>
							<?php } ?>
							<div class="t-avatar"><img  alt="<?php echo strip_tags($testimonial['profile']); ?>" src="<?php echo $testimonial['thumb']; ?>" class="img-circle"/></div>
							<?php if(  $testimonial['profile'] ) { ?>
							<div class="profile">
								<div><?php echo $testimonial['profile']; ?></div>
							</div>
							<div class="social">
								<i class="fa fa-twitter" data-toggle="tooltip" data-placement="top" data-original-title="Twitter"></i>
								<i class="fa fa-facebook" data-toggle="tooltip" data-placement="top" data-original-title="Facebook"></i>
								<i class="fa fa-youtube" data-toggle="tooltip" data-placement="top" data-original-title="Youtube"></i>
							</div>
							<?php } ?>
							<?php if( $testimonial['video_link']) { ?>
							<a class="colorbox-t" href="<?php echo $testimonial['video_link'];?>"><?php echo $objlang->get('text_watch_video_testimonial');?></a>
							<?php } ?>
						</div>
					</div>
				<?php } ?>
				<?php if( count($testimonials) > 1 ){ ?>	
					<div class="carousel-navigation bullets">
						<?php for($t=0; $t<count($testimonials); $t++) {?>
							<div id="carousel-selector-<?php echo $t; ?>" class="bullet <?php echo($t==0?'active':''); ?>" data-target="#pavtestimonial<?php echo $id;?>" data-slide-to="<?php echo $t; ?>"></div>
						<?php } ?>
		    		</div>   
	    		<?php } ?>	
	   		</div>
	   		<div class="col-lg-5 col-md-5 col-sm-5 hidden-xs">
				<div class="image">
					<img src="image/catalog/demo/banners/img-tetimonial.jpg" alt="" />
				</div>
	   		</div>
	    </div>
	</div>    
</div>
	<?php if( count($testimonials) > 1 ){ ?>
	<script type="text/javascript">
	
		$('#pavtestimonial<?php echo $id;?>').carousel({interval:<?php echo ( $auto_play_mode?$interval:'false') ;?>,auto:<?php echo $auto_play;?>,pause:'hover'});
		
		// handles the carousel thumbnails
		$('[id^=carousel-selector-]').click( function(){
		  var id_selector = $(this).attr("id");
		  var id = id_selector.substr(id_selector.length -1);
		  id = parseInt(id);
		  $('#myCarousel').carousel(id);
		  $('[id^=carousel-selector-]').removeClass('active');
		  $(this).addClass('active');
		});

		$('#pavtestimonial<?php echo $id;?>').bind('slid', function () {
		  var id = $('#pavtestimonial<?php echo $id;?> .item.active').index();
		 
		  $('[id^=carousel-selector-]').removeClass('active');
		  $('[id^=carousel-selector-'+id+']').addClass('active');
		});

		var width = 0;
		$('#pavtestimonial<?php echo $id;?> .bullets .bullet').each(function() {
		    width += $(this).outerWidth(true);
		});
		$('#pavtestimonial<?php echo $id;?> .bullets').width(width);
	
	</script>
	<?php } ?>
<?php } ?>