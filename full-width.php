<!--
	This is a custom template which you can set in the page settings.
	This is reconnmended where as the page-$slug.php isn't because we don't know
	what naming conventions the user will be using. Where as a template is avliable
	under page attributes > templates.

	By Default, the templates are only avliable to the pages not the post. In the comment
	it has to defined.

	Boost up the version number in style.css in the root directory if something
	isn't working the first time (such as a template not showing up).

	TASK: Start from scratch. Make a new two or three different templates (e.g contact with form)
-->

<?php
/*
	Template Name: Full Page Width
	Template Post Type: page, post
*/

 ?>


<?php get_header(); ?>

	<?php if(have_posts()): ?>
		<?php while(have_posts()): the_post(); ?>
			<div class="container-fluid">
				<div class="row">
					<div class="col">
						<h1><?= the_title(); ?></h1>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div>
							<?php the_content(); ?>
						</div>
					</div>
				</div>
			</div>
		<?php endwhile; ?>
	<?php endif; ?>

<?php get_footer(); ?>
