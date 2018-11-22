<?php
	// creating a field in the back end of the post
	// name of array should be one word
	$metaboxes = array(
		'staff' => array(
			'title' => 'Staff Info',
			'applicableto' => 'staff',
			'location' => 'normal',
			'priority' => 'high',
			'fields' => array(
				'staffRole' => array(
					'title' => 'Staff Members Role',
					'type' => 'text'
				),

				'yearStarted' => array(
					'title' => 'Year Staff Member Started',
					'type' => 'number'
				)
			)
		),

		/* Adding in 2 custom fields (email input and drop down) in the back end
		(added or editing an enquiry) for the enquiries section */
		'enquiries' => array(
			'title' => 'Enquiries',
			'applicableto' => 'enquiries',
			'location' => 'normal',
			'priority' => 'high',
			'fields' => array(
				'email' => array(
					'title' => 'Email address',
					'type' => 'email',
					'description' => 'The persons email address'
				),
				'courseInterest' => array(
					'title' => 'Course interested in',
					'type' => 'select',
					'description' => 'Course interested in',
					'option' => array('option1', 'option2', 'option3')
				)
			)
		),

		'video_info' => array(
			'title' => 'Video Information',
			'applicableto' => 'post',
			'format_condition' => 'post-format-video',
			'location' => 'normal',
			'priority' => 'high',
			'fields' => array(
				'video_url' => array(
					'title' => 'Please enter a url to the video',
					'type' => 'text',
					'description' => 'Please enter a url to the video'
				)
			)
		),

		'audio_info' => array(
			'title' => 'Audio Information',
			'applicableto' => 'post',
			'format_condition' => 'post-format-audio',
			'location' => 'normal',
			'priority' => 'high',
			'fields' => array(
				'audio_url' => array(
					'title' => 'Please enter a url to the audio',
					'type' => 'text',
					'description' => 'Please enter a url to the audio'
				),
			)
		),
	);

	function add_custom_fields() {
		// global variable to make sure it is global
		//$metabox['title'] is within metaboxes variable
		global $metaboxes;

		if(! empty($metaboxes) ){
			foreach($metaboxes as $id => $metabox){
				add_meta_box($id, $metabox['title'], 'show_metaboxes', $metabox['applicableto'], $metabox['location'], $metabox['priority'], $id);
			}
		}
	}

	// adding to the admin inislising
	add_action('admin_init', 'add_custom_fields');

	function show_metaboxes($post, $args) {
		global $metaboxes;
		$fields = $metaboxes[$args['id']]['fields'];

		// keeps input value within the field.
		$customValues = get_post_custom($post->ID);

		$output = '<input type="hidden" name="post_format_meta_box_nonce" value="'.wp_create_nonce(basename(__FILE__)).'">';

		if (! empty($fields)) {
			foreach ($fields as $id => $field) {
				switch($field['type']){
					case 'text':
						$output .= '<label for="'.$id.'">'.$field['title'].'</label>';
						$output .= '<input type="text" name="'.$id.'" class="" value="'.$customValues[$id][0].'">';
					break;
					case 'number':
						$output .= '<label for="'.$id.'">'.$field['title'].'</label>';
						$output .= '<input type="number" name="'.$id.'"  value="'.$customValues[$id][0].'">';
					break;
					case 'select':
						$output .= '<label class="customLabel">'.$field['title'].'</label>';
						$output .= '<select name="'.$id.'"><option>Choosen an option</option>';
						$options = $field['option'];
						foreach ($options as $option) {
							$output .= '<option value="'.$option.'">'.$option.'</option>';
						}
						$output .= '</select>';
					break;
					case 'email':
						$output .= '<label class="customLabel">'.$field['title'].'</label>';
						$output .= '<input type="email" name="'.$id.'" class="customField" value="'.$customValues[$id][0].'">';
					break;
					default:
						$output .= '<label for="'.$id.'">'.$field['title'].'</label>';
						$output .= '<input type="text" name="'.$id.'">';
					break;
				}
			}
		}
		echo $output;
	}

// Makign custom field data save

function save_metaboxes($postID) {
	global $metaboxes;

	if(! wp_verify_nonce( $_POST['post_format_meta_box_nonce'], basename(__FILE__) )) {
		return $postID;
	}

	if ( defined('DOING_AUTOSAVE') && DOING_AUTOSAVE ) {
		return $postID;
	}

	if ($_POST['post_type'] == 'page') {
		if( ! curent_user_can()('edit_page', $postID)){
			return $postID;
		}
	} else if ( ! current_user_can('edit_page', $postID)) {
		return $postID;
	}

	$post_type = get_post_type();

	foreach ($metaboxes as $id => $metabox) {
		if( $metabox['applicableto'] == $post_type){
			$fields = $metaboxes[$id]['fields'];

			foreach ($fields as $id => $field) {
				$oldValue = get_post_meta($postID, $id, true);
				$newValue = $_POST[$id];

				if ($newValue && $newValue != $oldValue) {
					update_post_meta($postID, $id, $newValue);
				} elseif ($newValue == '' && $oldValue || !isset($_POST[$id])) {
					delete_post_meta($postID, $id, $oldValue);
				}
			}
		}
	}
}

add_action('save_post', 'save_metaboxes');
