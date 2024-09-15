<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   	<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/student_nav_bar.css">
</head>
<body>
		<nav>
			<ul>
				<li>
					<s:form action="view" method="post">
						<button type="submit" class="btn">View Profile</button>
					</s:form>
				</li>
				<li>
					<s:form action="enroll" method="post">
						<button type="submit" class="btn">Enroll</button>
					</s:form>
				</li>
				<li>
					<s:form action="contact" method="post">
						<button type="submit" class="btn">Contact</button>
					</s:form>
				</li>
			</ul>
			<img src="resources/images/student-profile-pic.jpg" 
					class="user-pic" onClick="togglemenu()">
			
			<div class="sub-menu-wrap" id="sub-menu-wrap">
			<div class="sub-menu">
				<div class="user-info">
					<img src="resources/images/student-profile-pic.jpg">
					<p>Victoria</p>
				</div>
				<hr>
				
				<a href="#" class="sub-menu-link">
					<img src="resources/images/profile.png">
					Edit Profile
					<span>></span>
				</a>
				<a href="#" class="sub-menu-link">
					<img src="resources/images/setting.png">
					Settings & Privacy
					<span>></span>
				</a>
				<a href="#" class="sub-menu-link">
					<img src="resources/images/help.png">
					Help & Support
					<span>></span>
				</a>
				<a href="#" class="sub-menu-link">
					<img src="resources/images/logout.png">
					Logout
					<span>></span>
				</a>
			</div>
			</div>
	</nav>
	<script>
		let submenu=document.getElementById("sub-menu-wrap");
		function togglemenu(){
			submenu.classList.toggle("open-class");
		}
	</script>
</body>
</html>