<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.ShopNest.DbHandler.FetchingUserInfo" %>
<%@ page import="java.util.List" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Arrivals</title>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</head>
<body>


<div class="container-fluid">
 <div class="col-md-22">
 <div class="row">
 <div class="col-md-12">
 <h1 class="text-center" style="padding:5px 10px 5px 10px; color:blue;">New Arrivals</h1>
 <div class="col-md-22">
 <div class="row" style="height:470px;">
 
	<%
	List prodList = FetchingUserInfo.fetchProductsInformation();
	
	%>
	
	
	<% 
	String[] prodArr2 = null;
	for(int i=0;i<prodList.size();i++){
		String[] prodArr = ((String)prodList.get(i)).split(":");
		prodArr2=prodArr;
		
	
	%>

 	
		 
		 
 		<div class="col-md-4" style="padding:10px 20px 10px 20px; width:350px;">
 		<div class="card" >
 		<h6 class="text-white p-2 bg-info text-uppercase">
 		<%= prodArr[1]%>
 		</h6>
		<img src="MyPhotos/<%= prodArr[4]%>"  alt="product1" style="height:250px; padding:10px 20px 10px 20px;" />					
			<h6 class="text-center">Price: &#8377;<%= prodArr[3]%></h6>
				<span class="text-center">Discount: (50% off)</span>
				<h6 class="text-center p-2"><span class="badge bg-success">4.4 <ion-icon name="star-half-outline"></ion-icon></span></h6>
				</div>
					<form action="add" method="post" class="text-center">
					<div class="btn-group d-flex">
						<a target="_blank" class="btn btn-success flex-fill" href="addServlet?productId=<%=Integer.parseInt(prodArr[0])%>">ADDTOCART</a><a target="_blank" class="btn btn-warning flex-fill" href="login.jsp">BUYNOW</a>
					</div>
					</form>
					</div>
					
					
					
	
					
<% 
	}
%>


 </div>
 </div>
 </div>
 </div>
 </div> 
  </div>


</body>
</html>




