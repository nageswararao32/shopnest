<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Page</title>
</head>
<body>
    
<table border="2">

	<tr>
	<th>ProductName</th>
	<th>ProductImage</th>
	<th>ProductDesc</th>
	<th>ProductPrice</th>
	</tr>
	
	
	<%   
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "eswar");
			
			Statement st = conn.createStatement();
			
			String name = (request.getParameter("ProductName")).toLowerCase();
			
			String result = name.substring(0,5);
			
			String sql = "SELECT *FROM products WHERE Pname Like '%"+result+"%'";
			
			ResultSet rs = st.executeQuery(sql);

			boolean hasValue = false;
			while(rs.next()){
				hasValue = true;
				%>
				<tr>
					<td><%= rs.getString("Pname") %></td>
					<td>
					<img alt="Product" src="MyPhotos/<%= rs.getString("Pimg") %>" style="height:250px; padding:10px 20px 10px 20px;">
					</td>
					<td><%= rs.getString("Pdesc") %></td>
					<td><%= rs.getInt("Pprice") %></td>
				</tr>
				<%
			}
			if(!hasValue){
				response.sendRedirect("ErrorPage.jsp");
			}
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("Problem while Fetching");
		}
	
	%>
	

</table>

</body>
</html>