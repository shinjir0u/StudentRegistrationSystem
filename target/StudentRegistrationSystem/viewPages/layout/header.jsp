<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Header</title>
	<link rel="stylesheet" href="../../css/header.css">
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	<!-- <script>
		let subMenu= document.getElementById("subMenu");

		functin toggleMenu(){
			subMenu.classList.toggle("open-menu");
		}
	</script> -->
</head>
<body>
	<div class="myHeader">
		<div class="section">
			<img src="D:\j2ee-Year4-Sem2-workspace-ett\StudentRegistrationSystem_TestingTiles\
			src\main\webapp\resources\images\logo.PNG" 
			class="logo"/>
		</div>
		<nav>
			<ul>
				<li><button type="submit" class="btn">Check</button></li>
				<li><button type="submit" class="btn">Insert</button></li>
				<li><button type="submit" class="btn">Search</button></li>
				<li><button type="submit" class="btn">Upload News</button></li>
			</ul>
			<img src="D:\j2ee-Year4-Sem2-workspace-ett\StudentRegistrationSystem_TestingTiles\
			src\main\webapp\resources\images\user.png" 
			class="user-pic" onClick="toggleMenu()">
			
			<div class="sub-menu-wrap" id="subMenu">
			<div class="sub-menu">
				<div class="user-info">
					<img src="D:\j2ee-Year4-Sem2-workspace-ett\StudentRegistrationSystem_TestingTiles\src\main\webapp\resources\images\user.png">
					<h2>Eaint Thet Tun</h2>
				</div>
				<hr>
				
				<a href="#" class="sub-menu-link">
					<img src="D:\j2ee-Year4-Sem2-workspace-ett\StudentRegistrationSystem_TestingTiles\src\main\webapp\resources\images\profile.png">
					<p>Edit Profile</p>
					<span>></span>
				</a>
				<a href="#" class="sub-menu-link">
					<img src="D:\j2ee-Year4-Sem2-workspace-ett\StudentRegistrationSystem_TestingTiles\src\main\webapp\resources\images\setting.png">
					<p>Settings & Privacy</p>
					<span>></span>
				</a>
				<a href="#" class="sub-menu-link">
					<img src="D:\j2ee-Year4-Sem2-workspace-ett\StudentRegistrationSystem_TestingTiles\src\main\webapp\resources\images\help.png">
					<p>Help & Support</p>
					<span>></span>
				</a>
				<a href="#" class="sub-menu-link">
					<img src="D:\j2ee-Year4-Sem2-workspace-ett\StudentRegistrationSystem_TestingTiles\src\main\webapp\resources\images\logout.png">
					<p>Logout</p>
					<span>></span>
				</a>
			</div>
			</div>
		</nav>
	</div>
</body>
</html>