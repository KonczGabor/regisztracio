<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

<title>BUX</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Bootstrap core CSS -->
<link
	href="resources/Carousel Template for Bootstrap_files/bootstrap.min.css"
	rel="stylesheet">


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!--     <script src="resources/Carousel Template for Bootstrap_files/jquery.min.js"></script> -->

	<!-- 	sajat -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<!--     <script src="resources/Carousel Template for Bootstrap_files/bootstrap.min.js"></script> -->

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"
		integrity="sha256-Sk3nkD6mLTMOF0EOpNtsIry+s1CsaqQC1rVLTAy+0yc= sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ=="
		crossorigin="anonymous">
		
	</script>

	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script
		src="resources/Carousel Template for Bootstrap_files/holder.min.js"></script>

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="resources/Carousel Template for Bootstrap_files/ie10-viewport-bug-workaround.js"></script>




	<script src="resources/js/navbar.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link
	href="resources/Carousel Template for Bootstrap_files/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous" />

<!-- Custom styles for this template -->
<link
	href="resources/Carousel Template for Bootstrap_files/carousel.css"
	rel="stylesheet">


<link rel="stylesheet" href="resources/css/styles.css" />
<link rel="stylesheet" href="resources/css/navbar.css" />
<link rel="stylesheet" href="resources/css/dia.css" />

<!--Load the Google AJAX API-->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<!--Táblázathoz-->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<!--Load JQuery-->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!--Load Paul Irish’s Debounced resize plug-in-->
<script src="resources/js/debounce.js"></script>



</head>
<body>

<% String dataDiagram = "data.addRows([ [ '2016.03.29', 25872 ], [ '2016.03.30', 26314 ],[ '2016.03.31', 26452 ], [ '2016.04.01', 26449 ],[ '2016.04.04', 26438 ], [ '2016.04.05', 26402 ],[ '2016.04.06', 26309 ], [ '2016.04.07', 26440 ],[ '2016.04.08', 26528 ], [ '2016.04.11', 26650 ],[ '2016.04.12', 26365 ] ]);"; %>


