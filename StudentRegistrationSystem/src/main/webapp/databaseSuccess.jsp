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
hell

<!--  <table>

	<s:iterator value="users">
		<tr>
			<td><s:property value="user.id"/>
			<td><s:property value="user.name"/>
			<td><s:property value="user.email"/>
			<td><s:property value="user.employee.id"/>
			<td><s:property value="user.employee.name"/>
			<td><s:property value="user.employee.email"/>
		</tr>
	</s:iterator> -->	

<table>
	<tr>
		<td>
	</tr>
	<s:iterator value="students">         			
		<tr>
			<td><s:property value="student.name" />
			<td><s:property value="student.cardId" />
			<td><s:property value="student.rollNo" />
			<td><s:property value="student.major" />
			<td><s:property value="student.currentYear" />
			<td><s:property value="student.academicYear" />
			<td><s:property value="student.phoneNumber" />
			<td><s:property value="student.email" />
			<td><s:property value="student.gender" />
			<td><s:property value="student.township" />
			<td><s:property value="student.address" />
			<td><s:property value="student.dateOfBirth.day" />
			<td><s:property value="student.dateOfBirth.month" />
			<td><s:property value="student.dateOfBirth.year" />
			<td><s:property value="student.religion" />
			<td><s:property value="student.nationality" />
			<td><s:property value="student.nrc.stateNumber" />
			<td><s:property value="student.nrc.nationality" />
			<td><s:property value="student.nrc.township" />
			<td><s:property value="student.nrc.number" />
			<td><s:property value="student.guardian.name" />
			<td><s:property value="student.guardian.type" />
			<td><s:property value="student.guardian.phoneNumber" />
			<td><s:property value="student.guardian.email" />
			<td><s:property value="student.guardian.gender" />
			<td><s:property value="student.guardian.township" />
			<td><s:property value="student.guardian.address" />
			<td><s:property value="student.guardian.religion" />
			<td><s:property value="student.guardian.nationality" />
			<td><s:property value="student.guardian.nrc.stateNumber" />
			<td><s:property value="student.guardian.nrc.nationality" />
			<td><s:property value="student.guardian.nrc.township" />
			<td><s:property value="student.guardian.nrc.number" />
			<td><s:property value="student.guardian.dateOfBirth.day" />
			<td><s:property value="student.guardian.dateOfBirth.month" />
			<td><s:property value="student.guardian.dateOfBirth.year" />
		</tr>
	</s:iterator> 
</table>
                	
</body>
</html>