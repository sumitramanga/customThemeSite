<?php get_header(); ?>

<h1>this is the staff single page</h1>

<?php if(have_posts()): ?>
	<?php while(have_posts()): the_post(); ?>
		<?php get_template_part('content',get_post_format()); ?>
	<?php endwhile; ?>
<?php endif; ?>

<?php get_footer(); ?>
