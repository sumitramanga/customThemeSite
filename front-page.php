<!-- Getting the header-front.php -->
<?php get_header('front'); ?>

	<div class="container">
		<!-- <p>front-page is rendering</p> -->
		<h1>Home page</h1>

		<?php if(have_posts()): the_post(); ?>
			<div class="row">
				<?php while(have_posts()): the_post();?>

					<?php if(has_post_thumbnail()): ?>
						<div class="card" style="width: 18rem;">
						<?php the_post_thumbnail('medium', ['class' => 'card-img-top', 'alt'=>'thumbnail image']); ?>

					<?php else: ?>
						<div class="card" style="width: 18rem;">

					<?php endif; ?>
							<div class="card-body">
								<h5 class="card-title"><?php the_title(); ?></h5>
								<p class="card-text"><?php the_content(); ?></p>
								<a href="<?= esc_url(get_permalink()); ?>" class="btn btn-primary">Go to post</a>
							</div>
						</div>

				<?php endwhile; ?>
			</div>
		<?php endif; ?>
	</div>

<!-- Here it used to be wp_footer(); but since we are including the template this has now changed -->
<?php get_footer('front'); ?>
