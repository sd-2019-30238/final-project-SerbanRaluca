<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel Reservation</title>
<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Cardo:700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />
<style>
.header {
	background: url(images/bg_5.jpg);
	background-size: cover;
	height: 600px;
	position: relative;
}

.center {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 18px;
}

.submit-btn {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}
</style>
</head>
<body>
	<div class="header">
		<div class="center">
			<div id="booking" class="section">
				<div class="section-center">
					<div class="container">
						<div class="row">
							<div class="booking-form">
								<div class="form-header">
									<h1><%=request.getAttribute("hotelName")%></h1>
									<h1>Make your reservation</h1>
								</div>
								<form name="form" action="HotelBooking" method="post">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<span class="form-label" style="color: blue;">Email:</span>
												<input class="form-control" name="email" type="text"
													required>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<span class="form-label" style="color: blue;">Check
													in</span> <input class="form-control" name="checkin" type="date"
													required>
											</div>
											<span class="in-out hidden-xs hidden-sm">&#8652;</span>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<span class="form-label" style="color: blue;">Check
													out</span> <input class="form-control" name="checkout" type="date"
													required>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-3">
											<div class="form-group">
												<span class="form-label" style="color: blue;">No of
													rooms</span> <select class="form-control" name="rooms">
													<option>1</option>
													<option>2</option>
													<option>3</option>
												</select> <span class="select-arrow"></span>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<span class="form-label" style="color: blue;">Phone:</span>
												<input class="form-control" name="phone" type="text"
													required>
											</div>
										</div>
										<div class="col-md-3">
											<div class="form-btn">
												<button class="submit-btn" type="submit">Check availability</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>