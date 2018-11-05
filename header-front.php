<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<?php wp_head(); ?>
	<title>Document</title>
</head>
<body>
	<!-- <h3>This is comming from header-front.php</h3> -->
	<!-- <p>This will only be used on the front page.</p> -->
	<!-- this is the header-front template -->

<!-- This displays the menu on the page. do not style the default -->

	<?php wp_nav_menu( array(
		'theme_location' => 'header_nav',
		'menu_class' => 'main-menu',
		'menu_id' => 'main-menu',
		'container_id' => 'menu-top-menu'
 	) ); ?>

	<?php
		if (get_header_image() == false) {
			$bannerImage = get_template_directory_uri() . '/assets/images/default-image-header.jpg';
		} else {
			$bannerImage = get_header_image();
		}
	 ?>
	 

	<div class="front-page-header bg-dark" id="front-page-header" style="background-image: url(<?= $bannerImage ?>);">
	</div>