<script type="text/javascript">
	// Load the Visualization API and the AreaChart package.
	google.load('visualization', '1.0', {
		'packages' : [ 'corechart', 'table' ]}
		
	);
	
	google.charts.load('current', {
		'packages' : [ 'table' ]
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
		data.addColumn('number', 'BUX index');
		
		
// 		data.addRows([ [ '2016.03.29', 25872 ], [ '2016.03.30', 26314 ],
// 					[ '2016.03.31', 26452 ], [ '2016.04.01', 26449 ],
// 					[ '2016.04.04', 26438 ], [ '2016.04.05', 26402 ],
// 					[ '2016.04.06', 26309 ], [ '2016.04.07', 26440 ],
// 					[ '2016.04.08', 26528 ], [ '2016.04.11', 26650 ],
// 					[ '2016.04.12', 26365 ] ]);

		
				<%=dataDiagram%>

		// Set chart options
		var options = {
			'title' : 'Bux index Maximuma 2016.03.29 - 2016.04.12',
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




	google.charts.setOnLoadCallback(drawTable);

	function drawTable() {
		var data1 = new google.visualization.DataTable();
		data1.addColumn('string', 'Dátum');
		data1.addColumn('number', 'Nyitó');
		data1.addColumn('number', 'Záró');
		data1.addColumn('number', 'Maximum');
		data1.addColumn('number', 'Minimum');
				
		data1.addRows([ 
		               [ '2016.03.29', {v : 25445, f : '25445' }, {v : 25737, f : '25737' }, {v : 25872, f : '25872' }, {v : 25445, f : '25445' }  ],
		               [ '2016.03.30', {v : 25743, f : '25743' }, {v : 26314, f : '26314' }, {v : 26314, f : '26314' }, {v : 25743, f : '25743' }  ],
		               [ '2016.03.31', {v : 26326, f : '26326' }, {v : 26451, f : '26451' }, {v : 26452, f : '26452' }, {v : 26132, f : '26132' }  ],
		               [ '2016.04.01', {v : 26449, f : '26449' }, {v : 26310, f : '26310' }, {v : 26449, f : '26449' }, {v : 26165, f : '26165' }  ],
		               [ '2016.04.04', {v : 26343, f : '26343' }, {v : 26412, f : '26412' }, {v : 26438, f : '26438' }, {v : 26247, f : '26247' }  ],
		               [ '2016.04.05', {v : 26402, f : '26402' }, {v : 26210, f : '26210' }, {v : 26402, f : '26402' }, {v : 26148, f : '26148' }  ],
		               [ '2016.04.06', {v : 26218, f : '26218' }, {v : 26298, f : '26298' }, {v : 26309, f : '26309' }, {v : 26116, f : '26116' }  ],
		               [ '2016.04.07', {v : 26313, f : '26313' }, {v : 26397, f : '26397' }, {v : 26440, f : '26440' }, {v : 26306, f : '26306' }  ],
		               [ '2016.04.08', {v : 26434, f : '26434' }, {v : 26513, f : '26513' }, {v : 26528, f : '26528' }, {v : 26329, f : '26329' }  ],
		               [ '2016.04.11', {v : 26544, f : '26544' }, {v : 26268, f : '26268' }, {v : 26650, f : '26650' }, {v : 26237, f : '26237' }  ],
		               [ '2016.04.12', {v : 26305, f : '26305' }, {v : 26027, f : '26027' }, {v : 26365, f : '26365' }, {v : 10000, f : '25892' }  ]
		        
		
		
		
		]);

		var table = new google.visualization.Table(document
				.getElementById('table_div'));

		table.draw(data1, {
			showRowNumber : true,
			width : '100%',
			height : '100%',
		});
	}
</script>



	<header>
	<div role="navigation" class="navbar navbar-fixed-top">
		<a href="index.html" class="navbar-brand navbar-brand-logo">
			<div class="logo">
				<img src="resources/img/logo.png" />
			</div>
			<div class="brand">Profit Bank</div>
		</a>
		<button data-toggle="collapse" data-target=".navHeaderCollapse"
			class="navbar-toggle">
			<span class="icon-bar"></span><span class="icon-bar"></span><span
				class="icon-bar"></span>
		</button>
		<div class="collapse navbar-collapse navHeaderCollapse">
			<ul id="top-menu" class="nav navbar-nav navbar-right">

				<li><a href="utas_regisztracio"><span
						class="glyphicon glyphicon-briefcase"></span>
						<p>Utas Regisztrácó</p></a></li>
				<li><a href="pilota_regisztracio"><span
						class="glyphicon glyphicon-sunglasses"></span>
						<p>Pilota Regisztracio</p></a></li>
			</ul>
		</div>
	</div>
	</header>

	<div class="container marketing">
		<h1>BUX</h1>
		<br> <br>

		<div class="row featurette">
			<div class="col-md-4">
				<p>A BUX a Budapesti Értéktőzsde egyik részvényindexe, mely
					valós időben, 5 másodpercenként kerül kiszámításra az aktuális
					piaci árak alapján. Az index a BÉT részvény szekciójában szereplő
					legnagyobb tőkeértékű és forgalmú részvények árának átlagos
					változását tükrözi, ezáltal a tőzsdei folyamatok legfontosabb
					mutatószáma. A BUX védjegyoltalom alatt áll. Az index kosarába
					kerülő részvények súlyának meghatározásakor a Tőzsde a világon az
					elsők között tért át 1999 októberétől a tisztán kapitalizáció
					súlyozásról a piacon ténylegesen forgó állományt jobban megragadó
					közkézhányad alapú súlyozásra. A BUX index egyben kereskedhető
					index is. Határidős és opciós termékei elérhetőek a BÉT származékos
					szekciójában.</p>
				<br> <a href="https://hu.wikipedia.org/wiki/BUX">Wiki</a>
			</div>
			<div class="col-md-8">
				<div id="table_div"></div>
			</div>
		</div>
		<!-- row1 -->

		<!--Div that will hold the chart-->
		<div id="chart_div"></div>
	</div>
	<!-- Container -->

</body>
</html>