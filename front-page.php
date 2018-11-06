<!-- Getting the header-front.php -->
<?php get_header('front'); ?>

	<div class="container">
		<!-- <p>front-page is rendering</p> -->
		<h1>Home page</h1>
		<!-- Getting a theme modification which is an sql query. Always looking for the setting not control.
	 		shoudl always echo -->
		 <!-- php echo get_theme_mod('header_background_colour_setting');  -->

		<!-- Displaying the logo on the site -->
		<?php
			if ( function_exists('the_custom_logo')) {
				the_custom_logo();
			}
		 ?>
		<br>

		<?php if(have_posts()): the_post(); ?>
			<div class="row">
				<?php while(have_posts()): the_post();?>

					<!-- Adding in content templates/formats such as content-image -->
					<?php get_template_part('content', get_post_format()); ?>

				<?php endwhile; ?>
			</div>
		<?php endif; ?>

		<!-- if the front_page_sidebar (id) sidebar active  -->
		<?php if(is_active_sidebar('front_page_sidebar')): ?>
			<div class="col-4">
				<div id="frontSidebar">
					<?php dynamic_sidebar('front_page_sidebar'); ?>
				</div>
			</div>
		<?php endif; ?>
	</div>

<!-- Here it used to be wp_footer(); but since we are including the template this has now changed -->
<?php get_footer('front'); ?>
