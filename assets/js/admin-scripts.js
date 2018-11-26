$ = jQuery;

$(document).ready(function() {
	var allFormats = formats.allFormats;
	// Turning the object keys from allFormats into an array of keys
	var keys = Object.keys(allFormats);

	$("input[name='post_format']").change(function(){
		displayMetaBoxes();
	});

	function displayMetaBoxes() {
		var selectedFormat = $("input[name='post_format']:checked").attr("id");

		// Going through the keys array to hide and show specific fields
		if (keys[0] == selectedFormat) {
			$('#audio_info').hide();
			$('#video_info').show();
		} else if (keys[1] == selectedFormat){
			$('#video_info').hide();
			$('#audio_info').show();
		}
	}

	displayMetaBoxes();

});
