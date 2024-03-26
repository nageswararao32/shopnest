<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>


<%

String Usname = (String) session.getAttribute("uname");

%>

<div class="dropdown">
    <a href="#" data-toggle="dropdown" class="dropdown-toggle user-action">
		<img src="MyPhotos/Profile1.png" class="avatar" alt="Avatar" style="width:40px; height:40px;"><%= Usname %>
		<b class="caret"></b>
		</a> 
    <ul class="dropdown-menu">
      <li><a class="dropdown-item" href="#">Link 1</a></li>
      <li><a class="dropdown-item" href="#">Link 2</a></li>
      <li><a class="dropdown-item" href="#">Link 3</a></li>
    </ul>
  </div>


</body>
</html>