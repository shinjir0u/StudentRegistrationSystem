<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/student_view_profile.css">
</head>
<body>
	<h1>Academic Information</h1>
	<div class="container">
		<div class="border">
				<table style="width:100%">
					<tr>
						<td>
							Student card ID
						</td>
						<td>
							1001
						</td>
					</tr>
					<tr>
						<td>
							Name
						</td>
						<td>
							Victoria
						</td>
					</tr>
					<tr>
						<td>
							Roll number
						</td>
						<td>
							IV CEIT 23
						</td>
					</tr>
					<tr>
						<td>
							Major
						</td>
						<td>
							CEIT
						</td>
					</tr>
					<tr>
						<td>
							Academic year
						</td>
						<td>
							2023-2024
						</td>
					</tr>
				</table>
				<br>
				<s:form action="academicRecord">
					<button type="submit" id="btn">View Academic Records</button>
				</s:form>
							
		</div>
	</div>
</body>
</html>