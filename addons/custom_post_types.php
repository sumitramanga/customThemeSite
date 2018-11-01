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

add_action('init', 'add_staff_posts_type');
