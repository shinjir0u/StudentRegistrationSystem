<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
	<h2>Success!!</h2>
	<table>
	<s:iterator value="users" var="usersElement">
		<s:set var="usersKey" value="#usersElement.key"/>
		<s:set var="usersValue" value="#usersElement.value"/>
		<tr>
			<td><s:property value="#usersKey"/></td>
			<td><s:property value="#usersValue.id"/></td>
			<td><s:property value="#usersValue.name"/></td>
			<td><s:property value="#usersValue.email"/></td>
		</tr>
	</s:iterator>
	</table>
</body>
</html>