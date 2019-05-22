<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reset Password</title>
<style>
html {
	background: url(images/reset1.jpg);
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

form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>
<body>
	<div class="center">
		<div class="container">
			<form action="reset.jsp">
				<label for="reset"><b>Reset code</b></label>: <input type="text" name="pin" maxlength="4"><br>
				<input type="reset" value="Reset" class="button"> <input type="submit"
					value="Submit">
			</form>
		</div>

		<p>We sent you a reset code!Use it to reset your password!</p>
		<div class=err>
			<%=(request.getAttribute("errMessage") == null) ? "": request.getAttribute("errMessage")%>
		</div>
	</div>

</body>
</html>
