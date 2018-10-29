<?php get_header(); ?>

<!-- <h1>this is coming from page.php</h1> -->

<!--
	This page is rendering the pages that are created in Wordpress
	such as the about page and sample page. In order for them to render
	the content and title that has been set up in Wordpress admin, the
	if and while loops along with the the_title and the_content are needed
	to display on the page.
 -->

<?php if(have_posts()): ?>
	<?php while(have_posts()): the_post(); ?>
		<div class="container">
			<div class="row">
				<div class="col">
					<h1><?= the_title(); ?></h1>
					<hr>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div>
						<p><?= the_content(); ?></p>
					</div>
				</div>
			</div>
		</div>
	<?php endwhile; ?>
<?php endif; ?>




<?php get_footer('front'); ?>
