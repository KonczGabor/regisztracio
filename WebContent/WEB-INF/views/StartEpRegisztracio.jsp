<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
	pageEncoding="ISO-8859-2"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Start Értekpapír Számla</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/styles.css" />

</head>
<body>
	<form accept-charset="UTF-8" class="pro-form" id="pro-form"
		method="POST" action="SaveStartEp">

		<div class="progress-wrap">
			<progress max="100" value="0" id="progress"></progress>
			<div class="progress-message" id="progress-message">The form,
				it wants you.</div>
		</div>

		<p>Név - elõtag</p>
		<div class="input-group">
			<input name="elotagId" type="text" class="form-control"
				placeholder="" aria-describedby="basic-addon1" required="required">
		</div>

		<input type="date" name="date" required="required">

		<button type="submit" class="btn btn-primary" aria-pressed="false"
			autocomplete="off">Regisztráció</button>
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

	<!-- Form progressbar js -->
	<script src="resources/js/Form_progressbar.js"></script>
</body>
</html>