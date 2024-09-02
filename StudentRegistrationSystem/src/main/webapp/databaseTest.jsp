<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database</title>
</head>
<body>
	<s:form action="databaseTest">
		<s:textfield name="user.id"></s:textfield>
		<s:textfield name="user.name"></s:textfield>
		<s:textfield name="user.email"></s:textfield>
		<s:textfield name="user.employee.id"></s:textfield>
		<s:textfield name="user.employee.name"></s:textfield>
		<s:textfield name="user.employee.email"></s:textfield>
		<s:submit value="submit" name="action"/>
	</s:form>
</body>
</html>