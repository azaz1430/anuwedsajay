<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<!--[if IE]>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">``
	<![endif]-->
	<?php $wl_theme_options = weblizar_get_options(); ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />  
    <meta charset="<?php bloginfo('charset'); ?>" />	
	<link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>" type="text/css" media="screen" />
	<?php if($wl_theme_options['upload_image_favicon']!=''){ ?>
	<link rel="shortcut icon" href="<?php  echo $wl_theme_options['upload_image_favicon']; ?>" /> 
	<?php } ?>
	<?php wp_head(); ?>
</head>
<body <?php body_class(); ?> >
<div id="menu_wrapper" <?php if($wl_theme_options['sticky_header']!='') { ?> data-spy="affix" data-offset-top="95" <?php } ?>>
	<div class="top_wrapper">
		<header id="header">
			<div class="row">
				<nav class="navbar navbar-default hd_cover" role="navigation" <?php if ( has_header_image() ) { ?> style='background-image: url("<?php header_image(); ?>")' <?php  } ?>>
					<div class="container-fluid">
						<div class="container">		
							<?php if($wl_theme_options['search_form']!=''){ ?>
							<div class="col-md-12 top-search-form">
							<?php echo get_search_form(); ?>	
							</div>	
							<?php } ?>						
							<div class="col-md-12 textsect">
							    <span class="headsectfont">Anusha Reddy</span><br/>
<span class="andsect">and</span><br/>
<span class="headsectfont">Ajay Chandra Reddy</span><br/>
								<div class="navbar-header" id="navbar-header" >
									<a style="display:none" title="Weblizar" href="<?php echo home_url( '/' ); ?>">
									<?php $custom_logo_id = get_theme_mod( 'custom_logo' );
									$image = wp_get_attachment_image_src( $custom_logo_id,'full' ); 
									if(has_custom_logo()) { ?>
									
									<img style="display:none"  src="<?php echo $image[0]; ?>" style="height:<?php if($wl_theme_options['height']!='') { echo $wl_theme_options['height']; }  else { "55"; } ?>px; width:<?php if($wl_theme_options['width']!='') { echo $wl_theme_options['width']; }  else { "150"; } ?>px;" />
									<?php } else { echo '<span class="site-title">'.get_bloginfo( ).'</span>'; } ?>
									</a>
								
								  </div>
							</div></div></div>
							</nav>
							<div style="clear:both;"></div>
								<nav class="navbar navbar-default hd_cover header2sdtr" style="background:#fad337!important; flat:right;">
							<div class="container padboth">
							<div class="col-md-12 header-right padboth">
							    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" style="padding-left:30px !important; background:none!important; float:left!important; border:0px!important;">
									<span style="float:left; width:auto;"><span class="sr-only"><?php _e('Toggle navigation','weblizar'); ?></span>
									<span class="icon-bar" style="color:#000!important; background: #000;"></span>
									<span class="icon-bar" style="color:#000!important; background: #000;"></span>
									<span class="icon-bar" style="color:#000!important; background: #000;"></span></span><span style="float: left;margin-top: -5px;margin-left: 9px;color: #000;">More</span>
								  </button> 
								  <div style="clear:both;"></div>
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								  <?php wp_nav_menu( array(
									'theme_location'    => 'primary',               
									'container'         => 'nav-collapse collapse navbar-inverse-collapse',							
									'menu_class'        => 'nav navbar-nav navbar-left',
									'fallback_cb'       => 'weblizar_fallback_page_menu',
									'walker'            => new wp_bootstrap_navwalker())
									);  ?>
								</div>
							</div>
						</div>
					
				</nav>		
			</div>
		</header>
	</div>
</div>