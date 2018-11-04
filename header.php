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
	<!-- <h3>This is comming from header.php</h3> -->
	<!-- this is the header template -->

	<!-- Getting a smaller logo size -->
	<?php
		// getting a theme modifier from the customiser section
		$custom_logo = get_theme_mod('custom_logo');
		// Getting the image path. $custom_logo is the id. 'medium' is the size of image wanting
		$logo_url = wp_get_attachment_image_url($custom_logo, 'medium');
		// echo $logo_url;
	 ?>

	<?php if($custom_logo): ?>
	  <img class="img-fluid" src="<?= $logo_url ?>" alt="Logo">
	<?php endif; ?>


	<!-- This displays the menu on the page. do not style the default class and
 	and id's. Instead, create tose attributes here. -->
		<?php wp_nav_menu( array(
			'theme_location' => 'header_nav',
			'menu_class' => 'main-menu',
			'menu_id' => 'main-menu',
			'container_id' => 'menu-top-menu'
	 	) ); ?>
