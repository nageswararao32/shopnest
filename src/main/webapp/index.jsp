<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" href="LoginStyle.css">
</head>
<body>
		
		<div class="login-box">
		
			<h2>Register Here</h2>
		
		<form action="reg" method="post" >
		
			<div class="user-box">
				<input type="text"  name="uname"  id = "text"  required/> 
				<label>UserName	</label>
			</div>
			
			<div class="user-box">
				<input type="email"  name="myMail"  id = "text"   required/> 
				<label>Email</label>
			</div>
			
			<div class="user-box">
				<input type="password"  name="passWord"  id = "text"  required /> 
				<label>Password	</label>
			</div>
			
			<div>
			<label style="color:white">Gender:</label>
				<input type="radio"  name="gender" id="gen" value="Male" /><label style="color:white" id="gen">Male</label> 
				<input type="radio"  name="gender" id="gen" value="Female" /><label style="color:white" id="gen">Female</label> 
				<input type="radio"  name="gender" id="gen" value="Other" /><label style="color:white" id="gen">Others</label>
			</div>
			<br>
			<div class="user-box">
				<input type="text"  name="address"  id = "text"  required /> 
				<label>Address</label>
			</div>
			
			<div class="user-box" align="center">
			<input  type="submit"  id="btn" value="Register" name="submit" />
			</div>
			
		
		</form>
	
			 <footer> 
      
       		<div> 
               <a href="login.jsp" >Already Registered? Sign In </a>	 
            </div> 
      
      	</footer>
	</div>
	
</body>
</html>