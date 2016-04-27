<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
	pageEncoding="ISO-8859-2"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--Load the Google AJAX API-->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
	// Load the Visualization API and the AreaChart package.
	google.load('visualization', '1.0', {
		'packages' : [ 'corechart' ]
	});

	// Set a callback to run when the Google Visualization API is loaded.
	google.setOnLoadCallback(drawChart);

	// Callback that creates and populates a data table,
	// instantiates the chart, passes in the data and
	// draws it.
	function drawChart() {

		// Create the data table.
		var data = new google.visualization.DataTable();
		data.addColumn('string', 'Year');
		data.addColumn('number', 'Google results');
		data
				.addRows([ [ '02', 7390000 ], [ '03', 7650000 ],
						[ '04', 10590000 ], [ '05', 11950000 ],
						[ '06', 12010000 ], [ '07', 31900000 ],
						[ '08', 53300000 ], [ '09', 105200000 ],
						[ '10', 112600000 ], [ '11', 258900000 ],
						[ '12', 470000000 ] ]);

		// Set chart options
		var options = {
			'title' : 'Google results searching for "data" 2002 - 2012',
			'width' : '100%',
			'height' : 300,
			'curveType' : "function",
			'backgroundColor' : "#f1f2f2",
			'chartArea' : {
				'width' : '98%'
			},
			'axisTitlesPosition' : 'in',
			'vAxis' : {
				'textPosition' : 'in'
			},
			'titleTextStyle' : {
				'color' : '#809ECE'
			},
			'hAxis.textStyle' : {
				'color' : '#809ECE'
			},
			'colors' : [ '#809ECE' ],
			
			animation : {
				duration : 1000,
				easing : 'in'
			}
			
		};

		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.LineChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);

	

		// Paul Irish’s Debounced resize plug-in
		$(window).smartresize(function() {
			chart.draw(data, options);
		});
	}
</script>


<!--Load JQuery-->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!--Load Paul Irish’s Debounced resize plug-in-->
<script src="resources/js/debounce.js"></script>
</head>
<body>
	<!--Div that will hold the chart-->
	<div id="chart_div"></div>
</body>
</html>