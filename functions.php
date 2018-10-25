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
add_image_size('icon', 50, 50, true);
