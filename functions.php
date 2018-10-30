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

/*Here we are making our own post type. First we must add*/
function add_staff_posts_type(){
	// here we are changing the admin dashboard by adding in the options we want to show to the user

	$labels = array(
		'name' => _x('Staff', 'post type name', '18wdwu02customtheme'),
		'singular_name' => _x('Staff', 'post types singular name', '18wdwu02customtheme'),
		'add_new_item' => _x('Add a new staff member', 'new member', '18wdwu02customtheme'),
		'edit_item' => _x('New staff member', 'edit staff', '18wdwu02customtheme')
	);

	$args = array(
		'labels' => $labels,
		'description' => 'A post type for the staff members in the company',
		'public' => true,
		'hierarical' => true,
		'exclude_from_search' => false,
		'show_ui' => true,
		'show_in_menu' => true,
		'show_in_nav_menu' => false,
		'menu_icon' => 'dashicons-groups',
		'supports' => array(
			'title',
			'thumbnail'
		),
		'query_var' =>	true
	);
	register_post_type('staff', $args);
}

add_action('init', 'add_staff_posts_type');
