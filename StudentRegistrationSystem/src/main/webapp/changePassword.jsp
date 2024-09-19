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
		<s:form action="changePasswordFinalize">
			<s:label>Change your password</s:label>
			<s:hidden name="studentCardId" value="%{studentCardId}" />
			<s:password name="newPassword" label="New password"/>
			<s:password name="retypeNewPassword" label="Retype new password"/>
			<s:submit name="action" value="Confirm" id="btn"/>
			<s:submit name="action" value="Back" id="back-btn"/>
		</s:form>
	</div>
</body>
</html>