<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Destinations</title>
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

.grid-container {
	display: grid;
	justify-content: space-evenly;
	grid-template-columns: 300px 300px 300px;
	/*Make the grid smaller than the container*/
	grid-gap: 10px;
	background-color: Violet;
	padding: 10px;
}

.grid-container>div {
	background-color: rgba(255, 255, 255, 0.8);
	text-align: center;
	padding: 15px 0;
	font-size: 20px;
}

.filterDiv {
  float: left;
  background-color: #2196F3;
  color: #ffffff;
  text-align: center;
  margin: 2px;
  display: none;
}

.show {
  display: block;
}

.container {
  margin-top: 20px;
  overflow: hidden;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: gray;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body onload="filterSelection('all')">
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
			<a href="<%=request.getContextPath()%>/User">Home</a>
			<a class="active" href="<%=request.getContextPath()%>/Destinations">Destinations</a> 
			<a href="contact.jsp">Contact</a>
			<a href="about.jsp">About</a> <a
				href="<%=request.getContextPath()%>/logout">Log out</a> <a
				href="#news" style="float: right">Welcome-${loginedUser.username}</a>
		</div>
		<div class="center">
			<p>Plan a trip to your favorite place</p>
			<h2>Taxa Adventure</h2>
		</div>
	</div>
	
	<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')" > Show all</button>
  <button class="btn" onclick="filterSelection('Belgium')">Belgium</button>
  <button class="btn" onclick="filterSelection('Brazil')">Brazil</button>
  <button class="btn" onclick="filterSelection('China')"> China</button>
  <button class="btn" onclick="filterSelection('Cyprus')"> Cyprus</button>
  <button class="btn" onclick="filterSelection('Denmark')"> Denmark</button>
  <button class="btn" onclick="filterSelection('Egypt')">Egypt</button>
  <button class="btn" onclick="filterSelection('France')">France</button>
  <button class="btn" onclick="filterSelection('Greece')">Greece</button>
  <button class="btn" onclick="filterSelection('Indonesia')">Indonesia</button>
  <button class="btn" onclick="filterSelection('Israel')">Israel</button>
  <button class="btn" onclick="filterSelection('Italy')">Italy</button>
  <button class="btn" onclick="filterSelection('Japan')">Japan</button>
   <button class="btn" onclick="filterSelection('Peru')">Peru</button>
  <button class="btn" onclick="filterSelection('Netherlands')">Netherlands</button>
  <button class="btn" onclick="filterSelection('New Zealand')">New Zealand</button>
  <button class="btn" onclick="filterSelection('Portugal')">Portugal</button>
  <button class="btn" onclick="filterSelection('Spain')">Spain</button>
  <button class="btn" onclick="filterSelection('Thailand')">Thailand</button>
  <button class="btn" onclick="filterSelection('Turkey')">Turkey</button>
  <button class="btn" onclick="filterSelection('United Kingdom')">United Kingdom</button>
</div>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("filterDiv");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}

// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>
	
	<div class="destinations" id="destinations">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<div class="section_subtitle">simply amazing places</div>
					<div class="section_title">
						<h2>Destinations</h2>
					</div>
				</div>
			</div>
			<div class="grid-container">
				<c:forEach var="destination" items="${destinations }">
					<div class="filterDiv ${destination.country}">
						<img src="${pageContext.request.contextPath }/images/destinations/${destination.country}/${destination.city}/${destination.photo}.jpg" alt="" style="width: 80%">
						<div class="destination_title">
							<a href="<%=request.getContextPath()%>/DestinationPage?&name=${destination.photo}">${destination.photo}</a>
						</div>
						<div class="destination_price"><p style="color:black;"> Price:${destination.price}</p></div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>

</body>
</html>