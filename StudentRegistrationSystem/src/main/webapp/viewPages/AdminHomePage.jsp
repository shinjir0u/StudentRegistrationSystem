<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>Admin Home Page</title>
	<link type="text/css" rel="stylesheet" href="..\css\baseTemplate.css">
</head>
<body>
    <div class="container">
     	<h1>Home</h1> <!-- Any Suitable name for the header -->     
        <div class="panel">
            <div class="menu">
                <s:form action="checkAction" method="post">
                    <button type="submit">Check</button>
                </s:form>
                <s:form action="insertAction" method="post">
                    <button type="submit">Insert</button>
                </s:form>
                <s:form action="searchAction" method="post">
                    <button type="submit">Search</button>
                </s:form>
                <s:form action="searchAction" method="post">
                    <button type="submit">Upload News</button>
                </s:form>
                <s:form action="searchAction" method="post">
                    <button type="submit">Settings</button>
                </s:form>
                <s:form action="searchAction" method="post">
                    <button type="submit">Logout</button>
                </s:form>
            </div>
            <div class="content">
            	<h2>Welcome, (admin name)</h2>
                <!-- This is where the content for each action would be displayed -->
                <p><i>Select an action to appear on this content.</i></p>
            </div>
        </div>
    </div>
</body>
</html>
