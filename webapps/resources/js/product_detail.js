/**
 * 상품 상세페이지
 */

	function showmap() {
		var mapOptions = {
			zoom: 18,
		//	zoom: 8,
			scrollwheel: false,
		//	center: new google.maps.LatLng(-34.397, 150.644),
			center: new google.maps.LatLng(35.179826, 129.075631),
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
//		$('.mapheight').css('height', '350');
		$('.map_sheet').css('height', '500');
		$('.maps_text h3').hide();
	}