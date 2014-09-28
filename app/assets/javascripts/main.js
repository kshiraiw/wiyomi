
$(document).ready(function() {
	console.log("hello");
	$('form').submit(function(evt) {
		evt.preventDefault();
		var data = $('form').serialize();
		var $name = $('[type=text]').val()
		$('[type=submit]').attr("disabled", true);
		$.ajax({
			url: "/responses",
			type: "POST",
			data: data,
			success: function(response) {
				$('form').html("<p><strong>Thank you " + $name +" for your reponse!<strong></p>")
			}
		});
	})	
});
