<?php echo $header; ?>
<style scoped>
	#header-text{
		font-weight: bold;
		font-size: 150%;
		line-height : 150%;
	}
	#msg-header{
		background-color: #FFE6E6;
		text-align: center;
		padding: 10px;
	}
	.fa-exclamation-circle{
		color : #E85E5E;
	}
	#msg ul{
		margin : 0px;
		padding : 0px;
	}
	#msg li{
		padding : 10px;
		margin-top : 10px;
		list-style-type: none;
		border: solid 1px #F79999;
	}
	#msg li span{
		margin-left: 10px;
		font-weight: bold;
		font-size: 120%;
	}
	.panel{
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		border-radius: 5px;
		-moz-box-shadow: 2px 2px 5px black;
		-webkit-box-shadow: 2px 2px 5px black;
		box-shadow: 2px 2px 5px black;
	}

</style>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<h1><?php echo $model->__( 'Error %s' , $errorCode ); ?></h1>
			<ul class="breadcrumb">
				<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
	<div class="container-fluid">
		<div id="msg">
			<div id="msg-header" class="panel">
				<?php if( $content->isTypeWarning() ) : ?>
				<i class="fa fa-exclamation-circle fa-2x"></i> 
				<?php elseif( $content->isTypeAttention() ) : ?>
				<i class="fa fa-exclamation-circle fa-2x"></i>
				<?php elseif( $content->isTypeInfo() ) : ?>
				<i class="fa fa-info-circle fa-2x"></i> 
				<?php elseif( $content->isTypeSuccess() ) : ?>
				<i class="fa fa-check-circle fa-2x"></i> 
				<?php endif; ?>
				<span id="header-text">
					<?php echo $content->getHeader(); ?>
				</span>
			</div><!-- #msg-header -->
			<ul>
				<?php foreach( $content as $record ) : ?>
				<li class="panel">
					<?php if( $content->isTypeWarning() ) : ?>
					<i class="fa fa-exclamation fa-2x"></i> 
					<?php elseif( $content->isTypeAttention() ) : ?>
					<i class="fa fa-exclamation fa-2x"></i>
					<?php elseif( $content->isTypeInfo() ) : ?>
					<i class="fa fa-info fa-2x"></i> 
					<?php elseif( $content->isTypeSuccess() ) : ?>
					<i class="fa fa-check fa-2x"></i> 
					<?php endif; ?>
					<span><?php echo $record->getRecord(); ?></span>
				</li>
				<?php endforeach; ?>
			</ul>
		</div><!-- #msg -->
	</div><!-- .container-fluid -->
</div><!-- #content -->
<script>
	'use strict';
	
</script>