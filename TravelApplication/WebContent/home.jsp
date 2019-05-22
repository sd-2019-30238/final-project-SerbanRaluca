<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Travel Adventure</title>
<style>
.header {
	background: url(images/home.jpg);
	background-size: cover;
	height: 600px;
	position: relative;
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

li a:hover:not (.active ){
	background-color: #111;
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
</style>

</head>
<body>

	<ul>
		<li><a class="active" href="<%=request.getContextPath()%>/">Home</a></li>
		<li><a href="<%=request.getContextPath()%>/login">Login</a></li>
		<li><a href="<%=request.getContextPath()%>/logout">Log out</a></li>
		<li><a href="#contact">Contact</a></li>
		<li><a href="#about">About</a></li>
	</ul>
	<div class="header">
		<div class="center">
			<p>Plan a trip to your favorite place</p>
			<h2>Travel Adventure</h2>
		</div>
	</div>
</body>
</html>