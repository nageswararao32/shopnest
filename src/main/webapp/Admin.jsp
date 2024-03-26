<%@ page import="com.ShopNest.DbHandler.FetchingUserInfo"%>
<%@ page import="java.util.List"%>
<%@ page import="com.ShopNest.DbHandler.FetchingUserInfo"%>
<%@ page import="java.util.List"%>
<%@ page import="com.ShopNest.Carts.Product"%>
<%@ page import="com.ShopNest.Carts.Cart"%>
<%@ page import="com.ShopNest.Customers.Validator"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>

</head>
<body>

	<%
	String Usname = (String) session.getAttribute("uname");
	%>

	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="Admin.jsp"> <img
				src="https://mir-s3-cdn-cf.behance.net/projects/404/8ad593164352615.Y3JvcCwxMTQ1LDg5NiwxNDQsMTk.jpg"
				alt="logo" width="100" height="100" style="border-radius: 50px;">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a style="color: orange;"
						class="nav-link active" aria-current="page" href="Admin.jsp">
							Home </a></li>
					<li class="nav-item"><a class="nav-link active"
						style="color: orange;" href="FetchingUserInformation.jsp"
						aria-current="page">View User Information</a></li>
					<li class="nav-item"><a class="nav-link active"
						style="color: orange;" href="AddProducts.jsp" aria-current="page">Add
							Product Information</a></li>
					<li class="nav-item"><a class="nav-link active"
						style="color: orange;" href="FetchingProductInfo.jsp"
						aria-current="page">View Product Information</a></li>
					<li class="position-absolute top-5 end-0">
						<div class="dropdown">
							<button type="button"
								class="btn btn-primary dropdown-toggle mx-5"
								data-bs-toggle="dropdown">
								<img src="MyPhotos/Profile.svg" class="avatar" alt="Avatar"
									style="width: 40px; height: 40px;"><%=Usname%>
							</button>
							<ul class="dropdown-menu mx-5">
								<li><a class="dropdown-item" href="FetchingProductInfo.jsp">ViewProductInfo</a></li>
								<li><a class="dropdown-item" href="AddProducts.jsp">AddProductInfo</a></li>
								<li><a class="dropdown-item" href="logout"> <img
										alt="img1" src="MyPhotos/logout_black_24dp.svg" width="20"
										height="20"> Logout
								</a></li>
							</ul>
						</div>
					</li>


				</ul>
			</div>
		</div>
	</nav>

	<div class="text-center">

		<marquee width="60%" direction="left" height="200px"
			style="color: blue; padding: 10px 20px 10px 20px; font-size: 30px;">
			Welcome to Admin Page! </marquee>

	</div>


	<a href="ProductCarts1.jsp" class="nav-link text-center">New
		Product Details</a>


	<div class="pt-3" style="width: 100%;">
		<%@ include file="FooterPage.jsp"%>
	</div>
</body>
</html>
