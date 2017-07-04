<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tao For Fun - User Account</title>

<%
	String path = request.getContextPath();
%>
<link href="<%=path%>/taoforfun/css/user.css" rel="stylesheet">
</head>
<body>

<div id="nav">
	<img src="<%=path%>/taoforfun/img/testGIF.gif" alt="testGIF" style="width:100px;height:100px;"/>
	<ul>
		<li>UserName</li>
		<li><a href="getUserHomePro" class="active">Home</a></li>
		<li><a href="getUserProfilePro" class="active">Profile</a></li>
		<li><a href="getUserAccountPro" class="active">Account</a></li>
		<li><a href="getUserPermissionPro" class="active">Permissions</a></li>
		<li><a href="logoutPro" class="active">Log out</a></li>
	</ul>
</div>

<div id="section">	
	<form action="" method="get">
		<p>Old Password<input type="password" name="password"/></p>
		<p>New Password<input type="password" name="newpassword"/></p>
		<p>Confirm New Password<input type="password" name="newpassword"/></p>
		<p><input type="submit" value="Change Password"/>
	</form>
	<a href="">forget the old password</a>
	
	<form action="" method="get">
		<input type="submit" value="Delete Account"/>
	</form>
	<p>Warning: This operation cannot be undone!</p>
</div>


</body>
</html>