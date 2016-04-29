<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
	pageEncoding="ISO-8859-2"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Term�szetesSzem�ly</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Bootstrap core CSS -->
<link
	href="resources/Carousel Template for Bootstrap_files/bootstrap.min.css"
	rel="stylesheet">

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



<!-- Custom styles for this template -->
<link
	href="resources/Carousel Template for Bootstrap_files/carousel.css"
	rel="stylesheet">


<link rel="stylesheet" href="resources/css/styles.css" />
<link rel="stylesheet" href="resources/css/navbar.css" />
<link rel="stylesheet" href="resources/css/regisztracio.css" />
</head>
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

				<li><div class="progress-wrap, progressbar">
						<progress max="100" value="0" id="progress"></progress>
						<div class="progress-message" id="progress-message">K�rem
							t�ltse ki a k�telez�,*-al jel�lt mez�ket!</div>
					</div></li>
				<li><a href="ForwardToDiaBuxJSP"><span
						class="glyphicon glyphicon-stats"></span>
						<p>BUX</p></a></li>
				<li><a href="ForwardToDiaBabaJSP"><span
						class="glyphicon glyphicon-align-left"></span>
						<p>Baba k�tv�ny</p></a></li>
				<li><a href="index.html"><span
						class="glyphicon glyphicon-remove-sign"></span>
						<p>Kil�p�s</p></a></li>
			</ul>
		</div>
	</div>
	</header>

	<form method="POST" action="SaveBTSZ" class="pro-form" id="pro-form">

		<div class="container marketing">

			<h1>Belf�ldi Term�szetes szem�ly</h1>
			<br> <br>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">N�v</h3>
				</div>
				<div class="panel-body">

					<div class="row featurette">
						<div class="col-md-4">
							<p>N�v - el�tag</p>
							<div class="input-group">
								<input name="elotagId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1"
									pattern="[A-Za-z]*">
							</div>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4"></div>
					</div>
					<!-- Panel1 row1 -->

					<div class="row featurette">
						<div class="col-md-4">
							<p for="vezetekNevId">N�v - vezet�kn�v*</p>
							<div class="input-group">
								<input name="vezetekNevId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1" required
									pattern="^[A-Z���������][a-z���������]*$"
									title="Nagy kezd�bet�vel kell kezd�dnie, sz�mot �s k�l�nleges �r�sjelet nem tartalmazhat!">
							</div>
						</div>

						<div class="col-md-4">
							<p>N�v - els� ut�neve*</p>
							<div class="input-group">
								<input name="keresztNevId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1" required
									pattern="^[A-Z���������][a-z���������]*$"
									title="Nagy kezd�bet�vel kell kezd�dnie, sz�mot �s k�l�nleges �r�sjelet nem tartalmazhat!">
							</div>
						</div>

						<div class="col-md-4">
							<p>N�v - m�sodik ut�neve</p>
							<div class="input-group">
								<input name="masodikUtonevId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1"
									pattern="^[A-Z���������][a-z���������]*$*">
							</div>
						</div>
					</div>
					<!-- Panel1 row2 -->


					<div class="row featurette">
						<div class="col-md-4">
							<p>Le�nykori / Sz�let�si n�v</p>
							<div class="input-group">
								<input name="szuletesiNevId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1"
									pattern="[A-Z]+[a-z]*">
							</div>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4"></div>
					</div>
					<!-- Panel1 row3 -->

				</div>
				<!-- Panel1 - body -->

			</div>
			<!--Panel1 -->

			<div class="row featurette">

				<div class="col-md-6">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">�lland� lakhely c�me</h3>
						</div>
						<div class="panel-body">

							<div class="ContainerSajat">

								<div class="row featurette">
									<p>Orsz�g</p>
									<div class="form-group">
										<select class="form-control" name="orszagokId">
											<option value="Magyarorsz�g">Magyarorsz�g</option>
											<option value="K�na">K�na</option>
											<option value="N�metorsz�g">N�metorsz�g</option>
											<option value="Jap�n">Jap�n</option>
											<option value="Ausztr�lia">Ausztr�lia</option>
										</select>
									</div>
								</div>
								<!-- Panel2 row1 -->

								<div class="row featurette">
									<p>Ir�ny�t�sz�m*</p>
									<div class="input-group">
										<input name="iranyitoszamId" type="text" class="form-control"
											placeholder="1234" aria-describedby="basic-addon1" required
											pattern="\d{4}" title="N�gy darab sz�mjegy">
									</div>
								</div>
								<!-- Panel2 row2 -->

								<div class="row featurette">
									<p>Helys�g*</p>
									<div class="input-group">
										<input name="helysegId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1" required
											pattern="[A-Z]+[a-z]*"
											title="Nagy kezd�bet�vel kell kezd�dnie, sz�mot �s k�l�nleges �r�sjelet nem tartalmazhat!">
									</div>
								</div>
								<!-- Panel2 row3 -->

								<div class="row featurette">
									<p>Utca h�zsz�m*</p>
									<div class="input-group">
										<input name="utcaHazszamId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1" required>
									</div>
								</div>
								<!-- Panel2 row4 -->

							</div>
							<!--ContainerSajat Panel2 bels�-->

						</div>
						<!-- Panel2 - body -->
					</div>
					<!--Panel2 -->

				</div>
				<!-- col-md-6 1 -->

				<div class="col-md-6">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Levelez�si c�m (amennyiben a
								lakhelyt�l elt�r�)</h3>
						</div>
						<div class="panel-body">

							<div class="ContainerSajat">

								<div class="row featurette">
									<p>Orsz�g</p>
									<div class="form-group">
										<select class="form-control" name="lvlOrszagokId">
											<option value="Magyarorsz�g">Magyarorsz�g</option>
											<option value="K�na">K�na</option>
											<option value="N�metorsz�g">N�metorsz�g</option>
											<option value="Jap�n">Jap�n</option>
											<option value="Ausztr�lia">Ausztr�lia</option>
										</select>
									</div>
								</div>
								<!-- Panel3 row1 -->

								<div class="row featurette">
									<p>Levelez�si c�m - ir�ny�t�sz�m</p>
									<div class="input-group">
										<input name="lvlIranyitoszamId" type="text"
											class="form-control" placeholder="1234"
											aria-describedby="basic-addon1" pattern="\d{4}"
											title="N�gy darab sz�mjegy">
									</div>
								</div>
								<!-- Panel3 row2 -->

								<div class="row featurette">
									<p>Levelez�si c�m - helys�g</p>
									<div class="input-group">
										<input name="lvlHelysegId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel3 row3 -->

								<div class="row featurette">
									<p>Levelez�si c�m - utca h�zsz�m</p>
									<div class="input-group">
										<input name="lvlUtcaHazszamId" type="text"
											class="form-control" placeholder=""
											aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel3 row4 -->

							</div>
							<!--ContainerSajat Panel3 bels�-->

						</div>
						<!-- Panel3 - body -->
					</div>
					<!--Panel3 -->


				</div>
				<!-- col-md-6 2 -->

			</div>
			<!-- Masodik nagy sor -->

			<div class="row featurette">

				<div class="col-md-6">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Szem�lyes adatok</h3>
						</div>
						<div class="panel-body">

							<div class="ContainerSajat">

								<div class="row featurette">
									<p>�llampolg�rs�g*</p>
									<div class="form-group">
										<select class="form-control" name="allampolgarsagokId">
											<option value="magyar">magyar</option>
											<option value="k�nai">k�nai</option>
											<option value="n�met">n�met</option>
											<option value="jap�n">jap�n</option>
											<option value="ausztr�l">ausztr�l</option>

										</select>
									</div>
								</div>
								<!-- Panel4 row1 -->

								<div class="row featurette">
									<p>Ad�azonos�t� jel*</p>
									<div class="input-group">
										<input name="adoazonositoJelId" type="text"
											class="form-control" placeholder="12345678"
											aria-describedby="basic-addon1" required pattern="\d{8}"
											title="Nyolc darab sz�mjegy">
									</div>
								</div>
								<!-- Panel4 row2 -->

								<div class="row featurette">
									<p>Szem�lyi igazolv�ny sz�ma</p>
									<div class="input-group">
										<input name="szigSzId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row3 -->

								<div class="row featurette">
									<p>Szig. ki�ll�t� hat�s�g neve</p>
									<div class="input-group">
										<input name="szigKiHatNeveId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row4 -->

								<div class="row featurette">
									<p>Szig. ki�ll�t� hat�s�g sz�khelye</p>
									<div class="input-group">
										<input name="szigKiHatSzekhelyeId" type="text"
											class="form-control" placeholder=""
											aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row5 -->

								<div class="row featurette">
									<p>Lakc�mk�rtya sz�ma</p>
									<div class="input-group">
										<input name="lakcimKSzamaId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row6 -->

								<div class="row featurette">
									<p>Sz�let�si id�*</p>
									<div class="input-group">
										<input name="szuletesiIdoId" type="text" class="form-control"
											placeholder="�v/H�/Nap/" aria-describedby="basic-addon1"
											required
											pattern="^(19[0-9][0-9]|20[0-9][0-9])\/(0[1-9]|1[012])\/(0[1-9]|[12][0-9]|3[01])$"
											title="N�gy darab sz�mjegy">
									</div>
								</div>
								<!-- Panel4 row7 -->

								<div class="row featurette">
									<p>Sz�let�si hely*</p>
									<div class="input-group">
										<input name="szuletesiHelyId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1" required
											pattern="^[A-Z���������][a-z���������]*$">
									</div>
								</div>
								<!-- Panel4 row7 -->

								<div class="row featurette">
									<p>Anyja neve*</p>
									<div class="input-group">
										<input name="anyjaNeveId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1" required
											pattern="^[A-Z���������][a-z���������]*\ [A-Z���������][a-z���������]*$">
									</div>
								</div>
								<!-- Panel4 row9 -->

								<div class="row featurette">
									<p>�tlev�l sz�ma</p>
									<div class="input-group">
										<input name="utlevelSzamaId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row10 -->

								<div class="row featurette">
									<p>Jogos�tv�ny sz�ma</p>
									<div class="input-group">
										<input name="jogositvanySzamaId" type="text"
											class="form-control" placeholder=""
											aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row11 -->



							</div>
							<!--ContainerSajat Panel4 bels�-->

						</div>
						<!-- Panel4 - body -->
					</div>
					<!--Panel4 -->

				</div>
				<!-- col-md-6 1 -->


				<div class="col-md-6">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Elektronikus szolg�ltat�sokkal
								kapcsolatos adatok</h3>
						</div>
						<div class="panel-body">
							<div class="ContainerSajat">
								<div class="row featurette">
									<p>Szeretne-e Web szolg�ltat�st ig�nyelni?</p>
									<label for="chkYesWeb"> <input type="radio"
										id="chkYesWeb" name="chkWeb" onclick="ShowHideDivWeb()" />
										Igen
									</label> <label for="chkNo"> <input type="radio" id="chkNoWeb"
										name="chkWeb" onclick="ShowHideDivWeb()" checked="checked" />
										Nem
									</label>
									<div id="webArea" style="display: none">
										<div class="input-group">
											<input name="webSzolgaltatasId" id=emailInput type="email"
												class="form-control" placeholder="myaddress@provider.com"
												aria-describedby="basic-addon1">
										</div>
									</div>
									<hr />
								</div>
								<!-- Panel5 row1 -->

								<div class="row featurette">
									<p>Szeretne-e Mobil szolg�ltat�st ig�nyelni?</p>
									<label for="chkYesMobil"> <input type="radio"
										id="chkYesMobil" name="chkMobil" onclick="ShowHideDivMobil()" />
										Igen
									</label> <label for="chkNo"> <input type="radio"
										id="chkNoMobil" name="chkMobil" onclick="ShowHideDivMobil()"
										checked="checked" /> Nem
									</label>
									<div id="mobilArea" style="display: none">
										<div class="input-group">
											<input name="mobilSzolgaltatasId" id=mobilInput type="text"
												class="form-control" placeholder="06-30-123-456"
												aria-describedby="basic-addon1">
										</div>
									</div>
									<hr />
								</div>
								<!-- Panel4 row2 -->

								<div class="row featurette">
									<p>Szeretne-e Telefonos szolg�ltat�st ig�nyelni?</p>
									<label for="chkYesTel"> <input type="radio"
										id="chkYesTel" name="chkTel" onclick="ShowHideDivTel()" />
										Igen
									</label> <label for="chkNo"> <input type="radio" id="chkNoTel"
										name="chkTel" onclick="ShowHideDivTel()" checked="checked" />
										Nem
									</label>
									<div id="telArea" style="display: none">
										<div class="input-group">
											<input name="teleSzolgaltatasId" id=telInput type="text"
												class="form-control" placeholder="06-30-123-456"
												aria-describedby="basic-addon1">
										</div>
									</div>
									<hr />
								</div>
								<!-- Panel5 row3 -->

							</div>
							<!--ContainerSajat Panel6 bels�-->

						</div>
						<!-- Panel5 - body -->
					</div>
					<!--Panel5 -->

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Sz�ml�t �rint� rendelkez�sek</h3>
						</div>
						<div class="panel-body">
							<div class="ContainerSajat">
								<div class="row featurette">
									<p>Sz�mlakivonat gyakoris�ga</p>
									<div class="form-group">
										<select class="form-control" name="szlaGyakorisagId">
											<option value="Evente">�vente</option>
											<option value="NemKer">Nem K�r</option>
										</select>
									</div>
								</div>
								<!-- Panel6 row1 -->

								<div class="row featurette">
									<p>Esed�kess�gfizet�s m�dja</p>
									<div class="form-group">
										<select class="form-control" name="esedekessegId">
											<option value="BankiUtalassal">K�szp�nz-sz�mla</option>
											<option value="KeszpenzPenzszamla">Banki utal�ssal</option>
										</select>
									</div>
								</div>
								<!-- Panel6 row2 -->

								<div class="row featurette">
									<p>Giro sz�mlasz�m utal�sos esed�kess�gfizet�si rendelkez�s
										eset�n</p>
									<div class="input-group">
										<input name="giroSzamlaId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel6 row3 -->

							</div>
							<!--ContainerSajat Panel6 bels�-->

						</div>
						<!-- Panel6 - body -->
					</div>
					<!--Panel6 -->

				</div>
				<!-- col-md-6 2 -->

			</div>
			<!-- Harmadik nagy sor -->


			<div class="row featurette">
				<div class="col-md-6">

					<a href="ForwardToMainJSP" class="btn btn-info" role="button">M�gse</a>

				</div>
				<!-- col-md-6 1 -->

				<div class="col-md-6">

					<button type="submit" class="btn btn-primary" aria-pressed="false"
						autocomplete="off">Regisztr�ci�</button>

				</div>
				<!-- col-md-6 2 -->
			</div>
			<!-- Negyedik nagy sor (gombok) -->




		</div>
		<!-- Container -->


	</form>


	<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
	<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
	<script
		src="resources/Carousel Template for Bootstrap_files/ie-emulation-modes-warning.js"></script>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>



	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>

	<!-- My own radio button displayer js -->
	<script src="resources/js/RadioButton.js"></script>

	<!-- Form progressbar js -->
	<script src="resources/js/progress_BTSZ.js"></script>

</body>
</html>