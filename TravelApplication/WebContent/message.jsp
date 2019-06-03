<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reservation done</title>
<style>
.header {
	background: url(images/room-1.jpg);
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
</style>
</head>
<body>
	<div class=header>
		<div class=center>
			<p>Your rezervation is done!Thank you for using our services!</p>
			<p>Please book a flight to finish your traveling plan!</p>
			<a href="<%=request.getContextPath()%>/BookFlight?&city=<%=request.getAttribute("city")%>">Book flight</a>
		</div>
	</div>
</body>
</html>