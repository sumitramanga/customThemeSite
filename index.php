<?php get_header(); ?>

	<div class="container">
		<?php if(have_posts()): ?>
			<?php while(have_posts()): the_post(); ?>

				<div class="row">
					<!-- if there is a feature image -->
					<?php if(has_post_thumbnail()): ?>
						<div class="col-xs-12 col-md-4">
							<!-- Calling the function which feature image displays on page. Need to specfiy the size. array speifics attributes for tag.  -->
							<?php the_post_thumbnail('medium', ['class' => 'img-fluid', 'alt'=>'thumbnail image']); ?>
						</div>
						<div class="col-xs-12 col-md-8">
						<!-- else no feature image -->
					<?php else: ?>
						<div class="col-xs-12">
					<?php endif; ?>
						<h1><?php the_title(); ?></h1>
						<div><?php the_content(); ?></div>
					</div>
				</div>

			<?php endwhile; ?>
		<?php endif; ?>
	</div>

<?php get_footer(); ?>
