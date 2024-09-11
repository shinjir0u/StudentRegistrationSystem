<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="../../css/login.css">
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
		<div class="wrapper">
			<div class="login-box">
				<div class="login-title">
					<h2>Login</h2>
					<p>Please login to use the platform.</p>
				</div>
				
				<form action="#">
					<div class="input-box">
						<span class="icon">
							<i class='bx bxs-envelope'></i>
						</span>
						<s:textfield name="email"/>
						<label>Email</label>
					</div>
					<div class="input-box">
						<span class="icon">
							<i class='bx bxs-lock-alt' ></i>
						</span>
						<s:textfield name="password" type="password"/>
						<label>Password</label>
					</div>
					
					<div class="remember-forgot">
						<label><input type="checkbox">Remember me</label>
						<a href="#">Forgot Password?</a>
					</div>
					
					<s:form action="login" method="post">
						<s:submit>Login</s:submit>
					</s:form>
					
					<div class="logreg-link">
						<p>Don't have an account? 
						<a href= "#" class="register-link"> 
							Register
						</a>
						</p>
					</div>
				</form>
			</div>
		</div>
</body>
</html>