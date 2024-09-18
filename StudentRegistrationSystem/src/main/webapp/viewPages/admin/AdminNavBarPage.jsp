<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   	<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/admin_nav_bar.css">
</head>
<body>
		<nav>
			<ul>
				<li>
					<s:form action="check" method="post">
						<button type="submit" class="btn">Check</button>
					</s:form>
				</li>
				<li>
					<s:form action="insert" method="post">
						<button type="submit" class="btn">Insert</button>
					</s:form>
				</li>
				<li>
					<s:form action="search" method="post">
						<button type="submit" class="btn">Search</button>
					</s:form>
				</li>
				<li>
					<s:form action="#" method="post">
						<button type="submit" class="btn">Upload News</button>
					</s:form>
				</li>
			</ul>
			
			<img src="resources/images/user.png" 
					class="user-pic" onClick="togglemenu()">
			
			<div class="sub-menu-wrap" id="sub-menu-wrap">
			<div class="sub-menu">
				<div class="user-info">
					<img src="resources/images/user.png">
					<p>Eaint Thet Tun</p>
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
				<a href="logout" class="sub-menu-link">
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