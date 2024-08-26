<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.labell  {
		font-weight: bold;
		font-size: 10px;
	}
	.textt  {
		font-weigth: normal;
		font-size: 50px;
	}
</style>
</head>
<body>
<s:form>
	<s:label class="labell" label="text"/>
	<s:textfield class="textt" label="extill"></s:textfield>
</s:form>

</body>
</html>