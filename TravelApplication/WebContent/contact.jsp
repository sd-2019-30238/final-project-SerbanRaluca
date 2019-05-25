<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact</title>
<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="vendors/linericon/style.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="vendors/flat-icon/font/flaticon.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	<div class="row">
		<div class="col-12">
			<h2 class="contact-title">Get in Touch</h2>
		</div>
		<div class="col-lg-8">
			<form class="form-contact contact_form" action="#"
				method="post" id="contactForm" novalidate="novalidate">
				<div class="row">
					<div class="col-12">
						<div class="form-group">
							<textarea class="form-control w-100" name="message" id="message"
								cols="30" rows="9" placeholder="Enter Message"></textarea>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<input class="form-control" name="name" id="name" type="text"
								placeholder="Enter your name">
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<input class="form-control" name="email" id="email" type="email"
								placeholder="Enter email address">
						</div>
					</div>
					<div class="col-12">
						<div class="form-group">
							<input class="form-control" name="subject" id="subject"
								type="text" placeholder="Enter Subject">
						</div>
					</div>
				</div>
				<div class="form-group mt-3">
					<button type="submit" class="button button-contactForm">Send
						Message</button>
				</div>
			</form>


		</div>

		<div class="col-lg-4">
			<div class="media contact-info">
				<span class="contact-info__icon"><i class="ti-home"></i></span>
				<div class="media-body">
					<h3>Chicago,US</h3>
					<p>Rosemead, CA 91770</p>
				</div>
			</div>
			<div class="media contact-info">
				<span class="contact-info__icon"><i class="ti-tablet"></i></span>
				<div class="media-body">
					<h3>
						<a href="tel:454545654">00 (440) 9865 562</a>
					</h3>
					<p>Mon to Fri 9am to 6pm</p>
				</div>
			</div>
			<div class="media contact-info">
				<span class="contact-info__icon"><i class="ti-email"></i></span>
				<div class="media-body">
					<h3>
						<a href="#">taxa_adventure@mail.com</a>
					</h3>
					<p>Send us your message anytime!</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>