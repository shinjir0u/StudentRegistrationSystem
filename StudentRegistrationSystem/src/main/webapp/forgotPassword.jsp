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
		<s:form action="changePassword">
			<s:label>Enter your email and student card ID</s:label>
			<s:textfield name="email" label="Email"/>
			<s:textfield name="studentCardId" label="Student card id"/>
			<s:submit name="action" value="Confirm" id="btn"/>
			<s:submit name="action" value="Back" id="back-btn"/>
		</s:form>
	</div>
</body>
</html>