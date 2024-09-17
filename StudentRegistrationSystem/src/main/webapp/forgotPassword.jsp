<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forgot_password.css">
</head>
<body>
	<div class="container">
		<s:form>
			<s:label>Enter your email and student card ID</s:label>
			<s:textfield name="email" label="Email"/>
			<s:textfield name="email" label="Student card id"/>
			<s:submit value="Confirm" id="btn"/>
			<s:submit value="Back" id="back-btn"/>
		</s:form>
	</div>
</body>
</html>