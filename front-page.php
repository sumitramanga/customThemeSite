<!-- Getting the header-front.php -->
<?php

	get_header('front');

?>

	<div class="container">
		<div class="row mb-5 mt-5">
			<div class="card-deck">
				<?php for ($i=1; $i <= 2 ; $i++): ?>
					<?php $featuredPostID = get_theme_mod('featured_post_'.$i.'_setting');?>
					<?php if($featuredPostID): ?>
						<?php
							$args = array(
								'p' => $featuredPostID,
							);
							$featuredPost = new WP_Query($args);
						?>

						<?php if($featuredPost->have_posts()): ?>
							<?php while($featuredPost->have_posts()): $featuredPost->the_post(); ?>
								<div class="card col-6">
									<h3><?php the_title(); ?></h3>
									<p><?php the_content(); ?></p>
									<button type="button" name="button">Go to post</button>
								</div>
							<?php endwhile; ?>
						<?php endif; ?>

					<?php endif; ?>
				<?php endfor; ?>
			</div>
		</div>
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

		<!-- Showing the posts -->
			<div class="row">
				<div class="col">
					<?php if(have_posts()): ?>
						<div class="card-columns">
							<?php while(have_posts()): the_post();?>

								<!-- Adding in content templates/formats such as content-image -->
								<?php get_template_part('content', get_post_format()); ?>

							<?php endwhile; ?>
						</div>
					<?php endif; ?>
				</div>
				<?php
					$total = wp_count_posts()->publish;
					// echo $total;
					$canShow = get_option('posts_per_page');
					// echo $canShow;
				  ?>

				<!-- Shows more posts -->
				<?php if ($total > $canShow):  ?>
					<div class="col-12">
						<hr>
						<?php
							$paginate_args = array(
								// var dump to check arrays contents
								'type' => 'array'
							);
							// To get the pagination to display on the page
							$all_pages = paginate_links($paginate_args);
						 ?>
						 <nav>
						 	<ul class="pagination">
								<?php foreach($all_pages as $page): ?>
									<li class="page-item">
										<!-- str_replace is changing the class. Find, repalce with and where to search. This is default PHP -->
										<?php echo str_replace('page-numbers', 'page-link', $page); ?>
									</li>
								<?php endforeach; ?>
						 	</ul>
						 </nav>

						<button type="button" name="button" class="btn btn-primary btn-block show-more">Show More</button>
					</div>
				<?php endif; ?>
			</div>


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
