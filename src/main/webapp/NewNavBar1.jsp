<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Section Page - 1</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<style>
.flex-container{
    width: 80%;
    min-height: 100px;
    margin: 0 auto;
    display: -webkit-flex;      
    display: flex; 
}
.flex-container .column{
    padding: 5px;
    
    background: #dbdfe5;
    -webkit-flex: 1; 
    -ms-flex: 1; 
    flex: 1; 
}
.flex-container .column.bg-alt{
    background: #dbdfe5;
    
}
</style>
</head>
<body>

<nav class="navbar navbar-light" style="background-color:#dbdfe5; border-radius:30px;">

	<div class="flex-container">
        <div class="column">
        	<a href="watches.jsp" class="active nav-link"> 
   	  		<img alt="img1" src="https://cdn.dummyjson.com/product-images/63/2.jpg" style="width:100px; height:100px;"> 
     			<h3 class="navbar-brand mb-0 p">Watches</h3></a>
        </div>
        <div class="column bg-alt">
        <a href="shoes.jsp" class="active nav-link"> 
   	  		<img alt="img1" src="https://cdn.dummyjson.com/product-images/60/2.jpg" style="width:100px; height:100px;"> 
     			<h3 class="navbar-brand mb-0 p">Shoes</h3></a>
        </div>
        
        
        <div class="column bg-alt">
        <a href="HandBags.jsp" class="active nav-link"> 
   	  		<img alt="img1" src="https://cdn.dummyjson.com/product-images/73/1.jpg" style="width:100px; height:100px;"> 
     			<h3 class="navbar-brand mb-0 p">Hand Bags</h3></a>
        </div>
        
        <div class="column bg-alt">
        <a href="Homedecors.jsp" class="active nav-link"> 
   	  		<img alt="img1" src="https://cdn.dummyjson.com/product-images/98/1.jpg" style="width:100px; height:100px;"> 
     			<h3 class="navbar-brand mb-0 p">HomeDecorators</h3></a>
        </div>
        
        <div class="column bg-alt">
        <a href="Motor.jsp" class="active nav-link"> 
   	  		<img alt="img1" src="https://cdn.dummyjson.com/product-images/93/1.jpg" style="width:100px; height:100px;"> 
     			<h3 class="navbar-brand mb-0 p">Motors & Accessories</h3></a>
        </div>
        
    </div> 
  
  
</nav>

</body>
</html>



