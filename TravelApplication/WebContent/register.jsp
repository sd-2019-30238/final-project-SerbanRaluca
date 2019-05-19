<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html {
	background: url(images/register.jpg);
	background-size: cover;
}

.center {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 18px;
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

.icon {
	padding: 10px;
	background: dodgerblue;
	color: white;
	min-width: 50px;
	text-align: center;
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
<script>
	function validate() {
		var email = document.form.email.value;
		var username = document.form.username.value;
		var password = document.form.password.value;

		 if (email == null || email == "") {
			alert("Email can't be blank");
			return false;
		} else if (username == null || username == "") {
			alert("Username can't be blank");
			return false;
		} else if (password.length < 6) {
			alert("Password must be at least 6 characters long.");
			return false;
		}
	}
</script>

</head>
<body>
	<div class="center">
		<form action="register" method="post"
		onsubmit="return validate()" style="max-width: 500px; margin: auto">
			<h2>Register Form</h2>
			<div class="input-container">
				<i class="fa fa-user icon"></i> <input class="input-field"
					type="text" placeholder="Username" name="username">
			</div>

			<div class="input-container">
				<i class="fa fa-envelope icon"></i> <input class="input-field"
					type="text" placeholder="Email" name="email">
			</div>

			<div class="input-container">
				<i class="fa fa-phone icon"></i> <input class="input-field"
					type="text" placeholder="Phone" name="phone">
			</div>

			<div class="input-container">
				<i class="fa fa-key icon"></i> <input class="input-field"
					type="password" placeholder="Password" name="password">
			</div>

			<button type="submit" class="btn">Register</button>
		</form>
	</div>

</body>
</html>
