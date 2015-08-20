$(function(){
	$('#go').on('click', function() {
		$('#save').removeClass('hidden');
	});

	// var from = null;
	// var to = null;
	// var travelMode = null;
	// var measurementMode = null;
	// var title = null;
	// var url = null;

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

		// var savedMap = {
		// 	title: $('#title-pop').val(),
		// 	from: $('#from-pop').val(from),
		// 	to: $('#to-pop').val(to),
		// 	travel_mode: $('#travel-mode-pop').val(travelMode),
		// 	measurement: $('#measurement-mode-pop').val(measurementMode),
		// 	url: url
		// };


	//
	// $('#saveModal').on('shown.bs.modal', function () {
	// 	$('#title-pop').focus();
	// });

	$('#save-changes').on('click', function(){
		$('#saveModal').modal('hide');
	});

});

// $('#submit').on('submit', function (event) {
// 		event.preventDefault();

// 		// Send POST to server to create newly edited photo
// 		$.ajax({
// 			type: "POST",
// 			url: '/api/photos',
// 			data: {
// 				imageData: $('#edit-canvas')[0].toDataURL(),
// 				text: $('textarea[name=text]').val()
// 			},
// 			success: function(data) {
// 				alert('successfully created photo!');
// 				window.location = "/gallery";
// 				// window.location = "http://localhost:3000/gallery";
// 			}
// 		});
// 	});
