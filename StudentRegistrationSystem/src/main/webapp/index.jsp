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
	<s:url action="adminEnr	ollTest" var="admin"></s:url>
	<s:a href="%{admin}" label="Admin Enroll">Admin Enroll</s:a>
</body>
</html>