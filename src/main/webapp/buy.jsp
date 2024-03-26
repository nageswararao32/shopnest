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
<title>BuyNow Page</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>



<link rel="stylesheet" href="BuyNowStyles.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="Home.jsp">
     <img src="https://mir-s3-cdn-cf.behance.net/projects/404/8ad593164352615.Y3JvcCwxMTQ1LDg5NiwxNDQsMTk.jpg" alt="logo"  width="100" height="100"  style="border-radius:50px;">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a   style="color: orange;"    class="nav-link active" aria-current="page" href="Home.jsp">
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
		
		<h6 style="text-align:center;"><span style="color:blue;">Total Bill: </span><%=subTotal %></h6>

<%
		}
%>




<div class="p-4">
<div class="container">

    <form action="BuyNow1.jsp" method="post">

        <div class="row">

            <div class="col">

                <h3 class="title">billing address</h3>

                <div class="inputBox">
                    <span>full name :</span>
                    <input type="text" placeholder="john deo" name="fullName" required>
                </div>
                <div class="inputBox">
                    <span>email :</span>
                    <input type="email" placeholder="example@example.com"  name="email" required>
                </div>
                <div class="inputBox">
                    <span>address :</span>
                    <input type="text"   name="address" placeholder="room - street - locality" required>
                </div>
                <div class="inputBox">
                    <span>city :</span>
                    <input type="text" name="city" placeholder="mumbai" required>
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>state :</span>
                        <input type="text" name="state" placeholder="india" required>
                    </div>
                    <div class="inputBox">
                        <span>zip code :</span>
                        <input type="text" name="zipCode" placeholder="123 456" required>
                    </div>
                </div>

            </div>

            <div class="col">

                <h3 class="title">payment</h3>

                <div class="inputBox">
                    <span>cards accepted :</span>
                    <img src="MyPhotos/card_img.png" alt="">
                </div>
                <div class="inputBox">
                    <span>name on card :</span>
                    <input type="text"  name="nameOnCard"  placeholder="mr. john deo">
                </div>
                <div class="inputBox">
                    <span>credit card number :</span>
                    <input type="number" name="creditCardNumber" placeholder="1111-2222-3333-4444" required>
                </div>
                <div class="inputBox">
                    <span>exp month :</span>
                    <input type="text" name="expMonth" placeholder="january">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>exp year :</span>
                        <input type="number" name="expYear" placeholder="2022">
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text"  name="cvv" placeholder="1234">
                    </div>
                </div>

            </div>
    
        </div>

        <input type="submit" value="proceed to checkout" class="submit-btn">
		
    </form>
</div> 


</div>
</body>
</html>

