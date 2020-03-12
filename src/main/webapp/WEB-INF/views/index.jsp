<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainHome</title>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCTNT8NW_3KYow71eohbOsY8VAzfxJ-Nh4"></script>
<script>

	var map;
	var myCenter = new google.maps.LatLng(37.510818, 127.06036);
	
	function initialize() {
		var mapProp = {
				center: myCenter,
				zoom: 15,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
		
		map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

		google.maps.event.addListener(map, 'click', function(event) {
			placeMarker(event.latLng);
		});
	}

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
</body>
</html>