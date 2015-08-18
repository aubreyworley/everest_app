$(function(){
	$('#go').click(function() {
		$('#save').removeClass('hidden');
	});

	$('#save').click(function(){
		var from = $('#from').val();
		var to = $('#to').val();
		var travelMode = $('#travel-mode').val();
		var measurementMode = $('#measurement-mode').val();
		var title = $('#title');
		var url = window.location.href;

		$.ajax({
			type: "POST",
			url: '/maps',
			data: {
				map: {
					title: title,
					from: from,
					to: to,
					travel_mode: travelMode,
					measurement: measurementMode,
					url: url
				}
			},
			success: function(data) {
				console.log(data);
			}
		});

	})
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
