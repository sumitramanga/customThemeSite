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
		)
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

		if (! empty($fields)) {
			foreach ($fields as $id => $field) {
				switch($field['type']){
					case 'text':
						$output .= '<label for="'.$id.'">'.$field['title'].'</label>';
						$output .= '<input type="text" name="'.$id.'" class="" style="width:100%">';
					break;
					case 'number':
						$output .= '<label for="'.$id.'">'.$field['title'].'</label>';
						$output .= '<input type="number" name="'.$id.'" style="width:100%">';
					break;
					case 'select':
						$output .= '<label for="'.$id.'">'.$field['title'].'</label>';
						$output .= '<select></select>';
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
