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
	wp_enqueue_script('theme-script', get_template_directory_uri(). '/assets/js/theme-script.js', array(), '0.0.1', true);

	// tell wordpress we're usingthis
	global $wp_query;

	// Sending our varibles to theme-scripts
	wp_localize_script('theme-script', 'load_more', array(
		// 'test' is the key and 'this is..'is the value
		// 'test' => 'This is coming from functions.php'

		// Wordpress own ajax request. Not hard the url therfore using the site_url()
		'ajax_url' => site_url() . '/wp-admin/admin-ajax.php',
		// Get the query to send to the JS.
		'query' => json_encode($wp_query->query_vars),
		// Get the current page we're currently on. ? = or get this (Here we are getting page 1)
		'current_page' => get_query_var('paged') ? get_query_var('paged'): 1,
		// what is the maximum page allowed
		'max_page' => $wp_query->max_num_pages
	));
}

// renders out the stylshet in wp-head.
add_action('wp_enqueue_scripts', 'addCustomThemeStyles');

// Adding styling to admin (back end) style
function add_admin_custom_styles(){
	wp_enqueue_style('admin-style', get_template_directory_uri() . '/assets/css/admin.css', array(), '0.0.1', 'all');
	wp_enqueue_script('admin-scripts', get_template_directory_uri(). '/assets/js/admin-scripts.js', array(), '0.0.1', true);

	// To send the varibles to javascript btu haveto make the global varible 
	global $metaboxes;
	$formats = array();

	// Getting only metaboxes that have the psot format
	foreach ($metaboxes as $id => $metabox) {
		if ($metabox['format_condition']) {
			$formats[$metabox['format_condition']] = $id;
		}
	}
	// To send the varibles to javascript
	wp_localize_script('admin-scripts', 'formats', array(
		'allFormats' => $formats
	));
}

add_action('admin_enqueue_scripts', 'add_admin_custom_styles');

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

add_theme_support( 'post-formats', array( 'aside', 'gallery', 'image', 'video', 'audio' ) );

// Splitting functions into separate file for best practises. We need to get the file in order for it to run in.
require get_parent_theme_file_path('./addons/custom_post_types.php');
require get_parent_theme_file_path('./addons/custom_customizer.php');
require get_parent_theme_file_path('./addons/custom_fields.php');

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

// Adding the widget feature within apperance
// function register_my_sidebars() {
// 	register_sidebars( 2, array(
// 		'name'          => 'Home right sidebar',
// 		'id'            => 'home_right_1',
// 		'before_widget' => '<div>',
// 		'after_widget'  => '</div>',
// 		'before_title'  => '<h2 class="rounded">',
// 		'after_title'   => '</h2>',
// 	) );
// }
// add_action( 'widgets_init', 'register_my_sidebars' );


function register_my_sidebars(){
	register_sidebar(array(
		// unique identifer for a specific side bar (for instants this is on the home page)
		'id' => 'front_page_sidebar',
		// Name is the front end name for the user
		'name' => 'Front Page Sidebar',
		'description' => 'Sidebar which appears on the front page',
		// What html tag are needed around the widget. "%1$s" is a class/id which gives the classes automatically
		'before_widget' => '<div id="%1$s" class="widget customWidget %2$s">',
		'after_widget' => '</div>',

		// Optinal title
		'before_title' => '<h3 class="widgetTitle">',
		'after_title' => '</h3>'
	));
}

add_action('widgets_init', 'register_my_sidebars');


register_default_headers(array(
	'banner' => array(
			'url' => get_template_directory_uri() . '/assets/images/default-image-header.jpg',
			'thumbnail_url' => get_template_directory_uri() . '/assets/images/default-image-header.jpg',
			'description' => 'Default Banner Image for front page'
	)
));

/*
	Adding a header with a bg image.
	width and height uses aspect ratio which is said in the customiser. Recommended size for the admin user.
	default-iamge

	get_template_directory_uri() get the path for the folder
*/
function add_Custom_Header(){
	$defaults = array(
		'default-image'          => get_template_directory_uri() . '/assets/images/default-image-header.jpg',
		'width'                  => 1280,
		'height'                 => 720,
		'flex-height'            => false,
		'flex-width'             => false,
		'uploads'                => true,
		'random-default'         => false,
		'header-text'            => false,
		'default-text-color'     => ''
	);

	add_theme_support( 'custom-header', $defaults );
}

add_action('init', 'add_Custom_Header');

// Adding a custom background on the page
function add_the_custom_background(){
	$defaults = array(
		'default-color'          => 'white',
		'default-image'          => '',
		'default-repeat'         => 'repeat',
		'default-position-x'     => 'left',
        'default-position-y'     => 'top',
        'default-size'           => 'auto',
		'default-attachment'     => 'scroll',
		'wp-head-callback'       => '_custom_background_cb'
	);
	add_theme_support( 'custom-background', $defaults );
}

add_action('init', 'add_the_custom_background');

// Getting the page number using ajax request
function ajax_load_more_posts_on_front_page() {
	// decoding to a json format. striplashes removes slashes from string
	$args = json_decode( stripslashes($_POST['query']), true );
	// if on page 1 we want to get page 2
	$args['paged'] = $_POST['page'] + 1;
	// Only want published posts
	$args['post_status'] = 'publish';

	// Calling the default query
	query_posts($args);

	// what we want to get rendered out. Since we have created the html we only need to get the template
	if(have_posts()):
		while (have_posts()): the_post();
			get_template_part('content', get_post_format());
		endwhile;
	endif;

	die();
}

add_action('wp_ajax_loadmore', 'ajax_load_more_posts_on_front_page');
add_action('wp_ajax_nopriv_loadmore', 'ajax_load_more_posts_on_front_page');
