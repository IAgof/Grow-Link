<header class="main-page">
	<div id="header-top">
		<div id="topbar" class="topbar-primary">
			<div class="container">
				<div class="show-desktop">
					<div class="quick-access">
<!--						<div class="login links hidden-xs hidden-sm">
							<?php if ($logged) { ?>
				            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a> -
				            <a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
				            <?php } else { ?>
				            <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a> or
				            <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a>
				            <?php } ?>
						</div>
						<div class="btn-group">
							<div class="dropdown-toggle btn-theme-normal" >
								<i class="fa fa-cog"></i>
								<span class="text-label">Opciones</span>
								<span class="fa fa-angle-down"></span>
							</div>

							<div class="quick-localisation dropdown-menu tree-menu">
								<div class="language">
									<?php echo $language; ?>
								</div>
								<div class="currency">
									<?php echo $currency; ?>
								</div>
							</div>
						</div>

						<div class="btn-group">
							<div class="dropdown-toggle btn-theme-normal" >
								<i class="fa fa-user"></i>
								<span class="text-label">Mi cuenta</span>
								<span class="fa fa-angle-down"></span>
							</div>

							<div class="quick-setting dropdown-menu tree-menu">
								<ul class="links">
									<li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
									<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
									<li><a class="last" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
								</ul>
							</div>
						</div>
-->
						<div class="btn-group">
							<a href="<?php echo $account; ?>">
								<img class="logo-account"></img>

								<?php if ($logged) { ?>
<!--							<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a> -
-->								<a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a>
								<?php } else { ?>
<!--									<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
-->								<?php } ?>




							</a>
						</div>
						<div class="btn-group">
							<a href="<?php echo $shopping_cart; ?>">
								<img class="logo-cart">

									<div class="quick-action">
										<?php echo $cart; ?>
									</div>
									<button data-toggle="offcanvas" class="btn canvas-menu hidden-lg hidden-md" type="button">
										<span class="fa fa-bars"></span>
									</button>
<!--									<?php echo $text_shopping_cart; ?>
-->								</img>

							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="main-menu header-bot">
			<div class="container">
				<div class="logo-inner">
					<?php if( $logoType=='logo-theme'){ ?>
						<div id="logo-theme" class="logo-store img-responsive pull-left">
							<a href="<?php echo $home; ?>">
								<span></span>
							</a>
						</div>
					<?php } elseif ($logo) { ?>
						<div id="logo" class="logo-store img-responsive pull-left"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
					<?php } ?>
				</div>

				<div id="pav-mainnav" class="mainnav-primary">
					<div class="mainnav-wrap">

						<?php
						/**
						 * Main Menu modules: as default if do not put megamenu, the theme will use categories menu for main menu
						 */
						$modules = $helper->renderModule('pavmegamenu');

						if (count($modules) && !empty($modules)) { ?>

						<?php echo $modules; ?>

						<?php } elseif ($categories) { ?>

						    <div class="navbar">
						        <div id="mainmenutop" class="megamenu navbar-inner" role="navigation">
						            <div class="navbar-header">
						                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
<!--						                    <span class="sr-only">Toggle navigation</span>
-->						                    <span class="fa fa-bars"></span>
						                </button>
						            </div>

						            <div class="collapse navbar-collapse navbar-ex1-collapse">
						                <ul class="nav navbar-nav">

						                    <?php foreach ($categories as $category) { ?>

						                        <?php if ($category['children']) { ?>
						                            <li class="parent dropdown deeper ">
						                                <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?>
						                                    <b class="fa fa-angle-down"></b>
						                                    <span class="triangles"></span>
						                                </a>
						                            <?php } else { ?>
						                            <li>
						                                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
						                            <?php } ?>
						                            <?php if ($category['children']) { ?>
						                                <ul class="dropdown-menu">
						                                    <?php for ($i = 0; $i < count($category['children']);) { ?>
						                                        <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
						                                        <?php for (; $i < $j; $i++) { ?>
						                                            <?php if (isset($category['children'][$i])) { ?>
						                                                <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
						                                            <?php } ?>
						                                        <?php } ?>
						                                    <?php } ?>
						                                </ul>
						                            <?php } ?>
						                        </li>
						                    <?php } ?>
						                </ul>
						            </div>
						        </div>
						    </div>
						<?php } ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
