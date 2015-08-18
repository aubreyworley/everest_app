$(function(){
	$('#go').click(function(){
		var from = $('#from').val();
		var to = $('#to').val();
		var travelMode = $('#travel-mode').val();
		var measurementMode = $('#measurement-mode').val();
		// console.log(to);
		// console.log(travelMode);

		$.ajax({
			type: "POST",
			url: '/profile',
			

		})

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
