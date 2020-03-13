<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<style>
.credit-card-div  span {
	padding-top: 10px;
}

.credit-card-div img {
	padding-top: 30px;
}

.credit-card-div .small-font {
	font-size: 9px;
}

.credit-card-div .pad-adjust {
	padding-top: 10px;
}
body{
/* background-image:url('../images/payment.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%; */

background-color: #17a2b8;
}
#fin{
  width:400px;
  margin-top:30px;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Details</title>
<center>
<h1>Online Payment</h1>
</head>
<body>
	<section class="mb-4 container">
	<form action="/payment">
		<div class="panel panel-default" id = "fin">
			<div class="panel-heading">

				<div class="row ">
					<div class="col-md-12">
						<input type="text" class="form-control"
							placeholder="Enter Card Number" />
					</div>
				</div>
				<div class="row ">
					<div class="col-md-3 col-sm-3 col-xs-3">
						<span class="help-block text-muted small-font"> Expiry
							Month</span> <input type="text" class="form-control" placeholder="MM" />
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3">
						<span class="help-block text-muted small-font"> Expiry
							Year</span> <input type="text" class="form-control" placeholder="YY" />
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3">
						<span class="help-block text-muted small-font"> CCV</span> <input
							type="text" class="form-control" placeholder="CCV" />
					</div>
					
				</div>
				<div class="row ">
					<div class="col-md-12 pad-adjust">

						<input type="text" class="form-control"
							placeholder="Name On The Card" />
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 pad-adjust">
						<div class="checkbox">
							<label> <input type="checkbox" checked class="text-muted">
								Save details for fast payments <a href="#"> learn how ?</a>
							</label>
						</div>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
						<input type="reset" class="btn btn-danger" value="CANCEL" />
					</div>
					<div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
						<input type="submit" onclick="myFunction()" id="submit" class="btn btn-warning btn-block"
							value="PAY NOW" />
					</div>
				</div>

			</div>
		</div>
		<p id="demo"></p>
	</form>
	
	</section>
	</center>
	<script>
function myFunction() {
  document.getElementById("demo").innerHTML = "payment sucessful";
}
</script>
</body>
</html>