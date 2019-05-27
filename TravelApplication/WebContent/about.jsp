<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap1.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles/about.css">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
	<!-- main css -->
	<link rel="stylesheet" href="css/style1.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">

	<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
<style>
.header {
	background: url(images/banner.jpg);
	background-size: cover;
	height: 300px;
	position: relative;
}

.header1 {
	background: url(images/why.jpg);
	background-size: cover;
	height: 600px;
	position: relative;
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

.left {
	position: absolute;
	left: 100px;
	bottom: 100px;
}
</style>
</head>
<body>
	<div class="header">
		<div class="topnav">
			<a class="navbar-brand logo_h"
				href="<%=request.getContextPath()%>/User"><img
				src="images/logo.png" alt=""></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="<%=request.getContextPath()%>/User">Home</a>
			<a href="<%=request.getContextPath()%>/Destinations">Destinations</a><a href="contact.jsp">Contact</a> <a
				class="active" href="about.jsp">About</a> <a
				href="<%=request.getContextPath()%>/logout">Log out</a>
		</div>
		<div class="left">
			<div class="center">
				<h2>About us</h2>
			</div>
		</div>
	</div>
	<div id="about">
		<div class="light-wrapper">
			<div class="row">
				<div class="text-center">
					<h3 class="main-title">  About our company</h3>
					<hr>
				</div>
				<div class="divide50"></div>
				<div class="col-sm-4">
					<figure>
						<img src="images/office.jpg" alt="" style="width: 80%;">
					</figure>
				</div>
				<div class="col-sm-8">
					<h4>Our Working Place</h4>
					<p>Taxa Adventure bring the world to our clients with
						custom-crafted travel designed to your exact specifications. We
						are a luxury travel agency, specializing in luxury vacations and
						more, providing you options for destinations, experiences and
						excursions. Our global connections run deeper and further : from
						airlines, cruise lines, hotels, tour companies, resorts , and more
						, which gives us an unmatched advantage in delivering amazing
						experiences for our clients. Luxury travel means more to us than
						just 5 star hotels. It means crafting a personalized travel
						itinerary and delivering a trip you will remember forever. At Taxa
						Adventure, the world is entirely yours and our luxury travel agent
						specialists are here to help you navigate it.</p>
				</div>
			</div>
		</div>
	</div>

	<!-- Why Choose Us -->

	<div class="header1">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">
						<h2>Why choose us?</h2>
					</div>
				</div>
			</div>
			<div class="row why_row">

				<!-- Why item -->
				<div class="col-lg-4 why_col">
					<div class="why_item">
						<div class="why_image">
							<img src="images/why_1.jpg" alt="">
							<div
								class="why_icon d-flex flex-column align-items-center justify-content-center">
								<img src="images/why_1.svg" alt="">
							</div>
						</div>
						<div class="why_content text-center">
							<div class="why_title">Fast Services</div>
						</div>
					</div>
				</div>

				<!-- Why item -->
				<div class="col-lg-4 why_col">
					<div class="why_item">
						<div class="why_image">
							<img src="images/why_2.jpg" alt="">
							<div
								class="why_icon d-flex flex-column align-items-center justify-content-center">
								<img src="images/why_2.svg" alt="">
							</div>
						</div>
						<div class="why_content text-center">
							<div class="why_title">Great Team</div>
						</div>
					</div>
				</div>

				<!-- Why item -->
				<div class="col-lg-4 why_col">
					<div class="why_item">
						<div class="why_image">
							<img src="images/why_3.jpg" alt="">
							<div
								class="why_icon d-flex flex-column align-items-center justify-content-center">
								<img src="images/why_3.svg" alt="">
							</div>
						</div>
						<div class="why_content text-center">
							<div class="why_title">Best Deals</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Team -->

	<div class="team">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_title">
						<h2>Meet the Team</h2>
					</div>
				</div>
			</div>
			<div class="row team_row">

				<!-- Team Item -->
				<div class="col-xl-3 col-md-6 team_col">
					<div
						class="team_item d-flex flex-column align-items-center justify-content-start text-center">
						<div class="team_image">
							<img src="images/team_1.jpg" alt="">
						</div>
						<div class="team_content">
							<div class="team_title">
								<a href="#">Margaret Smith</a>
							</div>
						</div>
					</div>
				</div>

				<!-- Team Item -->
				<div class="col-xl-3 col-md-6 team_col">
					<div
						class="team_item d-flex flex-column align-items-center justify-content-start text-center">
						<div class="team_image">
							<img src="images/team_2.jpg" alt="">
						</div>
						<div class="team_content">
							<div class="team_title">
								<a href="#">James Williams</a>
							</div>
						</div>
					</div>
				</div>

				<!-- Team Item -->
				<div class="col-xl-3 col-md-6 team_col">
					<div
						class="team_item d-flex flex-column align-items-center justify-content-start text-center">
						<div class="team_image">
							<img src="images/team_3.jpg" alt="">
						</div>
						<div class="team_content">
							<div class="team_title">
								<a href="#">Michael James</a>
							</div>
						</div>
					</div>
				</div>

				<!-- Team Item -->
				<div class="col-xl-3 col-md-6 team_col">
					<div
						class="team_item d-flex flex-column align-items-center justify-content-start text-center">
						<div class="team_image">
							<img src="images/team_4.jpg" alt="">
						</div>
						<div class="team_content">
							<div class="team_title">
								<a href="#">Noah Smith</a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>