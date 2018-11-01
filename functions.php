<?php
function addCustomThemeStyles() {
	// Style. Add styles in the queue. Always define the version of the css to make sure it is cached w/o hard refresh. 'all' = what the media type is (screen, print, or all)
	wp_enqueue_style('bootstrap', get_template_directory_uri() . '/assets/css/bootstrap.min.css', array(), '4.1.3', 'all');
	wp_enqueue_style('customcss', get_template_directory_uri() . '/assets/css/theme-style.css', array(), '0.0.1', 'all');


	// Scripts
	// jquery is already downloaded in bootstrap
	// trues put in footers
	wp_enqueue_script('jquery');
	wp_enqueue_script('bootstrapjs', get_template_directory_uri() . '/assets/js/bootstrap.min.js', array(), '4.1.3', true);
	wp_enqueue_script('customjs', get_template_directory_uri(). '/assets/js/theme-script.js', array(), '0.0.1', true);
}

// renders out the stylshet in wp-head.
add_action('wp_enqueue_scripts', 'addCustomThemeStyles');

// Feature image section displayed in the edit post or page. On upload the image get cropped in 4 different sizes. located in the uploads folder
add_theme_support('post-thumbnails');

// This crops the image *on upload* from anywhere.
add_image_size('icon', 50, 50, true);

// Creates the nav menu within the 'Appearance' section.
// register_nav_menu('primary_menu', 'customthemesite');

function addCustomMenus(){
	// give the ablitiy to have menu on our site

	// This will make the "menus" button appear in the apperance seciton
	add_theme_support('menus');

	// These are to give the user the option to where location of the nav can be displayed
	// header_nav is defined in header-front.php where the settings for the top nav is. It is the theme_location.
	register_nav_menu('header_nav', 'This is the navigation which appears at the top of the page');
	register_nav_menu('footer_nav', 'This is the navigation which appears at the bottom of the page');
}

// where we are adding it to init which ill initlise on load
add_action('init', 'addCustomMenus');

/*
Adding the post formats to our theme. we are turning on post-format function and
the options 'aside, 'gallery', 'image' and 'video'. This is used to customise
the styling of an inidividual post depending on which format is selected. Our
now suports post formats
 */

add_theme_support( 'post-formats', array( 'aside', 'gallery', 'image', 'video' ) );

// Splitting functions into separate file for best practises
require get_parent_theme_file_path('./addons/custom_post_types.php');

// adding logo support in the customise section
// flex-width means a custom width and height can be made
function addCustomLogo(){
	add_theme_support('custom-logo', array(
		'height' => 100,
		'width' => 300,
		'flex-width' => true,
		'flex-height' => true
	));

}

add_action('init', 'addCustomLogo');
