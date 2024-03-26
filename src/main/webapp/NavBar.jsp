<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NavBar Page</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="MyHome.jsp">
     <img src="https://mir-s3-cdn-cf.behance.net/projects/404/8ad593164352615.Y3JvcCwxMTQ1LDg5NiwxNDQsMTk.jpg" alt="logo"  width="100" height="100"  style="border-radius:50px;">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a   style="color: orange;"    class="nav-link active" aria-current="page" href="MyHome.jsp">
          Home
          </a>
        </li>
        <li class="nav-item" >
          <a   style="color: orange;" class="nav-link active" href="index.jsp">Register</a>
        </li>
        <li class="nav-item" >
          <a   style="color: orange;" class="nav-link active" href="login.jsp">Login</a>
        </li>
        <
		<li>
		<form action="Myfiles.jsp" class="mx-5">
			<input type="text" name="ProductName"  placeholder="Search Products......" style="width:350px; height:40px; border-radius:40px;"   required/>
			<input type="submit" value="Search" class="btn btn-primary"/>
		</form>
		</li>
		</ul>
    </div>
  </div>
</nav>
</body>
</html>