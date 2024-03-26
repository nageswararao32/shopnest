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

<nav class="navbar navbar-light" style="background-color:#dbdfe5;border-radius:30px;">

	<div class="flex-container">
        <div class="column">
        	<a href="Electronics.jsp" class="active nav-link"> 
   	  		<img alt="img1" src="https://rukminim2.flixcart.com/flap/128/128/image/69c6589653afdb9a.png?q=100" style="width:100px; height:100px;"> 
     			<h3 class="navbar-brand mb-0 p">Electronics</h3></a>
        </div>
        <div class="column bg-alt">
        <a href="SmartPhones.jsp" class="active nav-link"> 
   	  		<img alt="img1" src="https://rukminim2.flixcart.com/flap/128/128/image/22fddf3c7da4c4f4.png?q=100" style="width:100px; height:100px;"> 
     			<h3 class="navbar-brand mb-0 p">SmartPhones</h3></a>
        </div>
        
        
        <div class="column bg-alt">
        <a href="HomeFurnitures.jsp" class="active nav-link"> 
   	  		<img alt="img1" src="https://rukminim2.flixcart.com/flap/128/128/image/0ff199d1bd27eb98.png?q=100" style="width:100px; height:100px;"> 
     			<h3 class="navbar-brand mb-0 p">Home&Furniture</h3></a>
        </div>
        
        <div class="column bg-alt">
        <a href="Groceries.jsp" class="active nav-link"> 
   	  		<img alt="img1" src="https://rukminim2.flixcart.com/flap/128/128/image/29327f40e9c4d26b.png?q=100" style="width:100px; height:100px;"> 
     			<h3 class="navbar-brand mb-0 p">Grocery</h3></a>
        </div>
        
        <div class="column bg-alt">
        <a href="Fashions.jsp" class="active nav-link"> 
   	  		<img alt="img1" src="https://rukminim2.flixcart.com/fk-p-flap/128/128/image/0d75b34f7d8fbcb3.png?q=100" style="width:100px; height:100px;"> 
     			<h3 class="navbar-brand mb-0 p">Fashions</h3></a>
        </div>
        
    </div> 
  
  
</nav>

</body>
</html>



