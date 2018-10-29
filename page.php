<?php get_header(); ?>

<!-- <h1>this is coming from page.php</h1> -->

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
