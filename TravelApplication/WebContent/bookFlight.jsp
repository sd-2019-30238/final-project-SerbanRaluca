<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Flight</title>
</head>
<style>
.header {
	background: url(images/flight.jpg);
	background-size: cover;
	height: 600px;
	position: relative;
}

/* Add styles to the form container */
.container {
	position: absolute;
	left: 0;
	margin: 20px;
	max-width: 500px;
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=date] {
	width: 80%;
	padding: 15px;
	margin: 5px 0 22px 0;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=date]:focus {
	background-color: #ddd;
	outline: none;
}

/* Set a style for the submit button */
.submit-btn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.submit-btn:hover {
	opacity: 1;
}
</style>
<body>
	<div class="header">
		<form action="BookFlight" method="post" class="container">
			<h1>Book your flight today</h1>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<span class="form-label">Flying from</span> <input
							class="form-control" type="text" name="from" placeholder="City or airport">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<span class="form-label">Flyning to</span> <input
							class="form-control" type="text" name="to" value=<%=request.getAttribute("city")%>>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<span class="form-label">Departing</span> <input
							class="form-control" name="depart" type="date" required>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<span class="form-label">Returning</span> <input
							class="form-control" name="return" type="date" required>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
						<span class="form-label">Travel class</span> <select
							class="form-control" name="class">
							<option>Economy class</option>
							<option>Business class</option>
							<option>First class</option>
						</select> <span class="select-arrow"></span>
					</div>
				</div>
			</div>
			<br></br>
			<div class="form-btn">
				<button class="submit-btn" type="submit">Book flight</button>
			</div>
		</form>
	</div>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</body>
</html>