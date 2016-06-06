<div class="box white latest_blog">
	<div class="box-heading title-module">
		<span><?php echo $heading_title; ?></span>
	</div>
	<div class="box-content" >
		<?php if( !empty($blogs) ) { ?>
		<div class="pavblog-latest row">
			<?php foreach( $blogs as $key => $blog ) { $key = $key + 1;?>
			<div class="col-lg-<?php echo floor(12/$cols);?> col-md-<?php echo floor(12/$cols);?> col-sm-<?php echo floor(12/$cols);?>">
				
				<div class="blog-item">
					<div class="blog-body">
						<div class="col-lg-8 col-md-8 col-sm-12 col-sm-12 no-padding">
							<?php if( $blog['thumb']  )  { ?>
							<img class="img-responsive" src="<?php echo $blog['thumb'];?>" alt="" title="<?php echo $blog['title'];?>"/>
							<?php } ?>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12 create-info no-padding">
							<h4 class="blog-title">
								<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a>
							</h4>
							<div class="created">
								<span class="author">
									<span><i class="fa fa-pencil"></i><?php echo $objlang->get("text_write_by");?></span> 
									<span class="t-color"><?php echo $blog['author'];?></span>
									&nbsp;on&nbsp;
								</span> 
								<span class="day"><?php echo date("d",strtotime($blog['created']));?></span>-
								<span class="month"><?php echo date("M",strtotime($blog['created']));?></span>-<span class="year"><?php echo date("Y",strtotime($blog['created']));?></span>
							</div>
							<div class="description">
									<?php $blog['description'] = strip_tags($blog['description']); ?>
									<?php echo utf8_substr( $blog['description'],0, 150 );?>...
							</div>
							<a href="<?php echo $blog['link'];?>" class="readmore btn btn-primary pull-right"><?php echo $objlang->get('text_readmore');?></a>
						</div>
					</div>	
				</div>

			</div>
			<?php if( ( $key%$cols==0 || $key == count($blogs)) ){  ?>

			<?php } ?>
			<?php } ?>
		</div>
		<?php } ?>
	</div>
</div>
