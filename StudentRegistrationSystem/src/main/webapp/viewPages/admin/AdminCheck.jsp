<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link rel="stylesheet" href="../../css/table.css" >
			<h1>Check student page</h1>
            <div class="container">
			<div class="table">
            	<s:iterator value="students">
            		<s:set var="student" value="value"/>
            		<div class="table-row">	
            			<div class="table-data">
            				Name: <s:property value="#student.name"/><br>
            				Major: <s:property value="#student.major"/><br>
            				<s:url action="showDetails" var="showDet"/>
							<s:a href="%{showDet}"><b>Show Details</b></s:a><br>
            			</div>
            		</div>
            	</s:iterator>
            </div>
            </div>