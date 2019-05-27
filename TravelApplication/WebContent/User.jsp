<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Adventure</title>
<link rel="icon" href="img/Fevicon.png" type="image/png">
<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="vendors/linericon/style.css">
<link rel="stylesheet"
	href="vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="vendors/flat-icon/font/flaticon.css">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css"
	href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">

<style>
.header {
	background: url(images/home.png);
	background-size: cover;
	height: 600px;
	position: relative;
}

.header1 {
	background: url(images/cta-bg.png);
	background-size: cover;
	height: 400px;
	position: relative;
}

.button {
	background-color: #333;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li




 




a








:hover








:not




 




(
.active




 




){
background-color








:




 




#111








;
}
.active {
	background-color: #4CAF50;
}

.center {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 18px;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #333;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 25px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #4CAF50;
	color: white;
}
/* Create two equal columns that floats next to each other */
.column {
	float: left;
	width: 50%;
	padding: 10px;
}

.column img {
	margin-top: 12px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!--================Service Area Start =================-->
	<div class="section-intro text-center pb-90px">
		<img class="section-intro-img" src="images/home/section-icon.png"
			alt="">
		<h2>Our Popular Services</h2>
		<p>We’ll find you the best rates on flights, car rentals and
			hotels. But more than that, we’ll give you everything you need to
			know to plan fantastic tours, sightseeing, shows, events, shopping
			trips and more to fit your budget and your schedule. Let us do the
			work so you can rest, relax and renew.</p>
	</div>

	<div class="row">
		<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
			<div class="service-card text-center">
				<div class="service-card-img">
					<img class="img-fluid" src="images/home/service1.png" alt="">
				</div>
				<div class="service-card-body">
					<h3>Hotel Booking</h3>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
			<div class="service-card text-center">
				<div class="service-card-img">
					<img class="img-fluid" src="images/home/service2.png" alt="">
				</div>
				<div class="service-card-body">
					<h3>Flight Booking</h3>
				</div>
			</div>
		</div>
		<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
			<div class="service-card text-center">
				<div class="service-card-img">
					<img class="img-fluid" src="images/home/service3.png" alt="">
				</div>
				<div class="service-card-body">
					<h3>Destination Booking</h3>
				</div>
			</div>
		</div>
	</div>
	<!--================Service Area End =================-->
	<!--================ Start CTA Area =================-->

	<div class="cta-area section_gap">
		<div class="container">
			<div class=header1>
				<div class="row">
					<div class="col-lg-5">
						<h1>Get Ready for Real time Adventure</h1>
						<p>Our highly-trained travel professionals are ready to handle
							your vacation requests to anywhere in the world. We offer air,
							hotel, car rentals, custom-planned vacations or tours, discounted
							cruises worldwide, anywhere in the world you want to go. Due to
							our business volume and industry experience, we are able to bring
							value added services to our clients.</p>
						<a href="<%=request.getContextPath()%>/Destinations" class="button">Book a Trip</a>
					</div>
					<div class="offset-lg-1 col-lg-6">
						<img class="cta-img img-fluid" src="images/cta-img.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End CTA Area =================-->
	<!-- Destinations -->
	<br></br>
	<br></br>
	<br></br>
	<br></br>
	<div class="destinations" id="destinations">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">
						<h2>Popular Destinations</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="column">

					<!-- Destination -->
					<div class="destination item">
						<div class="destination_image">
							<img src="images/destination_1.jpg" alt="" style="width: 80%">
							<div class="spec_offer text-center">
								<a href="#">Special Offer</a>
							</div>
						</div>
						<div class="destination_content">
							<div class="destination_title">
								<a href="destinations.html">Bali</a>
							</div>
							<div class="destination_price">From $679</div>
						</div>
					</div>

					<!-- Destination -->
					<div class="destination item">
						<div class="destination_image">
							<img src="images/destination_2.jpg" alt="" style="width: 80%">
						</div>
						<div class="destination_content">
							<div class="destination_title">
								<a href="destinations.html">Indonesia</a>
							</div>
							<div class="destination_price">From $679</div>
						</div>
					</div>
				</div>
				<div class="column">
					<!-- Destination -->
					<div class="destination item">
						<div class="destination_image">
							<img src="images/destination_3.jpg" alt="" style="width: 80%">
						</div>
						<div class="destination_content">
							<div class="destination_title">
								<a href="destinations.html">San Francisco</a>
							</div>
							<div class="destination_price">From $679</div>
						</div>
					</div>

					<!-- Destination -->
					<div class="destination item">
						<div class="destination_image">
							<img src="images/destination_4.jpg" alt="" style="width: 80%">
						</div>
						<div class="destination_content">
							<div class="destination_title">
								<a href="destinations.html">Paris</a>
							</div>
							<div class="destination_price">From $679</div>
						</div>
					</div>
				</div>
				<div class="column">
					<!-- Destination -->
					<div class="destination item">
						<div class="destination_image">
							<img src="images/destination_5.jpg" alt="" style="width: 80%">
						</div>
						<div class="destination_content">
							<div class="destination_title">
								<a href="destinations.html">Phi Phi Island</a>
							</div>
							<div class="destination_price">From $679</div>
						</div>
					</div>
				</div>
				<div class="column">

					<!-- Destination -->
					<div class="destination item">
						<div class="destination_image">
							<img src="images/destination_6.jpg" alt="" style="width: 80%">
						</div>
						<div class="destination_content">
							<div class="destination_title">
								<a href="destinations.html">Mykonos</a>
							</div>
							<div class="destination_price">From $679</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="styles/bootstrap4/popper.js"></script>
	<script src="styles/bootstrap4/bootstrap.min.js"></script>
	<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
	<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
	<script src="plugins/easing/easing.js"></script>
	<script src="plugins/parallax-js-master/parallax.min.js"></script>
</body>
</html>