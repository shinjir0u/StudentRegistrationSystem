<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="css/login.css">
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
		<center>
			<img src="resources\images\logo.PNG" 
			width="80" height="75">
		</center>
		<p><center>Sign in to use the system</center></p>
		<div class="container">
		<div class="panel">			
					<s:form action="login" method="post">
						<s:div class="form-group">
							<s:textfield placeholder="Enter your email" name="email"/>			
						</s:div>
						<s:div class="form-group">
							<s:password placeholder="Enter your password" name="password"/>							
						</s:div>
						<s:submit value="Login" id="btn"/>
					</s:form>
					<br>
					<div class="remember-forgot">
						<label><input type="checkbox">Remember me</label>
						<a href="#">Forgot Password?</a>
					</div>				
		</div>
		</div>
		<div class="small-container">
					<p>Don't have an account? 
						<a href= "#" class="register-link"> 
							Register
						</a>
					</p>
		</div>
</body>
</html>