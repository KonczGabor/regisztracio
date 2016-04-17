<%@ page import="java.util.*, com.regisztracio.models.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>TermészetesSzemély</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
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

					<div class="row featurette">
						<div class="col-md-4">
							<p>Név - vezetéknév*</p>
							<div class="input-group">								
								<input name="elotagId" type="text" class="form-control"
									placeholder="" aria-describedby="basic-addon1">
							</div>

						</div>
						<div class="col-md-4">
							<p>Név - első utóneve*</p>
							<div class="input-group">								
								<span class="input-group-addon" id="sizing-addon1">Ar</span> <input
									name="ar" type="text" class="form-control" placeholder="Ft"
									aria-describedby="basic-addon1">
							</div>
						</div>
						<div class="col-md-4">
							<p>Név - második utóneve</p>
							<div class="input-group">								
								<span class="input-group-addon" id="sizing-addon1">Ar</span> <input
									name="ar" type="text" class="form-control" placeholder="Ft"
									aria-describedby="basic-addon1">
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>


	</form>



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
</body>
</html>