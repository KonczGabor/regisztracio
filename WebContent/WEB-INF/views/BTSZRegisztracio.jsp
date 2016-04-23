<%@ page pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>TermészetesSzemély</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/styles.css" />
</head>
<body>
	<form method="POST" action="SaveBTSZ">

		<div class="container marketing">

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Név</h3>
				</div>
				<div class="panel-body">

					<div class="row featurette">
						<div class="col-md-4">
							<p>Név - előtag</p>
							<div class="input-group">
								<input name="elotagId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1">
							</div>
						</div>
						<div class="col-md-4"></div>
						<div class="col-md-4"></div>
					</div>
					<!-- Panel1 row1 -->

					<div class="row featurette">
						<div class="col-md-4">
							<label for="vezetekNevId">Név - vezetéknév*</label>
							<div class="input-group">
								<input name="vezetekNevId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1">
							</div>
						</div>

						<div class="col-md-4">
							<p>Név - első utóneve*</p>
							<div class="input-group">
								<input name="keresztNevId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1">
							</div>
						</div>

						<div class="col-md-4">
							<p>Név - második utóneve</p>
							<div class="input-group">
								<input name="masodikUtonevId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1">
							</div>
						</div>
					</div>
					<!-- Panel1 row2 -->


					<div class="row featurette">
						<div class="col-md-4">
							<p>Leánykori / Születési név</p>
							<div class="input-group">
								<input name="szuletesiNevId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1">
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
							<h3 class="panel-title">Állandó lakhely címe</h3>
						</div>
						<div class="panel-body">

							<div class="ContainerSajat">

								<div class="row featurette">
									<p>Ország*</p>
									<div class="form-group">
										<select class="form-control" name="orszagokId">
											<option value="Dunaujvaros">Dunaujvaros</option>
											<option value="Budapest">Budapest</option>
											<option value="Szeged">Szeged</option>
											<option value="Pecs">Pecs</option>
											<option value="Gyor">Gyor</option>
											<option value="Debrecen">Debrecen</option>
										</select>
									</div>
								</div>
								<!-- Panel2 row1 -->

								<div class="row featurette">
									<p>Irányítószám*</p>
									<div class="input-group">
										<input name="iranyitoszamId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel2 row2 -->

								<div class="row featurette">
									<p>Helység*</p>
									<div class="input-group">
										<input name="helysegId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel2 row3 -->

								<div class="row featurette">
									<p>Utca házszám*</p>
									<div class="input-group">
										<input name="utcaHazszamId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel2 row4 -->

							</div>
							<!--ContainerSajat Panel2 belső-->

						</div>
						<!-- Panel2 - body -->
					</div>
					<!--Panel2 -->

				</div>
				<!-- col-md-6 1 -->

				<div class="col-md-6">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Levelezési cím (amennyiben a
								lakhelytől eltérő)</h3>
						</div>
						<div class="panel-body">

							<div class="ContainerSajat">

								<div class="row featurette">
									<p>Ország</p>
									<div class="form-group">
										<select class="form-control" name="lvlOrszagokId">
											<option value="Dunaujvaros">Dunaujvaros</option>
											<option value="Budapest">Budapest</option>
											<option value="Szeged">Szeged</option>
											<option value="Pecs">Pecs</option>
											<option value="Gyor">Gyor</option>
											<option value="Debrecen">Debrecen</option>
										</select>
									</div>
								</div>
								<!-- Panel3 row1 -->

								<div class="row featurette">
									<p>Levelezési cím - irányítószám</p>
									<div class="input-group">
										<input name="lvlIranyitoszamId" type="text"
											class="form-control" placeholder=""
											aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel3 row2 -->

								<div class="row featurette">
									<p>Levelezési cím - helység</p>
									<div class="input-group">
										<input name="lvlHelysegId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel3 row3 -->

								<div class="row featurette">
									<p>Levelezési cím - utca házszám</p>
									<div class="input-group">
										<input name="lvlUtcaHazszamId" type="text"
											class="form-control" placeholder=""
											aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel3 row4 -->

							</div>
							<!--ContainerSajat Panel3 belső-->

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
							<h3 class="panel-title">Személyes adatok</h3>
						</div>
						<div class="panel-body">

							<div class="ContainerSajat">

								<div class="row featurette">
									<p>Állampolgárság*</p>
									<div class="form-group">
										<select class="form-control" name="allampolgarsagokId">
											<option value="Dunaujvaros">Dunaujvaros</option>
											<option value="Budapest">Budapest</option>
											<option value="Szeged">Szeged</option>
											<option value="Pecs">Pecs</option>
											<option value="Gyor">Gyor</option>
											<option value="Debrecen">Debrecen</option>
										</select>
									</div>
								</div>
								<!-- Panel4 row1 -->

								<div class="row featurette">
									<p>Adóazonosító jel*</p>
									<div class="input-group">
										<input name="adoazonositoJelId" type="text"
											class="form-control" placeholder=""
											aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row2 -->

								<div class="row featurette">
									<p>Személyi igazolvány száma</p>
									<div class="input-group">
										<input name="szigSzId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row3 -->

								<div class="row featurette">
									<p>Szig. kiállító hatóság neve</p>
									<div class="input-group">
										<input name="szigKiHatNeveId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row4 -->

								<div class="row featurette">
									<p>Szig. kiállító hatóság székhelye</p>
									<div class="input-group">
										<input name="szigKiHatSzekhelyeId" type="text"
											class="form-control" placeholder=""
											aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row5 -->

								<div class="row featurette">
									<p>Lakcímkártya száma</p>
									<div class="input-group">
										<input name="lakcimKSzamaId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row6 -->

								<div class="row featurette">
									<p>Születési idő*</p>
									<div class="input-group">
										<input name="szuletesiIdoId" type="text" class="form-control"
											placeholder="/Hó/Nap/Év" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row7 -->

								<div class="row featurette">
									<p>Születési hely*</p>
									<div class="input-group">
										<input name="szuletesiHelyId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row7 -->

								<div class="row featurette">
									<p>Anyja neve*</p>
									<div class="input-group">
										<input name="anyjaNeveId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row9 -->

								<div class="row featurette">
									<p>Útlevél száma</p>
									<div class="input-group">
										<input name="utlevelSzamaId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row10 -->

								<div class="row featurette">
									<p>Jogosítvány száma</p>
									<div class="input-group">
										<input name="jogositvanySzamaId" type="text"
											class="form-control" placeholder=""
											aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel4 row11 -->



							</div>
							<!--ContainerSajat Panel4 belső-->

						</div>
						<!-- Panel4 - body -->
					</div>
					<!--Panel4 -->

				</div>
				<!-- col-md-6 1 -->


				<div class="col-md-6">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Elektronikus szolgáltatásokkal
								kapcsolatos adatok</h3>
						</div>
						<div class="panel-body">
							<div class="ContainerSajat">
								<div class="row featurette">
									<p>Szeretne-e Web szolgáltatást igényelni?*</p>
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
									<p>Szeretne-e Mobil szolgáltatást igényelni?*</p>
									<label for="chkYesMobil"> <input type="radio"
										id="chkYesMobil" name="chkMobil" onclick="ShowHideDivMobil()" />
										Igen
									</label> <label for="chkNo"> <input type="radio" id="chkNoMobil"
										name="chkMobil" onclick="ShowHideDivMobil()" checked="checked" />
										Nem
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
									<p>Szeretne-e Telefonos szolgáltatást igényelni?*</p>
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
							<!--ContainerSajat Panel6 belső-->

						</div>
						<!-- Panel5 - body -->
					</div>
					<!--Panel5 -->

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Számlát érintő rendelkezések</h3>
						</div>
						<div class="panel-body">
							<div class="ContainerSajat">
								<div class="row featurette">
									<p>Számlakivonat gyakorisága*</p>
									<div class="form-group">
										<select class="form-control" name="szlaGyakorisagId">
											<option value="Evente">Évente</option>
											<option value="NemKer">Nem Kér</option>
										</select>
									</div>
								</div>
								<!-- Panel6 row1 -->

								<div class="row featurette">
									<p>Esedékességfizetés módja*</p>
									<div class="form-group">
										<select class="form-control" name="esedekessegId">
											<option value="BankiUtalassal">Készpénz-számla</option>
											<option value="KeszpenzPenzszamla">Banki utalással</option>
										</select>
									</div>
								</div>
								<!-- Panel6 row2 -->

								<div class="row featurette">
									<p>Giro számlaszám utalásos esedékességfizetési rendelkezés
										esetén*</p>
									<div class="input-group">
										<input name="giroSzamlaIdId" type="text" class="form-control"
											placeholder="" aria-describedby="basic-addon1">
									</div>
								</div>
								<!-- Panel6 row3 -->

							</div>
							<!--ContainerSajat Panel6 belső-->

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

					<a href="index.html" class="btn btn-info" role="button">Mégse</a>

				</div>
				<!-- col-md-6 1 -->

				<div class="col-md-6">

					<button type="submit" class="btn btn-primary" aria-pressed="false"
						autocomplete="off">Regisztráció</button>

					<input type="date" />

				</div>
				<!-- col-md-6 2 -->
			</div>
			<!-- Negyedik nagy sor (gombok) -->




		</div>
		<!-- Container -->


	</form>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

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

	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>

	<script src="resources/js/RadioButton.js"></script>

</body>
</html>