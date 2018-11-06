<?php
	/*
		Creating a new tab in the customise section
		Passing a function
		section, settings and controls are needed which are functions inside the
		$wp_customize.
	*/

	function custom_theme_customizer( $wp_customize ){
		// Calling the add_seciton fucntion. we must use unique identifier
		$wp_customize->add_section('custom_theme_header_info', array(
			/* 	This is the section title which appears in the customise menu
				__() is to make sure our name title is unique form plugins
				 and a theme domain so wp knows only to use Header Styles for this
				 theme
			*/
			'title' => __('Header Styles', '18wdwu02customtheme'),
			// Where to put the title in the customise menu
			'priority' => 20
		));

		// HEADER BACKGROUND
		// Colour settings
		$wp_customize->add_setting('header_background_colour_setting', array(
			// default is the colour that previews in the setting not on the page
			'default' => '#ffffff',
			// transport is what happens e.g. refresh when the colour changes.
			'transport' => 'refresh'
		));

		/*
			Control is what shows on the page. what type of control should we
			call. We are creating a new insists which is a function.
		*/
		$wp_customize->add_control(
			new WP_Customize_Color_Control(
				$wp_customize,
				'header_background_colour_control',
				array(
					'label' => __('Header Background Colour', '18wdwu02customtheme'),
					'section' => 'custom_theme_header_info',
					'settings' => 'header_background_colour_setting'
				)
			)
		);

// -----------------------------------------------------------------------------

/*
	HEADER LINK (NAV ITEMS)
	Set colour change for the header link (nav items). add_section is not needed
	It is inside of the Header Styles section.
*/

		$wp_customize->add_setting('header_link_colour_setting', array(
			'default' => '#000000',
			'transport' => 'refresh'
		));

		$wp_customize->add_control(
			new WP_Customize_Color_Control(
				$wp_customize,
				'header_link_colour_control',
				array(
					'label' => __('Header Link Colour', '18wdwu02customtheme'),
					'section' => 'custom_theme_header_info',
					'settings' => 'header_link_colour_setting'
				)
			)
		);
// -----------------------------------------------------------------------------

		// FOOTER

		$wp_customize->add_section('custom_theme_footer_info', array(
			'title' => __('Footer', '18wdwu02customtheme'),
			'priority' => 21
		));

		$wp_customize->add_setting('footer_text_colour_setting', array(
			'default' => '#000000',
			'transport' => 'refresh'
		));

		$wp_customize->add_control(
			new WP_Customize_Control(
				$wp_customize,
				'footer_text_control',
				array(
					'label' => __('Footer Text', '18wdwu02customtheme'),
					'section' => 'custom_theme_footer_section',
					'settings' => 'footer_text_setting'
				)
			)
		);
// -----------------------------------------------------------------------------
	}

	add_action('customize_register', 'custom_theme_customizer');

	function custom_theme_customizer_styles() {
		?>
			<style type="text/css">
				.header-bg {
					background-color: <?php echo get_theme_mod('header_background_colour_setting', '#ffffff'); ?>!important;
				}

				.main-menu .menu-item a {
					color: <?php echo get_theme_mod('header_link_colour_setting', '#ffffff'); ?>!important
				}
			</style>

		<?php
	}

	add_action('wp_head', 'custom_theme_customizer_styles');
