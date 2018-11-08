	<!-- this is the footer template include it in your pages with get_footer(); in php tags -->
	<!-- <p>This is coming from footer-front.php</p> -->
	<?php wp_nav_menu( array(
		// coming from functions.php
		'theme_location' => 'footer_nav',
		'menu_class' => 'footer-menu',
		'menu_id' => 'footer-menu',
		'container_id' => 'menu-bottom-menu'
	)) ?>


	<?php  ?>

	<!-- cotinue here -->
	<div class="row">
		<div class="col text-center">
			<p><?php echo get_theme_mod('footer_text_setting'); ?></p>
		</div>
	</div>

	<?php wp_footer(); ?>
</body>
</html>
