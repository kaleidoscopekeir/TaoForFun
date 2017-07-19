<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.User"%>
<%@ page import="model.Friendapplication"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Tao For Fun - User Home</title>

<%
	String path = request.getContextPath();
%>
<link href="<%=path%>/taoforfun/css/user.css" rel="stylesheet">
</head>
<body>

<%
	User user = new User();
	ArrayList<Friendapplication> applis = new ArrayList<Friendapplication>();
// 	if(request.getSession().getAttribute("user")== null){
// 		response.sendRedirect("homePro");	
// 	}
// 	else{
		user = (User)request.getSession().getAttribute("user");
		if(request.getSession().getAttribute("applis")!=null)
			applis = (ArrayList<Friendapplication>)request.getSession().getAttribute("applis");
%>

<div class="topbar">
<div class="topbody">
<h2 class="title">Tao For Fun!</h2>
<ul class="toplist">
	<li><form id="search">
		<input type="text" name="search" placeholder="search something"/>
		<input type="submit" value="Search"/>
	</form></li>
	<li><a href="getAllWeibosPro" class="active">Weibos  </a></li>
	<li><a href="getUserHomePro" class="active">  Me</a></li>
</ul>
</div>
</div>

<div class="nav">
	<img src="<%=path%>/taoforfun/img/testGIF.gif" alt="testGIF" style="width:100px;height:100px;"/>
	<ul>
<%-- 		<li><%=user.getUsername() %></li> --%>
		<li><a href="getUserHomePro" class="active">Home</a></li>
		<li><a href="getUserProfilePro">Profile</a></li>
		<li><a href="getUserAccountPro">Account</a></li>
		<li><a href="getUserPermissionPro">Permissions</a></li>
		<li><a href="logoutPro">Log out</a></li>
	</ul>
</div>

<div class="section">

	<ul class="tab">
		<li><a href="getMyFriendsPro">Friends</a></li>
		<li><a href="getMyWeibosPro">My Weibos</a></li>
		<li><a href="getMyMessagesPro" class="active">Messages</a></li>
		<li><a href="getMyNoticesPro">Notices</a></li>
	</ul>
<br>
<br>
<div class="section-content">
<div id="dataTables">
	<h2>My Messages</h2>
<%
	for(int i = 0; i < messages.size(); i++){
		Message message = messages.get(i);
%>
<div class="message messForm">
	<div class="section-data-header">
		<p> You have<%= message.getNewMessage()%> new messages.</p>
	</div>
	<div class="section-data-body">
	</div>
	<div class="section-data-footer">
        <form action="replyMessage" method="post">
			<input type="hidden" name="messageid" value="<%=message.getMessageByMessageid() %>"/>
			<input type="submit" value="Message"/>
		</form>
		<form action="checkMessage" method="post">
			<input type="hidden" name="messageid" value="<%=message.getMessageByMessageid() %>"/>
			<input type="submit" value="Visit"/>
		</form>
		</div>
</div>
<% 
	} 
%>
</div>
</div>
</div>

</div>
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<%} %>
</body>
</html>