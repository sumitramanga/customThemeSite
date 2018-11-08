<?php /* Template Name: Staff Page template */ ?>
<?php get_header(); ?>

<?php if(have_posts()): ?>
	<?php while(have_posts()): the_post(); ?>

	<div class="container">
		<div class="row">
			<div class="col">
				<h1><?php the_title(); ?></h1>
			</div>
			<div>
				<?php the_content(); ?>
			</div>
		</div>
		<div class="row">
			<?php
				// $allStaffMembers = new WP_QUERY('post_type=staff&order=ASC&orderby=title');
				$args = array(
					'post_type' => 'staff',
					'order' => 'ASC',
					'orderby' => 'title'
				);
				// making a new query
				$allStaffMembers = new WP_QUERY($args);
			 ?>

			<?php if($allStaffMembers->have_posts()): ?>
				<?php while($allStaffMembers->have_posts()): $allStaffMembers->the_post(); ?>
					<div class="card" style="width: 18rem;">
						<?php if(has_post_thumbnail()): ?>
							<?php the_post_thumbnail('medium', ['class' => 'card-img-top', 'alt'=>'thumbnail image']); ?>
						<?php endif; ?>
					  <div class="card-body">
					    <h5 class="card-title"><?php the_title(); ?></h5>
						<?php
						$id = get_the_id();
						$staffRole = get_post_meta($id, 'staffRole', true);
						 ?>

						<?php if($staffRole): ?>
							<p><?= $staffRole; ?></p>
						<?php endif; ?>
					  </div>
					</div>

				<?php endwhile; ?>
			<?php endif ?>


		</div>
	</div>

	<?php endwhile; ?>
<?php endif; ?>

<?php get_footer(); ?>
