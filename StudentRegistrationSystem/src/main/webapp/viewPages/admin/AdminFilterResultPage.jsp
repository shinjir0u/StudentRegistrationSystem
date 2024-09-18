<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link rel="stylesheet" href="../../css/table.css" >
			<h1>Filtered student page</h1>
            <div class="container">
			<div class="table">
            	<s:iterator value="students">
            		<s:set var="student" value="value"/>
            		<div class="table-row">	
            			<div class="table-data">
            				<s:form action="showFilteredStudentDetails">
            					<s:hidden name="order" value="%{key}"></s:hidden>
            					Name: <s:property value="#student.name"/><br>
            					Major: <s:property value="#student.major"/><br>
            					Current Year: <s:property value="#student.currentYear"/><br>
            					<s:submit value="submit"></s:submit>            				
            				</s:form>
            			</div>
            		</div>
            	</s:iterator>
            </div>
            </div>