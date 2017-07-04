<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tao For Fun - User Permission</title>

<%
	String path = request.getContextPath();
%>

</head>
<body>
<img src="<%=path%>/taoforfun/img/testGIF.gif" alt="testGIF" style="width:100px;height:100px;"/>
<img src="<%=path%>/taoforfun/img/testPNG.png" alt="testPNG" style="width:100px;height:100px;"/>
<img src="<%=path%>/taoforfun/img/testJPG.jpg" alt="testJPG" style="width:100px;height:100px;"/>
<ul>
<li>UserName</li>
<li><a href="getUserHomePro" class="active">Home</a></li>
<li><a href="getUserProfilePro" class="active">Profile</a></li>
<li><a href="getUserAccountPro" class="active">Account</a></li>
<li><a href="getUserPermissionPro" class="active">Permissions</a></li>
<li><a href="logoutPro" class="active">Log out</a></li>
</ul>

<form action="" method="get">
		<p>Name<input type="text" name="username"/></p>
		<p>Age<input type="text" name="age"/></p>
		<p>City<input type="text" name="city"/></p>
		<p>Email<input type="text" name="email"/></p>
		<p>Introduction<input type="text" name="intro"/></p>
		<input type="submit" value="Update"/>
	</form>

</body>
</html>