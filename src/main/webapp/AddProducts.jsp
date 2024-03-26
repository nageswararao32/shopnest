<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Products Information</title>
<link rel="stylesheet" href="AddProductsStyles.css">
</head>
<body>

	<div class="login-box">
		
			<h2>Add Product Information</h2>
			
			<form action="addProduct" method="post" >
			
				<div class="user-box">
					<input type="text" id="product-id" name="product-id" required>
					<label>Product ID:</label>
				</div>
				
				<div class="user-box">
					<input type="text" id="product-name" name="product-name" required>
					<label>Product Name:</label>
				</div>
				
				<div class="user-box">
					<input type="text" id="product-Description" name="product-description" required>
					<label>Product Description:</label>
				</div>
				
				<div class="user-box">
					<input type="text" id="product-Price" name="product-price" required>
					<label>Product Price:</label>
				</div>
				
				<div class="user-box">
					<input type="text" id="product-Image" name="product-image" required>
					<label>Product Image File Name:</label>
				</div>					
				
				<div class="user-box" align="center">
					<input  type="submit"  id="btn" value="AddProduct" name="submit" />
				</div>
								
			</form>		
	</div>				


</body>
</html>



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	