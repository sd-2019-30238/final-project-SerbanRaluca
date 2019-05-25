<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>footer</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-colors-metro.css">
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", Arial, Helvetica, sans-serif
}
</style>
</head>
<body class="w3-light-violet">
	<div
		class="w3-container w3-padding-32 w3-black w3-opacity w3-card w3-hover-opacity-off"
		style="margin: 32px 0;">
		<h2>Get the best offers first!</h2>
		<p>Join our newsletter.</p>
		<label>E-mail</label> <input class="w3-input w3-border" type="text"
			placeholder="Your Email address">
		<button type="button" class="w3-button w3-red w3-margin-top">Subscribe</button>
	</div>

	<div class="w3-container" id="contact">
		<h2>Contact</h2>
		<p>If you have any questions, do not hesitate to ask them.</p>
		<i class="fa fa-map-marker w3-text-red" style="width: 30px"></i>
		Chicago, US<br> <i class="fa fa-phone w3-text-red"
			style="width: 30px"></i> Phone:00 (440) 9865 562<br> <i
			class="fa fa-envelope w3-text-red" style="width: 30px"> </i> Email:
		taxa_adventure@mail.com<br>
		<form action="/action_page.php" target="_blank">
			<p>
				<input class="w3-input w3-padding-16 w3-border" type="text"
					placeholder="Name" required name="Name">
			</p>
			<p>
				<input class="w3-input w3-padding-16 w3-border" type="text"
					placeholder="Email" required name="Email">
			</p>
			<p>
				<input class="w3-input w3-padding-16 w3-border" type="text"
					placeholder="Message" required name="Message">
			</p>
			<p>
				<button class="w3-button w3-black w3-padding-large" type="submit">SEND
					MESSAGE</button>
			</p>
		</form>
	</div>

	<footer class="w3-padding-32 w3-black w3-center w3-margin-top">
		<h5>Find Us On</h5>
		<div class="w3-xlarge w3-padding-16">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<p>
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				target="_blank" class="w3-hover-text-green">w3.css</a>
		</p>
	</footer>
</body>
</html>