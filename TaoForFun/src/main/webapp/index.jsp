<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>TaoForFun</title>

<%
	String path = request.getContextPath();
%>
<link href="<%=path%>/taoforfun/css/home.css" rel="stylesheet">
</head>

<body>
<div id="logo">
	<p>Tao For Fun!</p>
</div>
<div id="centraltitle">
	<h2>TaoForFun Project</h2>
</div>

<div id="loginform">
	<form action="loginPro" method="get">
		<p>UserName<input type="text" name="username"/></p>
		<p>Password<input type="password" name="password"/></p>
		<input type="submit" value="login"/>
	</form>
</div>
<br><br><br><br><br>
<br><br><br><br><br>
<div id="ps">
<a href="">forget password?</a>
<a href="<%=path%>/taoforfun/jsp/register.jsp">register now!</a>
</div>
</body>
</html>
