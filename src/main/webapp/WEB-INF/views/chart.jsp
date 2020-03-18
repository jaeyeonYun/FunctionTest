<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    google.charts.load('current', {
    	  packages: ['corechart', 'bar']
    	});
    	google.charts.setOnLoadCallback(drawBarColors);

    	function drawBarColors() {
    	  var data1 = google.visualization.arrayToDataTable([
    	    ['Month', 'total', 'expence'],
    	    ['last Month', 300000, 260000],
    	    ['this Month', 300000, 369400]
    	  ]);

    	  var options = {
    	    title: 'Monthly Expenditure details',
    	    chartArea: {
    	      width: '50%'
    	    },
    	    colors: ['#b0120a', '#ffab91'],
    	    hAxis: {
    	      title: 'Total Population',
    	      minValue: 0
    	    },
    	    vAxis: {
    	      title: 'City'
    	    }
    	  };
    	  var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
    	  chart.draw(data1, options);

    	  var data2 = google.visualization.arrayToDataTable([
    	        ["Element", "Density", { role: "style" } ],
    	        ["total", 30, "#b87333"],
    	        ["expense", 15, "silver"]
    	      ]);

    	      var view = new google.visualization.DataView(data2);
    	      view.setColumns([0, 1,
    	                       { calc: "stringify",
    	                         sourceColumn: 1,
    	                         type: "string",
    	                         role: "annotation" },
    	                       2]);

    	      var options = {
    	        title: "Monthly Expenditure details",
    	        width: 600,
    	        height: 400,
    	        bar: {groupWidth: "95%"},
    	        legend: { position: "none" }
    	      };
    	      var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
    	      chart.draw(view, options);
    	}
    	
    </script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>
<body>
<div id="chart_div"></div>
<h3>*****월 별 지출 그래프*****</h3>
  <div id="barchart_values"></div>
  <h3>*****한달 지출 내역*****</h3>
</body>
</html>