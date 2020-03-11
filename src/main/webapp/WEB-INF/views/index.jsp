<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainHome</title>
<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCTNT8NW_3KYow71eohbOsY8VAzfxJ-Nh4"></script>
<script>
	function initialize() {
		var mapProp = {
				center: new google.maps.LatLng(37.510818, 127.06036),
				zoom: 15,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};
		var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
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
</body>
</html>