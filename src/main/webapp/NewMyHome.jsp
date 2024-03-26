<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>    
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<input id="myInput" type="text"  name="ProductName"  placeholder="Search..">
<br><br>

<table>
  <thead>
  
    <tr>
	<th>ProductName</th>
	<th>ProductImage</th>
	<th>ProductDesc</th>
	<th>ProductPrice</th>
	</tr>
  
  </thead>
  <tbody id="myTable">
  <%   
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "eswar");
			
			Statement st = conn.createStatement();
			
			String name = (request.getParameter("ProductName"));
			
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
	
  </tbody>
</table>
  
<p>Note that we start the search in tbody, to prevent filtering the table headers.</p>

</body>
</html>
    