<?php
/**
 * The template for displaying search forms in pure
 *
 * @package pure
 */
?>
<form role="search" method="get" class="pure-form" action="<?php echo esc_url( home_url( '/' ) ); ?>">
	<input type="search" aria-label="<?php _ex( 'Search for:', 'label', 'pure' ); ?>" placeholder="<?php echo esc_attr_x( 'Search this site &hellip;', 'placeholder', 'pure' ); ?>" value="<?php echo esc_attr( get_search_query() ); ?>" name="s">
	<input type="submit" value="<?php echo esc_attr_x( 'Search', 'submit button', 'pure' ); ?>">
</form>
