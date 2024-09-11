<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>  
            <table>
            	<tr>
            		<td>
            		Student 1 Name:<br>
            		Major:<br>
            		Year:<br>
            		Submitted date:<br>
            		<s:url action="showDetailsAction" var="showDet"/>
					<s:a href="%{showDet}"><b>Show Details</b></s:a><br>
            		</td>
            	</tr>
            	<tr>
            		<td>
            		Student 2 Name:<br>
            		Major:<br>
            		Year:<br>
            		Submitted date:<br>
            		<s:url action="showDetailsAction" var="showDet"/>
					<s:a href="%{showDet}"><b>Show Details</b></s:a><br>
            		</td>
            	</tr>
            	<tr>
            		<td>
            		Student 3 Name:<br>
            		Major:<br>
            		Year:<br>
            		Submitted date:<br>
            		<s:url action="showDetailsAction" var="showDet"/>
					<s:a href="%{showDet}"><b>Show Details</b></s:a><br>
            		</td>
            	</tr>
            </table>