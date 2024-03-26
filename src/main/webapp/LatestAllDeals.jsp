<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<title>Latest Deals</title>
<link rel="stylesheet" href="Products.css">
<style>
#my {
	-ms-overflow-style: none;
	scrollbar-width: none;
	overflow-y: scroll;
}

#my::-webkit-scrollbar {
	display: none;
}

::-webkit-scrollbar {
	display: none;
}
</style>
</head>
<body>

	<h1 style="text-align: center;">Latest Deals</h1>
	<div class="container-fluid">
		<div class="col-md-22">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-12" id="my">
						<div class="row" style="height: 650px;">
							<div class="product-container"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="dummy.js"></script>
</body>
</html>





