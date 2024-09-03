<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<s:iterator value="users">
		<tr>
			<td><s:property value="key"/>
			<td><s:property value="user.id"/>
			<td><s:property value="user.name"/>
			<td><s:property value="user.email"/>
			<td><s:property value="user.employee.id"/>
			<td><s:property value="user.employee.name"/>
			<td><s:property value="user.employee.email"/>
		</tr>
	</s:iterator>
</table>
</body>
</html>