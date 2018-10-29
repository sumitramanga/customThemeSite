<?php get_header(); ?>

<!-- <h1>This is coming from the single.php</h1> -->

<!-- Every page needs if have post otherwise it will guess which post.  -->
<?php if(have_posts()): ?>
	<?php while(have_posts()): the_post(); ?>
		<div class="container">
			<div class="row">
				<div class="col">
					<h1><?= the_title(); ?></h1>
					<p>This is a blog post</p>
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
