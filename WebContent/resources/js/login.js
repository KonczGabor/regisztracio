$(document)
		.ready(
				function() {

					var username = "<input id=\"username\" type=\"text\" placeholder=\"username\" name=\"user\">";
					var password = "<input id=\"password\" type=\"password\" placeholder=\"password\" name=\"password\">";
					var authentication_button = "<button id=\"azonositas_button\">Azonosítas</button>";

					$("#row1").after(username);
					$("#row2").after(password);
					$("#row3").after(authentication_button);

					var sms = "<input id=\"sms\" type=\"text\" placeholder=\"sms\" name=\"sms\"><br>";
					var login = "<button id=\"belepes_button\">Belépés</button>";
					var back = "<button id=\"vissza_button\">Vissza</button>";
					var hiba1 = "<p id=\"hiba1\">Hibás Felhasználó név és/vagy jelszó</p>";
					var hiba2 = "<p id=\"hiba2\">Hibás sms kód</p>";

					$(document).on("click", "#azonositas_button", function() {

						if ($('#username').val() == "123" && $('#password').val() == "123") {

							// $("#div1").fadeIn();
							// $("#div2").fadeIn("slow");
							// $("#div3").fadeIn(3000);
							$("#username").remove();
							$("#password").remove();
							$("#azonositas_button").remove();

							$("#row1").before(sms);
							$("#row2").after(login);
							$("#row3").after(back);

							$("#hiba1").remove();
						} else {
							$("#hiba1").remove();
							$("#row4").before(hiba1);
						}
					});

					$(document).on("click", "#belepes_button", function() {
						if ($('#sms').val() == "123") {
							window.location.replace("ForwardToMainJSP");
						} else {
							$("#hiba2").remove();
							$("#row4").before(hiba2);
						}
					});

					$(document).on("click", "#vissza_button", function() {
						$("#sms").remove();
						$("#belepes_button").remove();
						$("#vissza_button").remove();
						$("#hiba2").remove();

						$("#row1").after(username);
						$("#row2").after(password);
						$("#row3").after(authentication_button);

					});

				});
