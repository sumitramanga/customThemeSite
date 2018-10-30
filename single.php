<?php get_header(); ?>

<!-- <h1>This is coming from the single.php</h1> -->

<!-- Every page needs if have post otherwise it will guess which post.  -->
<?php if(have_posts()): ?>
	<?php while(have_posts()): the_post(); ?>

		<!-- shows the content template -->
		<?php get_template_part('content', get_post_format()); ?>
		
	<?php endwhile; ?>
<?php endif; ?>

<?php get_footer('front'); ?>
