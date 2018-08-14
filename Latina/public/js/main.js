$(function(){
	var flagTrack = false;
	$.validate();
	$('input')
	.on('validation', function(evt, valid) {
		if (valid && !flagTrack) {
			flagTrack = true;
			$.ajax({
				headers: {
					'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
				},
				method:'POST',
				url:urlBase + '/sendTrack',
				dataType:'text'
			})
			.done(function(msg) {
				//
			});
		}
	});
});