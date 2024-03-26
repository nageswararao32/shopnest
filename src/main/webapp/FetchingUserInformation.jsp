<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.ShopNest.DbHandler.FetchingUserInfo" %>
<%@ page import="java.util.List" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
div{
text-align:center;
padding:20px 30px 20px 30px;
margin-top:10px;
}
table {
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
<title>Fetching User Information</title>
</head>
<body>


<%
		
		List userList = FetchingUserInfo.fetchUserInformation();
		
		%>


				<div>
					
					<table>
						
						<thead>
							
							<tr>
								<th>UserName</th>
								<th>Email</th>
								<th>Gender</th>
								<th>Address</th>
							
							</tr>
						</thead>	
						
							<tbody>
							
								<% 
								
								for(int i=0;i<userList.size();i++){
									String []custArr = ((String)userList.get(i)).split(":"); 
								
								
								%>
								
								<tr>
								
									<td><%= custArr[0] %></td>
									<td><%= custArr[1] %></td>
									<td><%= custArr[2] %></td>
									<td><%= custArr[3] %></td>
								
								</tr>
								
								<% 
								    }	
								%>
								
								<tr>
								
								</tr>
								
							</tbody>
					
					</table>
				
				</div>


</body>
</html>