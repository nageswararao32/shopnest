<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.ShopNest.Carts.Cart"%>
<%@ page import="com.ShopNest.Carts.Product"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="jakarta.servlet.http.HttpServletResponse"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Page</title>
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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="NewHome.jsp"> <img
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
						class="nav-link active" aria-current="page" href="NewHome.jsp">
							Home </a></li>
					<li>
						<form action="Myfiles.jsp" class="mx-5">
							<input type="text" name="ProductName"
								placeholder="Search Products......"
								style="width: 350px; height: 40px; border-radius: 40px;"
								required /> <input type="submit" value="Search"
								class="btn btn-primary" />
						</form>
					</li>
				</ul>
			</div>
		</div>
	</nav>



	<%
	List<Product> itemList = Cart.getItems();

	PrintWriter pw = response.getWriter();
	%>






	<%
	int subTotal = 0;

	if (Cart.getItems() == null) {

		pw.write("Your Cart is Empty...");

		response.setContentType("text/html");
		pw.println("<script type=\"text/javascript\">");
		pw.println("window.alert('Your Cart is Empty')");
		pw.println("</script>");

	} else {

		for (Product p : itemList) {
			subTotal = subTotal + p.getPprice();
	%>





	<section class="container sproduct my-5 pt-5">
		<div class="row mt-5">
			<div class="col-lg-4 col-md-12 col-12">
				<img class="card p-2 img-fluid" alt="Prod1"
					src="MyPhotos/<%=p.getPimg()%>"
					style="height: 300px; width: 300px;">
			</div>
			<div class=" col-lg-6 col-md-12 col-12">
				<h1 style="color: SlateBlue;"><%=p.getPname()%></h1>
				<h3>
					Price: &#8377;<%=p.getPprice()%></h3>
				<h6>Discount:&nbsp;(50% off)</h6>
				<h6>
					Rating: <span class="badge bg-success">4.4 <span
						class="fa fa-star"></span></span>
				</h6>
				<h4>
					Quantity: <input type="number" value="1" style="width: 200px;"
						name="Number" />
				</h4>
				<p>
				<h6>Description:</h6>
				<%=p.getPdesc()%>
				</p>
				<a class="btn btn-primary mt-auto justify-content-center"
					href="now?productId=<%=p.getPid()%>" target="_blank"> BUYNOW </a>
			</div>

		</div>
	</section>









	<%
	}

	}
	%>



	<h1 class="text-center bg-info" style="color: orange;">
		Totall Bill:<%=subTotal%></h1>



</body>
</html>






