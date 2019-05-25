<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
			<a href="<%=request.getContextPath()%>/Destinations">Destinations</a> <a href="contact.jsp">Contact</a> <a
				href="about.jsp">About</a> <a
				href="<%=request.getContextPath()%>/logout">Log out</a>
		</div>
		<div class="center">
			<p>Plan a trip to your favorite place</p>
			<h2>Taxa Adventure</h2>
		</div>
	</div>
</body>
</html>