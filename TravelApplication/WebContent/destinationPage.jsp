<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=(request.getParameter("name"))%></title>
<!-- Bootstrap CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<style>
.header {
	background: url(images/banner.jpg);
	background-size: cover;
	height: 300px;
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

.tab {
	margin-left: 0.5em
}

* {
	box-sizing: border-box;
}

/* The grid: Four equal columns that floats next to each other */
.column {
	float: left;
	width: 25%;
	padding: 10px;
}

/* Style the images inside the grid */
.column img {
	opacity: 0.8;
	cursor: pointer;
}

.column img:hover {
	opacity: 1;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* The expanding image container */
.container {
	position: relative;
	display: none;
}

/* Expanding image text */
#imgtext {
	position: absolute;
	bottom: 15px;
	left: 15px;
	color: blue;
	font-size: 20px;
}

/* Closable button inside the expanded image */
.closebtn {
	position: absolute;
	top: 10px;
	right: 15px;
	color: white;
	font-size: 35px;
	cursor: pointer;
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
			<a class="active" href="<%=request.getContextPath()%>/User">Home</a>
			<a href="<%=request.getContextPath()%>/Destinations">Destinations</a>
			<a href="#">Hotels</a> <a href="contact.jsp">Contact</a> <a
				href="about.jsp">About</a> <a
				href="<%=request.getContextPath()%>/logout">Log out</a>
		</div>
		<div class="center">
			<p><%=(request.getParameter("name"))%></p>
			<h2 class="tab">Hotels</h2>
		</div>
	</div>

	<div style="text-align: center">
		<h2>Most Popular Hotels</h2>
		<p>Click on the images below for details</p>
	</div>

	<!-- The four columns -->
	<div class="row">
		<c:forEach var="hotel" items="${hotels }">
			<div class="column">
				<p>${hotel.name}</p>
				<img
					src="${pageContext.request.contextPath }/images/destinations/${country}/${city}/${hotel.name}.jpg"
					alt="${hotel.name}<br>$${hotel.price}/night" style="width: 80%" align="middle"
					onclick="myFunction(this);"> <br></br> <a
					href="hotelBooking.jsp">Book now!</a>
			</div>
		</c:forEach>
	</div>

	<div class="container">
		<span onclick="this.parentElement.style.display='none'"
			class="closebtn">&times;</span> <img id="expandedImg"
			style="width: 70%">
		<div id="imgtext"></div>
	</div>

	<script>
		function myFunction(imgs) {
			var expandImg = document.getElementById("expandedImg");
			var imgText = document.getElementById("imgtext");
			expandImg.src = imgs.src;
			imgText.innerHTML = imgs.alt;
			expandImg.parentElement.style.display = "block";
		}
	</script>
</body>
</html>