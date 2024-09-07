<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
=======
<%@ taglib uri="/struts-tags" prefix="s" %>
>>>>>>> main
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<<<<<<< HEAD

=======
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
	<s:set var="student" value="value"></s:set>	
	<s:set var="studentDate" value="#student.dateOfBirth"></s:set>
	<s:set var="studentNrc" value="#student.nrc"></s:set>
	<s:set var="guardian" value="#student.guardian"></s:set>
	<s:set var="guaridanNrc" value="#guardian.nrc"></s:set>
	<s:set var="guardianDate" value="#guardian.dateOfBirth"></s:set>
		<tr>
			<td><s:property value="key"/>
			<td><s:property value="#student.name" />
			<td><s:property value="#student.cardId" />
			<td><s:property value="#student.rollNo" />
			<td><s:property value="#student.major" />
			<td><s:property value="#student.currentYear" />
			<td><s:property value="#student.academicYear" />
			<td><s:property value="#student.phoneNumber" />
			<td><s:property value="#student.email" />
			<td><s:property value="#student.gender" />
			<td><s:property value="#student.township" />
			<td><s:property value="#student.address" />
			<td><s:property value="#studentDate.day" />
			<td><s:property value="#studentDate.month" />
			<td><s:property value="#studentDate.year" />
			<td><s:property value="#student.religion" />
			<td><s:property value="#student.nationality" />
			<td><s:property value="#studentNrc.stateNumber" />
			<td><s:property value="#studentNrc.nationality" />
			<td><s:property value="#studentNrc.township" />
			<td><s:property value="#studentNrc.number" />
			<td><s:property value="#guardian.name" />
			<td><s:property value="#guardian.type" />
			<td><s:property value="#guardian.phoneNumber" />
			<td><s:property value="#guardian.email" />
			<td><s:property value="#guardian.gender" />
			<td><s:property value="#guardian.township" />
			<td><s:property value="#guardian.address" />
			<td><s:property value="#guardian.religion" />
			<td><s:property value="#guardian.nationality" />
			<td><s:property value="#guardianNrc.stateNumber" />
			<td><s:property value="#guardianNrc.nationality" />
			<td><s:property value="#guardianNrc.township" />
			<td><s:property value="#guardianNrc.number" />
			<td><s:property value="#guardianDate.day" />
			<td><s:property value="#guardianDate.month" />
			<td><s:property value="#guardianDate.year" />
		</tr>
	</s:iterator> 
</table>
                	
>>>>>>> main
</body>
</html>