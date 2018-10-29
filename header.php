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
	<!-- This displays the menu on the page. do not style the default -->
		<?php wp_nav_menu( array(
			'theme_location' => 'header_nav',
			'menu_class' => 'main-menu',
			'menu_id' => 'main-menu',
			'container_id' => 'menu-top-menu'
	 	) ); ?>
