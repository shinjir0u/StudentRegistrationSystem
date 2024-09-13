<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link rel="stylesheet" href="../../css/table.css" >
			<h1>Check student page</h1>
            <div class="container">
			<div class="table">
            	<div class="table-row">	
            		<div class="table-data">
            		Student 1 Name:<br>
            		Major:<br>
            		Year:<br>
            		Submitted date:<br>
            		<s:url action="showDetails" var="showDet"/>
					<s:a href="%{showDet}"><b>Show Details</b></s:a><br>
            		</div>
            	</div>
            	<div class="table-row">	
            		<div class="table-data">
            		Student 2 Name:<br>
            		Major:<br>
            		Year:<br>
            		Submitted date:<br>
            		<s:url action="showDetails" var="showDet"/>
					<s:a href="%{showDet}"><b>Show Details</b></s:a><br>
            		</div>
            	</div>
            	<div class="table-row">	
            		<div class="table-data">
            		Student 3 Name:<br>
            		Major:<br>
            		Year:<br>
            		Submitted date:<br>
            		<s:url action="showDetails" var="showDet"/>
					<s:a href="%{showDet}"><b>Show Details</b></s:a><br>
            		</div>
            	</div>
            </div>
            </div>