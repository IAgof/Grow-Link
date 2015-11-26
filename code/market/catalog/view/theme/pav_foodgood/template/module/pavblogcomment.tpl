<div class="pavblogs-comments-box panel panel-primary">
	<div class="panel-heading"><span><?php echo $heading_title; ?></span></div>
	<div class="box-content padding">
		<div class="clearfix">
			<?php if( !empty($comments) ) { ?>
			<div class="pavblog-comments">
				<?php $default=''; foreach( $comments as $comment ) { ?>
				<div class="pav-comment media">
					<a class="image" href="<?php echo $comment['link'];?>" title="<?php echo $comment['user'];?>">
						<img src="<?php echo "http://www.gravatar.com/avatar/" . md5( strtolower( trim( $comment['email'] ) ) ) . "?d=" . urlencode( $default ) . "&amp;s=60" ?>" class="media-object img-responsive"/>
					</a>
					<div class="media-body">
						<p class="comment"><?php echo utf8_substr( $comment['comment'], 50 ); ?></p>
						<span class="comment-author"><?php echo $objlang->get('text_postedby');?> <?php echo $comment['user'];?>...</span>
					</div>					
				</div>
				<?php } ?>
			</div>
			<?php } ?>
		</div>
	</div>
</div>

