<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
    <!-- <tiles:insertDefinition name="login"/> -->
    <s:url action="adminRetrieveTest" var="retrieve"></s:url>
    <s:a href="%{retrieve}">Retrieve</s:a>
</body>
</html>