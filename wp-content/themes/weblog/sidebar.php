<?php
/**
 * The sidebar containing the main widget area.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Acme Themes
 * @subpackage Weblog
 */

if ( ! is_active_sidebar( 'weblog-sidebar' ) ) {
	return;
}
$sidebar_layout = weblog_sidebar_selection();
if( $sidebar_layout == "right-sidebar" || empty( $sidebar_layout ) ) : ?>
	<div id="secondary-right" class="widget-area sidebar secondary-sidebar" role="complementary">
		<div id="sidebar-section-top" class="widget-area sidebar clearfix">
			<?php dynamic_sidebar( 'weblog-sidebar' ); ?>
		</div>
	</div>
<?php endif;