<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<!--     <link rel="icon" href="http://getbootstrap.com/favicon.ico"> -->

<title>Profit Bank</title>

<!-- Bootstrap core CSS -->
<link
	href="resources/Carousel Template for Bootstrap_files/bootstrap.min.css"
	rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link
	href="resources/Carousel Template for Bootstrap_files/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="resources/Carousel Template for Bootstrap_files/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha256-MfvZlkHCEqatNoGiOXveE8FIwMzZg4W85qfrfIFBfYc= sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous" />

<!-- Custom styles for this template -->
<link
	href="resources/Carousel Template for Bootstrap_files/carousel.css"
	rel="stylesheet">

<link rel="stylesheet" href="resources/css/navbar.css" />
<link rel="stylesheet" href="resources/css/main.css" />

<!-- NAVBAR
================================================== -->
<body>

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
					<li><a href="ForwardToDiaBabaJSP"><span
							class="glyphicon glyphicon-align-left"></span>
							<p>Baba kötvény</p></a></li>					
					<li><a href="index.html"><span
							class="glyphicon glyphicon-remove-sign"></span>
							<p>Kilépés</p></a></li>
				</ul>
			</div>
		</div>
	</header>



	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class=""></li>
			<li data-target="#myCarousel" data-slide-to="1" class=""></li>
			<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide" src="resources/img/graph1.jpg"
					alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Soha vissza nem térő kedvezmények</h1>
						<p>A hitelfelvétel még sosem volt ilyen egyszerű! Kezelési
							költségek nélkül, kedvező kamatozással!</p>
						<p>
							<a class="btn btn-lg btn-primary" href="" role="button">Legjobb
								hitelek</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide" src="resources/img/kek.jpg"
					alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>A megtervezett jövő</h1>
						<p>Biztos hozem, biztos profit! Szakembereink bármikor a
							rendelkezésére állnak!</p>
						<p>
							<a class="btn btn-lg btn-primary" href="" role="button">Valósítsa
								meg álmait!</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide" src="resources/img/parlament.jpg"
					alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Magyar Államkötvény</h1>
						<p>Egy évnél hosszabb futamidejű állampapír, ezért elsősorban pénzüket hosszú távra befektetni kívánóknak ajánljuk.</p>
						<p>
							<a class="btn btn-lg btn-primary"
								href="" role="button">Programajánló</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control"
			href="http://getbootstrap.com/examples/carousel/#myCarousel"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control"
			href="http://getbootstrap.com/examples/carousel/#myCarousel"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->


	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="resources/img/grey1.png"
					alt="Generic placeholder image" width="140" height="140">
				<h2>Belföldi Természetes Személy</h2>
				<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis
					euismod. Morbi leo risus, porta ac consectetur ac, vestibulum at
					eros. Praesent commodo cursus magna.</p>
				<p>
					<a class="btn btn-default" href="ForwardToBTSZJSP" role="button">Regisztráció
						»</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="resources/img/grey2.png"
					alt="Generic placeholder image" width="140" height="140">
				<h2>Belföldi Jogi Személy</h2>
				<p>Duis mollis, est non commodo luctus, nisi erat porttitor
					ligula, eget lacinia odio sem nec elit. Cras mattis consectetur
					purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo,
					tortor mauris condimentum nibh.</p>
				<p>
					<a class="btn btn-default" href="ForwardToBJSZJSP" role="button">Regisztráció
						»</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="resources/img/grey3.png"
					alt="Generic placeholder image" width="140" height="140">
				<h2>Start Értékpapír Vásárlás</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>
				<p>
					<a class="btn btn-default" href="ForwardToStartEpSzamlaJSP"
						role="button">Regisztráció »</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					Biztonság. <span class="text-muted">Őriztesse pénzét nálunk!
					</span>
				</h2>
				<p class="lead">Vestibulum ante ipsum primis in faucibus orci
					luctus et ultrices posuere cubilia Curae; Fusce ut vulputate velit.
					Curabitur enim nunc, viverra sit amet ullamcorper at, laoreet ut
					nisi. Cras at erat tristique dui iaculis malesuada. Suspendisse vel
					tellus tellus. Integer dignissim, neque sit amet porttitor
					condimentum, felis nibh imperdiet nibh, at gravida est nibh non
					eros.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					alt="500x500" src="resources/img/money.jpg"
					data-holder-rendered="true">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 class="featurette-heading">
					Szekértelem. <span class="text-muted">Keresse fel
						munkatársainket bizalommal! </span>
				</h2>
				<p class="lead">Nullam elementum velit et tincidunt rutrum.
					Nulla vitae pretium lorem, sed aliquet augue. Maecenas eget sem
					tincidunt lectus ornare iaculis sit amet eu eros. Mauris lacus
					tellus, interdum ut tristique id, lacinia ac augue. Proin finibus
					orci sed eros venenatis vulputate. Cras at sapien lectus!</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block"
					alt="500x500" src="resources/img/persely.jpg"
					data-holder-rendered="true">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					Telebank Szolgáltatás. <span class="text-muted">Bárhol és
						bármikor rendelkezésére állunk!</span>
				</h2>
				<p class="lead">Morbi lobortis urna nec elementum sodales.
					Vestibulum ante ipsum primis in faucibus orci luctus et ultrices
					posuere cubilia Curae; Nunc suscipit ligula sollicitudin sapien
					fermentum fringilla. Ut in iaculis orci. Cras vel vulputate mi.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					alt="500x500" src="resources/img/line.jpg"
					data-holder-rendered="true">
			</div>
		</div>

		<hr class="featurette-divider">



		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->
		<footer>
			<p class="pull-right">
				<a href="ForwardToMainJSP"><< Főoldal</a>
			</p>
			<p>© 2016 Koncz Gabor, Szakdolgozat</p>
		</footer>

	</div>
	<!-- /.container -->


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


</body>
</html>