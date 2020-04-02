<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	function placeMarker(location) {
		var marker = new google.maps.Marker({
			position: location,
			map: map
		});

		var infowindow = new google.maps.InfoWindow({
			content: 'Latitude: ' + location.lat() + '<br>Longitude: ' + location.lng()
		});
		infowindow.open(map, marker);
	}

	google.maps.event.addDomListener(window, 'load', initialize); 
</script>
<style>
	#map {
		width: 100%;
		height: 400px;
		background: grey;
	}
</style>
</head>
<body>
	<h2>Location Of User</h2>
	<div id="googleMap" style="width: 500px; height: 380px;"></div>
	<a href="crawling.do"><input type="button" value="Btn"></a>
	<div></div>
</body>
</html>