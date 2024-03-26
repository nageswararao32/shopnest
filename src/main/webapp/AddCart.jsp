<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.ShopNest.Carts.Cart" %> 
<%@ page import="com.ShopNest.Carts.Product" %>  
<%@ page import="java.util.List" %> 
<%@ page import="java.util.ArrayList" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CartPage</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="MyHome.jsp">
     <img src="https://mir-s3-cdn-cf.behance.net/projects/404/8ad593164352615.Y3JvcCwxMTQ1LDg5NiwxNDQsMTk.jpg" alt="logo"  width="100" height="100"  style="border-radius:50px;">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a   style="color: orange;"    class="nav-link active" aria-current="page" href="MyHome.jsp">
          Home
          </a>
        </li>
        <li>
		<form action="Myfiles.jsp" class="mx-5">
			<input type="text" name="ProductName"  placeholder="Search Products......" style="width:350px; height:40px; border-radius:40px;"/>
			<input type="submit" value="Search" class="btn btn-primary"/>
		</form>
		</li>
        </ul>
      </div>
      </div>
      </nav>

<div class="container-fluid d-flex justify-content-center">
 <div class="col-md-22">
 <div class="column">
 <div class="col-md-12">
 <h2 class="text-center" style="padding:10px 20px 10px 20px;">Items In Your Cart</h2>
 <div class="col-md-22">
 <div class="column">
 
<%
	List<Product> itemList = Cart.getItems();
	
%>
	
	
	
	
	
		
		<%
		int subTotal = 0;
		for(Product p: itemList){
			subTotal = subTotal+p.getPprice();
		%>
		
	
		<div class="col-md-4" style="padding:20px 30px 20px 30px; width:350px;">
 		<div class="card">
		<img src="MyPhotos/<%= p.getPimg()%>"  alt="product1"  style="height:300px;" />
		<h2 class="text-center" style="color:SlateBlue;" id="tit"><%=p.getPname()%></h2>
		<p class="text-center"><%=p.getPdesc()%></p>
		<p class="text-center"><span><span>Rs.</span><%=p.getPprice()%></span></p>
		<p class="text-center">Quantity:<span>
		<input type="number" style="width:50px; height:20px;"/>
		</span></p>
		<br>
		<a class="btn btn-dark mt-auto justify-content-center" href="BuyNow.jsp" >
		BuyNow
		</a>
		</div>
		</div>
				
		<%
		}
		%>
		
		
		
		
		<h1  class="text-center bg-info"style="color:orange;">SubTotal:<%= subTotal %></h1>
		

	
</div>
 </div>
 </div>
 </div>
 </div> 
  </div>		

	
	
</body>
</html>





	 
 	