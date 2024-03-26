<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.ShopNest.OrderNow.BuyCart" %> 
<%@ page import="com.ShopNest.OrderNow.ByCart" %>  
<%@ page import="java.util.List" %> 
<%@ page import="java.util.ArrayList" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


<title>Print Form Details</title>
<style> 
p {
 margin-left:350px;
 color: blue; 
 font-size: 18px; 
 } 
.label { 
color: blue; 
} 
.value { 

color: black; 
} 
</style>
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
			<input type="text" name="ProductName"  placeholder="Search Products......" style="width:350px; height:40px; border-radius:40px;" required/>
			<input type="submit" value="Search" class="btn btn-primary"/>
		</form>
		</li>
        </ul>
      </div>
      </div>
      </nav>


<h1 class="p-2" style="text-align:center; color:orange;">Billing Address & Payment Details</h1>

<%  

String fullName = request.getParameter("fullName"); 
String email = request.getParameter("email"); 
String address = request.getParameter("address"); 
String city = request.getParameter("city"); 
String state = request.getParameter("state"); 
String zipCode = request.getParameter("zipCode"); 




out.println("<p><span class='label'>Full Name: </span> <span class='value'>" + fullName + "</span></p>");
out.println("<p><span class='label'>Email: </span> <span class='value'>" + email + "</span></p>");
out.println("<p><span class='label'>Address: </span> <span class='value'>" + address + "</span></p>");
out.println("<p><span class='label'>City: </span> <span class='value'>" + city + "</span></p>");
out.println("<p><span class='label'>State: </span> <span class='value'>" + state + "</span></p>");
out.println("<p><span class='label'>Zip Code: </span> <span class='value'>" + zipCode + "</span></p>");


%>


<%
	List<BuyCart> itemList = ByCart.getItems();
	
%>
	

	
	
	
		
		<%
		int subTotal = 0;
		for(BuyCart b: itemList){
			subTotal = subTotal+b.getPprice();
		%>
		
		<h3 style="text-align:center;" class="p-2"><span style="color:blue;">Item Name: </span><%=b.getPname()%></h3>
		<h3 style="text-align:center;" class="p-2"><span style="color:blue;">Price: </span>&#8377;<%=b.getPprice() %></h3>
		
		

<%
		}
%>



 <form style="text-align:center;"> 
 <div class="inputBox"> <span style="color:blue;">Select your preferred payment option:</span> 
 <select name="paymentOption" required> 
 <option value="Phone Pay">Phone Pay</option> 
 <option value="Google Pay">Google Pay</option> 
 <option value="Other UPI Methods">Other UPI Methods</option> 
 <option value="Cash on Delivery">Cash on Delivery</option> 
 </select> 
 </div> 
  
 </form> 



<div class="text-center p-4">
<a target="_blank" href="NewFile1.jsp" class="btn btn-primary" style="width:500px;">Place Order</a>
</div>

</body>
</html>

 