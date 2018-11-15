<?php /* Template Name: Enquiries Template */ ?>

<!-- Checking to see what happens before sending to DB -->
<?php
	if ($_POST) {
		var_dump($_POST);

		$errors = array();
		// Validation goes here
		if (!wp_verify_nonce($_POST['_wpnonce'], 'wp_enquiry_form')) {
			echo("Cannot save the data, sorry");
			return;
		}

		if (empty($errors)) {
			$args = array(
				'post_title' => $_POST['enquiriesName'],
				'post_content' => $_POST['enquiriesMessage'],
				'post_type' => 'enquiries',
				'meta_input' => array(
					'email' => $_POST['enquiriesEmail'],
					'courseInterest' => $_POST['enquiriesCourseInterest']
				)
			);

			wp_insert_post($args);
			echo "your enquiry has been sent";
		}
	}
?>


<?php get_header(); ?>

<?php if(have_posts()): ?>
	<?php while(have_posts()): the_post(); ?>

		<div class="container">
			<div class="row">
				<div class="col">
					<h1><?php the_title(); ?></h1>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="wp-content">
						<?php the_content(); ?>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col">
					<form action="<?= get_permalink(); ?>" method="post">
						<!-- Hidden input field This line is needed for the Wordpress security -->
						<?php wp_nonce_field('wp_enquiry_form'); ?>
						<div class="form-group">
							<label for="">Name</label>
							<input type="text" name="enquiriesName" value="">
						</div>
						<div class="form-group">
							<label for="">Message</label>
							<?php wp_editor($content, 'enquiriesMessage', array('textarea_rows' => '10')); ?>
						</div>
						<div class="form-group">
							<label for="">Email</label>
							<input type="email" name="enquiriesEmail" class="form-control" value="">
						</div>
						<div class="form-group">
							<label for="">What course are you interested in</label>
							<select class="form-control" name="enquiriesCourseInterest">
								<option value="">Choose a Course</option>
								<option value="Option1">Option 1</option>
								<option value="Option2">Option 2</option>
								<option value="Option3">Option 3</option>
							</select>
						</div>
						<div class="form-group">
							<input type="submit" name="" value="Send Enquiry" class="btn btn-primary btn-block">
						</div>
					</form>
				</div>
			</div>
		</div>

	<?php endwhile; ?>
<?php endif; ?>

<?php get_footer(); ?>
