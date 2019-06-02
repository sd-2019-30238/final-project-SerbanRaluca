<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
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
	<h1>Error</h1>
	<div class="header">
		<div class="center">
			<p>Sorry...We could not make a rezervation!No more rooms
				available!</p>
			<p>Try another hotel!</p>
			<a
				href="<%=request.getContextPath()%>/DestinationPage?&name=<%=request.getAttribute("destination")%>">Hotels</a>
		</div>
	</div>
</body>
</html>