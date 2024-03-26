<%@ page import="java.sql.Connection " %>
<%@ page import="com.ShopNest.DbHandler.FetchingUserInfo" %>
<%@ page import="java.util.List" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetching Product Information</title>
<style>
div{
text-align:center;
padding:20px 30px 20px 30px;
margin-top:10px;
}
table{
  border:2px solid black;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #DDD;
}

tr:hover {
background-color: #D6EEEE;
}
</style>
</head>
<body>

	<%
	List prodList = FetchingUserInfo.fetchProductsInformation();
	%>
						<div>
						
							<table>
								
								<thead>
									<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Description</th>
									<th>Price</th>
									<th>Image</th>
									</tr>
								</thead>
								
									<tbody>
									
									
										<% 
										
										for(int i=0;i<prodList.size();i++){
											String []prodArr = ((String)prodList.get(i)).split(":"); 
										
										
										%>
										
										<tr>
										
											<td><%= prodArr[0] %></td>
											<td><%= prodArr[1] %></td>
											<td><%= prodArr[2] %></td>
											<td><%= prodArr[3] %></td>
											<td><img src="MyPhotos/<%= prodArr[4] %>"  alt="product"   width="300" height="300"/></td>
										</tr>
										
										<% 
										    }	
										%>
									
									</tbody>
							
							
							</table>
						
						</div>

</body>
</html>