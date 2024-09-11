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
		<div class="container">
					<h2>Login to your account</h2>	
				<div class="form-group">
					<s:form action="login" method="post">
						<s:textfield cssClass="text-field" placeholder="Email" name="email"/>
						<s:password cssClass="text-field" placeholder="Password" name="password"/>
						<s:submit value="Login" cssClass="btn-login"/>
					</s:form>
					<br><br>
					<div class="remember-forgot">
						<label><input type="checkbox">Remember me</label>
						<a href="#">Forgot Password?</a>
					</div>				
					<div class="logreg-link">
						<p>Don't have an account? 
						<a href= "#" class="register-link"> 
							Register
						</a>
						</p>
					</div>
				</div>
			</div>
</body>
</html>