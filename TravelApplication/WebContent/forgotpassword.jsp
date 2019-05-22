<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password</title>
<style>
html {
	background: url(images/reset.jpg);
	background-size: cover;
}

.center {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 18px;
}

.err {
	color: red;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

.input-container {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	width: 100%;
	margin-bottom: 15px;
}

.input-field {
	width: 100%;
	padding: 10px;
	outline: none;
}

.input-field:focus {
	border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
	background-color: dodgerblue;
	color: white;
	padding: 15px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.btn:hover {
	opacity: 1;
}
</style>
</head>
<body>
	<div class="center">
		<h2>Forgot password</h2>
		<p>Please enter your phone number!You will receive a reset code!</p>
		<div class="input-container">
			<form id="form" action="forgotPassword" method="post">
				<table>
					<tr>
						<td>Username:</td>
						<td><input type="text" name="username" id="username"
							size="20" class="input-field"></td>
					</tr>
					<tr>
						<td>Phone number:</td>
						<td><input type="text" name="phone" id="phone" size="10"
							class="input-field"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<button type="submit" class="btn">Get reset code</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div class=err>
			<%=(request.getAttribute("errMessage") == null) ? "": "Username or password invalid!Please try again!"%>
		</div>
	</div>
</body>
</html>