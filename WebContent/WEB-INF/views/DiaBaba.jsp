<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">

<title>Babakötvény</title>

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

	<%
		String dataDiagram = "data.addRows([ [ '2016.03.29', 25872 ], [ '2016.03.30', 26314 ],[ '2016.03.31', 26452 ], [ '2016.04.01', 26449 ],[ '2016.04.04', 26438 ], [ '2016.04.05', 26402 ],[ '2016.04.06', 26309 ], [ '2016.04.07', 26440 ],[ '2016.04.08', 26528 ], [ '2016.04.11', 26650 ],[ '2016.04.12', 26365 ] ]);";
	%>


	<script type="text/javascript">
		// Load the Visualization API and the AreaChart package.
		google.load('visualization', '1.0', {
			'packages' : [ 'corechart', 'bar', 'geochart' ]
		}

		);

		google.charts.load('current', {
			'packages' : [ 'bar', 'geochart' ]
		});

		// 		geo

		google.charts.setOnLoadCallback(drawMarkersMap);

		function drawMarkersMap() {
			var data = google.visualization.arrayToDataTable([
					[ 'Város', 'Lakosság', 'Eladottkötvény' ],
					[ 'Budapest', 2761477, 1285 ], [ 'Szeged', 1324110, 181 ],
					[ 'Kecskemét', 959574, 117 ], [ 'Győr', 1061477, 15 ],
					[ 'Debrecen', 1363477, 152 ],
					[ 'Dunaújváros', 524110, 181 ], [ 'Pécs', 759574, 117 ]

			]);

			var options = {
				region : 'HU',
				displayMode : 'markers',
				colorAxis : {
					colors : [ 'green', 'blue' ]
				},
				animation : {
					duration : 1000,
					easing : 'in'
				}
			};

			var chart = new google.visualization.GeoChart(document
					.getElementById('geo'));
			chart.draw(data, options);

			$(window).smartresize(function() {
				chart.draw(data, options);
			});
		};

		// 		bar

		google.charts.setOnLoadCallback(drawBasic);

		function drawBasic() {

			var data1 = google.visualization.arrayToDataTable([
					[ 'Városok', 'Eladott kötvény', ], [ 'Budapest', 8175000 ],
					[ 'Szeged', 3792000 ], [ 'Debrecen', 2695000 ],
					[ 'Győr', 2099000 ], [ 'Kecskemét', 1526000 ] ]);

			var options1 = {
				title : 'Babakötvények értékesítésének helyszínei 2015-ben',
				chartArea : {
					width : '50%'
				},
				hAxis : {
					title : 'Értékesített mennyiség',
					minValue : 0
				},
				vAxis : {
					title : 'Város'
				},
				animation : {
					duration : 1000,
					easing : 'in'
				}
			};

			var chart1 = new google.visualization.BarChart(document
					.getElementById('bar'));

			chart1.draw(data1, options1);

			$(window).smartresize(function() {
				chart1.draw(data1, options1);
			});
		}
	</script>



	<header>
	<div role="navigation" class="navbar navbar-fixed-top">
		<a href="ForwardToMainJSP" class="navbar-brand navbar-brand-logo">
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

				<li><a href="ForwardToDiaBuxJSP"><span
						class="glyphicon glyphicon-stats"></span>
						<p>BUX</p></a></li>
				<li><a href="index.html"><span
						class="glyphicon glyphicon-remove-sign"></span>
						<p>Kilépés</p></a></li>
			</ul>
		</div>
	</div>
	</header>

	<div class="container marketing">
		<h1>Baba Kötvény</h1>
		<br> <br>

		<div class="row featurette">
			<div class="col-md-4">
				<p>
					Futamideje a kibocsátás napjától számított 19 év. Alapcímlete 1,-
					Ft, tehát akármilyen kis összeggel megvásárolható. Változó
					kamatozású állampapír, így hosszú távon biztosítja a befektetett
					összeg értékállóságát. Az éves kamat mértéke a kamatbázis és a
					kamatprémium értékének összegével egyenlő. A kamatbázis megegyezik
					a kamat megállapításának évét megelőző naptári évre vonatkozóan, a
					KSH által közzétett éves átlagos infláció (fogyasztói árindex)
					százalékos mértékével. A kamatprémium mértéke 3%. A kamat
					Start-értékpapírszámlán történő jóváírása évente február 1-én**
					történik.<a
						href="http://www.allampapir.hu/allampapirok/lakossagi-ugyfeleknek/babakotveny">Wiki</a>
				</p>
				<br>
				<p>A Babakötvény által megtestesített követelés a Kibocsátóval
					szemben nem évül el.</p>
				<br>
			</div>
			<div class="col-md-8">
				<div id="geo"></div>
			</div>
		</div>
		<!-- row1 -->

		<div class="row featurette">
			<div class="col-md-12">
				<h3>ÉRTÉKESÍTÉS ÉS VISSZAVÁSÁRLÁS</h3>
				<p>A Babakötvény a gyermek 18. életévének betöltése napjáig
					bármikor megvásárolható, és a befizetett összegnek megfelelő
					mennyiségű Babakötvényt azonnal jóváírják a
					Start-értékpapírszámlán. Kizárólag a gyermek születési időpontja
					alapján irányadó sorozatú Babakötvényt lehet megvásárolni. A 18.
					életév betöltése után, a futamidő lejártáig, a jóváírásra kerülő
					kamatokból szintén megvásárolható az adott sorozatú Babakötvény. A
					kötvény értékesítése névérték + felhalmozott kamaton történik,
					tehát a befektető által a vásárláskor megelőlegezett kamatot a
					Kibocsátó a következő kamatfizetéskor írja jóvá a
					Start-értékpapírszámlán. A Kibocsátó a Babakötvényt a törvényben
					meghatározott esetekben vásárolja vissza névérték + felhalmozott
					kamaton a Magyar Államkincstár útján, így például a gyermek 18.
					életévének betöltése után, a futamidő lejárata előtt bármikor.</p>
				<div id="bar"></div>
			</div>
		</div>
		<!-- row2 -->

		<div class="row featurette">
			<div class="col-md-12">
				<!--Div that will hold the chart-->
				<div id="bar"></div>
			</div>
		</div>
		<!-- row3 -->


		<footer>
		<hr>
		<p class="pull-right">
			<a href="ForwardToMainJSP"><< Főoldal</a>
		</p>
		<p>© 2016 Koncz Gabor, Szakdolgozat</p>
		</footer>

	</div>
	<!-- Container -->

</body>
</html>