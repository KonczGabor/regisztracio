<%@ page language="java" pageEncoding="UTF-8"%>

<%@page import="com.regisztracio.models.BelfoldiTermeszetesSzemely"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta charset="UTF-8">

<!--     <link rel="icon" href="http://getbootstrap.com/favicon.ico"> -->

<title>Sikeres BTSZ regisztráció</title>

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
<link rel="stylesheet" href="resources/css/sikeres.css" />
<body>

	<header>
	<div role="navigation" class="navbar navbar-fixed-top">
		<a href="ForwardToMainJSP" class="navbar-brand navbar-brand-logo">
			<div class="logo">
				<img src="resources/img/logo.svg" />
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

	<%
		BelfoldiTermeszetesSzemely btsz = (BelfoldiTermeszetesSzemely) request.getAttribute("elkeszult_btsz");
	%>





	<div class="container marketing">


		<h2>
			Kedves
			<%=btsz.getNevElotag()%>
			<%=btsz.getNevVezetek()%>
			<%=btsz.getNevKereszt()%>
			<%=btsz.getNevUto()%>,
		</h2>
		<br> <br>
		<p>
			<strong>Köszönjük hogy megtisztel bizalmával!</strong> A <strong>ProfitBankt</strong>
			A legnagyobb biztonsággal kezeli személyes adatait, melyek:
		</p>
		<br>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse1">Név</a>
					</h4>
				</div>
				<div id="collapse1" class="panel-collapse collapse in">
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item">Tag: <%=btsz.getNevElotag()%></li>
							<li class="list-group-item">Vezetéknév: <%=btsz.getNevVezetek()%></li>
							<li class="list-group-item">Utónév: <%=btsz.getNevKereszt()%></li>
							<li class="list-group-item">Második utónév: <%=btsz.getNevUto()%></li>
							<li class="list-group-item">Leánykori / Születési név: <%=btsz.getNevSzuletesi()%></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse2">Állandó lakhely címe </a>
					</h4>
				</div>
				<div id="collapse2" class="panel-collapse collapse">
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item">Ország: <%=btsz.getOrszag()%></li>
							<li class="list-group-item">Irányítószám: <%=btsz.getIranyitoszam()%></li>
							<li class="list-group-item">Helység: <%=btsz.getHelyseg()%></li>
							<li class="list-group-item">Utca házszám: <%=btsz.getUtcaHazszam()%></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse3">Levelezési cím</a>
					</h4>
				</div>
				<div id="collapse3" class="panel-collapse collapse">
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item">(L) Ország: <%=btsz.getLvlOrszag()%></li>
							<li class="list-group-item">(L) Irányítószám: <%=btsz.getLvlIranyitoszam()%></li>
							<li class="list-group-item">(L) Helység: <%=btsz.getLvlHelyseg()%></li>
							<li class="list-group-item">(L) Utca házszám: <%=btsz.getLvlUtcaHazszam()%></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse4">Személyes adatok</a>
					</h4>
				</div>
				<div id="collapse4" class="panel-collapse collapse">
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item">Állampolgárság: <%=btsz.getAllampolgarsag()%></li>
							<li class="list-group-item">Adóazonosító jel: <%=btsz.getAdoazonositoJel()%></li>
							<li class="list-group-item">Személyi igazolvány száma: <%=btsz.getSzigSzam()%></li>
							<li class="list-group-item">Szig. kiállító hatóság neve: <%=btsz.getSzigKHNeve()%></li>
							<li class="list-group-item">Szig. kiállító hatóság
								székhelye: <%=btsz.getSzigKHSzekhelye()%></li>
							<li class="list-group-item">Lakcímkártya száma: <%=btsz.getLakcimkartya()%></li>
							<li class="list-group-item">Születési ideje: <%=btsz.getSzulIdo()%></li>
							<li class="list-group-item">Születési hely: <%=btsz.getSzulHely()%></li>
							<li class="list-group-item">Anyja neve: <%=btsz.getAnyjaNeve()%></li>
							<li class="list-group-item">Útlevél száma: <%=btsz.getUtlevelSzama()%></li>
							<li class="list-group-item">Jogosítvány száma: <%=btsz.getJogositvanySzama()%></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse5">Elektronikus szolgáltatásokkal kapcsolatos
							adatok </a>
					</h4>
				</div>
				<div id="collapse5" class="panel-collapse collapse">
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item">E-mail cím: <%=btsz.getWebSzolgaltatas()%></li>
							<li class="list-group-item">Mobil telefonszám: <%=btsz.getMobilSzolgaltatas()%></li>
							<li class="list-group-item">Telefonszám: <%=btsz.getTelSzolgaltatas()%></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse6">Számlával kapsolatos rendelkezések </a>
					</h4>
				</div>
				<div id="collapse6" class="panel-collapse collapse">
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item">Számlakivonat gyakorisága: <%=btsz.getSzamlaKivGyakorisag()%></li>
							<li class="list-group-item">Esedékességfizetés módja: <%=btsz.getEsedekessegFizMod()%></li>
							<li class="list-group-item">Giro számlaszám: <%=btsz.getGiroSzamla()%></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion"
							href="#collapse7">Regisztrációs adatok</a>
					</h4>
				</div>
				<div id="collapse7" class="panel-collapse collapse">
					<div class="panel-body">
						<ul class="list-group">
							<li class="list-group-item">Ügyfél azonosító (ID): <%=btsz.getUserID()%></li>
							<li class="list-group-item">Belépés kódja (Password): <%=btsz.getUserCode()%></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Accordion -->

		<br>

		<!-- FOOTER -->
		<footer>
		<p class="pull-right">
			<a href="ForwardToMainJSP"><< Vissza a nyitó oldalra</a>
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