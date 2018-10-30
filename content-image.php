<?php if( is_singular() ): ?>
	<div class="container" style="background-color:#D6CBEB">
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
			<h5 class="card-title"><?php the_title(); ?></h5>
			<?php if(has_post_thumbnail()): ?>
				<?php the_post_thumbnail('medium', ['class' => 'card-img-top', 'alt'=>'thumbnail image']); ?>
			<?php endif; ?>
			<a href="<?= esc_url(get_permalink()); ?>" class="btn btn-secondary">Go to image</a>
		</div>
	</div>

<?php endif; ?>
