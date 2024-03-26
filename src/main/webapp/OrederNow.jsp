<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<html>
<head>
<style>
/* Style the progress bar */
.progress {
  width: 100%;
  background-color: #ddd;
}

/* Style the progress bar value */
.value {
  height: 20px;
  background-color: green;
  text-align: center;
  line-height: 20px;
  color: white;
}
</style>
<script>
// Function to update the progress bar value
function updateProgress(value) {
  var bar = document.getElementById("bar");
  bar.style.width = value + "%";
  bar.innerHTML = value + "%";
}
</script>
</head>
<body>
<h1>Delivery Status</h1>
<% 
// Get the product type and delivery days from the request parameters
String product = "electronics";
int days = 2;

// Set the progress bar value based on the delivery days
int progress = 0;
if (days == 0) {
  progress = 100;
} else if (days == 1) {
  progress = 75;
} else if (days == 2) {
  progress = 50;
} else if (days == 3) {
  progress = 25;
}

// Display different animations based on the product type
switch (product) {
  case "electronics":
    out.println("<img src='electronics.gif' alt='Electronics' width='300' height='300'>");
    break;
  case "grocery":
    out.println("<img src='grocery.gif' alt='Grocery' width='300' height='300'>");
    break;
  case "fashion":
    out.println("<img src='fashion.gif' alt='Fashion' width='300' height='300'>");
    break;
}
%>
<!-- Display the progress bar -->
<div class="progress">
  <div id="bar" class="value"><%=progress%>%</div>
</div>
<script>
// Update the progress bar every second
setInterval(function() {
  // Get the current progress value
  var value = parseInt(document.getElementById("bar").innerHTML);
  
  // If the value is less than 100, increment it by one
  if (value < 100) {
    value++;
    updateProgress(value);
  }
}, 1000);
</script>
</body>
</html>
