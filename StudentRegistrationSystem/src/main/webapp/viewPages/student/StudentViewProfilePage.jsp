<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/student_view_profile.css">


<style>
	table, tr, td {
  		border: 1px solid white;
  		border-collapse: collapse;
	}
	tr, td {
  		background-color: #96D4D4;
  		padding: 15px;
	}
</style>
</head>
<body>
	<h1>Academic Information</h1>
	<div class="container">
		<div class="border">
				<table>
					<tr>
						<td>
							Student card ID
						</td>
						<td>
							<s:property value="student.cardId"/>
						</td>
					</tr>
					<tr>
						<td>
							Name
						</td>
						<td>
							<s:property value="student.name"/>
						</td>
					</tr>
					<tr>
						<td>
							Roll number
						</td>
						<td>
							<s:property value="student.rollNo"/>
						</td>
					</tr>
					<tr>
						<td>
							Major
						</td>
						<td>
							<s:property value="student.major"/>
						</td>
					</tr>
					<tr>
						<td>
							Academic year
						</td>
						<td>
							<s:property value="student.academicYear"/>
						</td>
					</tr>
					<tr>
						<td>
							NRC
						</td>
						<td>
							<s:property value="student.nrc.stateNumber + student.nrc.township + 
													student.nrc.nationality + student.nrc.number "/>
						</td>
					</tr>
					<tr>
						<td>
							Address
						</td>
						<td>
							<s:property value="student.address"/>
						</td>
					</tr>
					<tr>
						<td>
							Gender
						</td>
						<td>
							<s:property value="student.gender"/>
						</td>
					</tr>
					<tr>
						<td>
							Phone number
						</td>
						<td>
							<s:property value="student.phoneNumber"/>
						</td>
					</tr>
					<tr>
						<td>
							Email
						</td>
						<td>
							<s:property value="student.email"/>
						</td>
					</tr>
					<tr>
						<td>
							Date of birth
						</td>
						<td>
							<s:property value="student.dateOfBirth.year + '-' + student.dateOfBirth.month + '-' + student.dateOfBirth.day"/>
						</td>
					</tr>
					<tr>
						<td>
							Religion
						</td>
						<td>
							<s:property value="student.religion"/>
						</td>
					</tr>
					<tr>
						<td>
							Nationality
						</td>
						<td>
							<s:property value="student.nationality"/>
						</td>
					</tr>
				</table>
				<table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           	<tr style="font-weight:bold">
		           		<td style="text-align:center">Academic Year</td>
		           		<td style="text-align:center">Roll No</td>
		           	</tr>
		          	<s:iterator value="%{student.academicRecords}">
		          		<tr style="text-align: center;">
		          			<td><s:property value="%{academicYear}"/>
		          			<td><s:property value="%{rollNo}"/>
		          		</tr>
		          	</s:iterator>
		       	</table>
							
		</div>
	</div>
</body>
</html>