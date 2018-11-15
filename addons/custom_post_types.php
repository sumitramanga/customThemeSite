<?php
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

function add_enquiries_posts_type(){

	$labels = array(
		'name' => _x('Enquiries', 'post type name', '18wdwu02customtheme'),
		'singular_name' => _x('Enquiries', 'post types singular name', '18wdwu02customtheme'),
		'add_new_item' => _x('Add a new enquiries', 'adding new enquiries', '18wdwu02customtheme')
	);

	// editor is the type you want to edit as
	$args = array(
		'labels' => $labels,
		'description' => 'Enquiries that come through the site',
		'public' => false,
		'hierarical' => true,
		'exclude_from_search' => true,
		'show_ui' => true,
		'show_in_menu' => true,
		'show_in_nav_menu' => false,
		'menu_icon' => 'dashicons-megaphone',
		'supports' => array(
			'title',
			'editor'
		),
		'query_var' =>	true
	);
	register_post_type('enquiries', $args);
}

add_action('init', 'add_staff_posts_type');
add_action('init', 'add_enquiries_posts_type');
