<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
<style type="text/css">
b{color:navy; background-color: orange;}  
</style>

</head>
<body>
<div align="center">
	<h2>Crate User Account by filling the following Information!</h2><b>
   	<s:form  action="addUser">
    <s:textfield name="name" label="User Name" size="30"/>
    <s:password name="pwd" label="Password" size="30"/>
  		<s:submit value="Register"></s:submit>
  		</s:form>
	</b>
</div>
</body>
</html>