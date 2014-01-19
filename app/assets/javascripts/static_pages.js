$(document).ready(function() {

	$('.add-review').on('click', function() {
		var b_val = $('.add-review').find("h2").text();
		$('.review-form').toggle( "slow");
		if (b_val == "Add review") {
			$(this).find("h2").text("Close");
		} else {
			$(this).find("h2").text("Add review");
		}
	})
});