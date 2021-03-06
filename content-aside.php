<?php if (is_singular()): ?>
	<div class="container" style="background-color: #C8FCB0">
		<div class="row">
			<div class="col">
				<h1><?= the_title(); ?></h1>
				<p>This is a blog post</p>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-md-4">
				<?php if(has_post_thumbnail()): ?>
					<?php the_post_thumbnail('medium', ['class' => 'card-img-top', 'alt'=>'thumbnail image']); ?>
				<?php endif; ?>
			</div>
			<div class="col-xs-12 col-md-8">
				<div>
					<p><?= the_content(); ?></p>
				</div>
			</div>
		</div>
	</div>

<?php else: ?>

	<div class="card" style="width: 18rem;">
		<div class="card-body">
			<?php the_post_thumbnail('medium', ['class' => 'card-img-top', 'alt'=>'thumbnail image']); ?>
			<h5 class="card-title"><?php the_title(); ?></h5>
			<a href="<?= esc_url(get_permalink()); ?>" class="btn btn-light">Go to aside</a>
			<p class="card-text"><?php the_content(); ?></p>
		</div>
	</div>


<?php endif; ?>
