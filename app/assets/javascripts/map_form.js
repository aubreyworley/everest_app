$(function(){
	$('#go').on('click', function() {
		$('#save').removeClass('hidden');
	});

	$('#save').on('click', function(){
		var from = $('#from').val();
		var to = $('#to').val();
		var travelMode = $('#travel-mode').val();
		var measurementMode = $('#measurement-mode').val();
		var title = $('#title-pop').val();

		$('#from-pop').val(from);
		$('#to-pop').val(to);
		$('#travel-mode-pop').val(travelMode);
		$('#measurement-mode-pop').val(measurementMode);
	});

	$('#save-changes').on('click', function(){

		$.ajax({
			type: "POST",
			url: '/maps',
			data: {
				map: {
					title: $('#title-pop').val(),
					from: $('#from-pop').val(),
					to: $('#to-pop').val(),
					travel_mode: $('#travel-mode-pop').val(),
					measurement: $('#measurement-mode-pop').val(),
					url: window.location.href
				}
			},
			success: function(data) {
				console.log(data);
			}
		});

	});

	$('#saveModal').on('shown.bs.modal', function () {
		$('#title-pop').focus();
	});

	$('#save-changes').on('click', function(){
		// $('#saveModal').modal('hide');
		$('#save-alert').removeClass('hidden');
	});

	// navigates to pieku list after click.
	$("#tagline").click(function() {
		event.preventDefault();

		var yPost = $('#scroll').offset().top;
		window.scroll(0, yPost);
	});

});
