<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewMoreInfoPage</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</head>
<body>

<div class="col-sm-15 text-center">

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
  </div>
  
  <div class="carousel-inner p-2">
    <div class="carousel-item active">
      <a href="SmartPhones.jsp"><img src="MyPhotos/Img1.jpg" class="d-block" alt="Prod1" style="width:100%; height:450px;"></a>
    </div>
    <div class="carousel-item">
     	<a href="SmartPhones.jsp"><img src="MyPhotos/Img2.webp" class="d-block" alt="Prod2" style="width:100%; height:450px;"></a>
    </div>
    <div class="carousel-item">
      <a href="Tshirts.jsp"><img src="MyPhotos/Img3.jpg" class="d-block" alt="Prod3" style="width:100%; height:450px;"></a>
    </div>
    <div class="carousel-item">
      <a href="Groceries.jsp"><img src="MyPhotos/Img4.jpg" alt="Img4" class="d-block" style="width:100%; height:450px;"></a>
    </div>
    <div class="carousel-item">
      <a href="watches.jsp"><img src="MyPhotos/Img5.jpg" alt="Img5" class="d-block" style="width:100%; height:450px;"></a>
    </div>
  </div>
  
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
  
</div>
</div>


</body>
</html>