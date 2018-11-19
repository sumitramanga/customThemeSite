<?php get_header(); ?>

<!-- <h1>This is coming from the single.php</h1> -->

<!-- Every page needs if have post otherwise it will guess which post.  -->
<?php if(have_posts()): ?>
	<?php while(have_posts()): the_post(); ?>

		<!-- shows the content template -->
		<?php get_template_part('content', get_post_format()); ?>

		<div class="container">
			<div class="col">
				<?php $comments_args = array(
					'comment_field' => '<div class="form-group">
											<label for="comment">Enter your comment</label>
											<textarea name="comment" class="form-control" rows=10 aria-required="true"></textarea>
										</div>'
				) ?>
				<?php comment_form($comments_args, get_the_id()); ?>
			</div>
			<div class="col">
				<?php
					$comments = get_comments(array(
						'post_id' => get_the_ID(),
						'status' => 'approve'
					));
					wp_list_comments('', $comments);

				 ?>
			</div>
		</div>



	<?php endwhile; ?>
<?php endif; ?>

<?php get_footer('front'); ?>
