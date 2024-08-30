<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>
	<s:form action="example">
		<s:textfield name="user.id"></s:textfield>
		<s:textfield name="user.name"></s:textfield>
		<s:textfield name="user.email"></s:textfield>
		<s:submit value="add" name="add"></s:submit>
		<s:submit value="show" name="show"></s:submit>
	</s:form>
</body>
</html>