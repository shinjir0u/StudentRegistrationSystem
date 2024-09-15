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
					<tr>
						<td>
							NRC
						</td>
						<td>
							12/DaGaTa(N)343435
						</td>
					</tr>
					<tr>
						<td>
							Address
						</td>
						<td>
							Ahlone township,Yangon
						</td>
					</tr>
					<tr>
						<td>
							Gender
						</td>
						<td>
							Female
						</td>
					</tr>
					<tr>
						<td>
							Phone number
						</td>
						<td>
							09434334343
						</td>
					</tr>
					<tr>
						<td>
							Email
						</td>
						<td>
							vitoria@gmail.com
						</td>
					</tr>
					<tr>
						<td>
							Date of birth
						</td>
						<td>
							04-03-1999
						</td>
					</tr>
					<tr>
						<td>
							Religion
						</td>
						<td>
							Buddha
						</td>
					</tr>
					<tr>
						<td>
							Nationality
						</td>
						<td>
							Burmese
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