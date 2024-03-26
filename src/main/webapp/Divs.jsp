<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Divs Container</title>
<style>
html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

body {
	margin: 0;
	background-color: #FFEEDD;
}

.textbox-1 {
	font-size: 1.25em;
	text-align: justify;
	border-radius: 50px;
}

.row {
	display: flex;
	justify-content: space-around;
	padding: 25px 0;
	max-width: 1280px;
	margin: auto;
}

.w50 {
	flex: 0 0 45%;
	background: #ccc;
}

.w50 p {
	margin: 0;
	padding: 10px;
}

.object-fit {
	border-radius: 50px;
	overflow: hidden;
	position: relative;
}

</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

</head>
<body>

	<div class="container-fluid column pt-3">
		<h2 class="text-center">New Arrivals</h2>
		<div class="container-fluid w50 textbox-1"
			style="padding: 5px 10px 5px 10px;">
			<%@ include file="NewCarts.jsp"%>
			<a href="ProductCarts.jsp" class="nav-link text-center">SeeMore</a>
		</div>
	</div>
	
	<div class="pt-3 mx-5" style="width: 90%;">
		<%@ include file="NewNavBar1.jsp"%>
	</div>
	
	<div class="pt-3" style="width: 100%;">
		<%@ include file="LatestAllDeals.jsp"%>
	</div>
	
	<div class="pt-3" style="width: 100%;">
		<%@ include file="FooterPage.jsp"%>
	</div>

</body>
</html>

