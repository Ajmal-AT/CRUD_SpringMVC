<%@page import="com.demo.test.DTO.Registeration.StudentDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="CSS/home.css">
</head>
<body>
<% 
	StudentDTO data = (StudentDTO) session.getAttribute("student");
	int id = data.getSid();
%>

	<%---top bar--%>
	<div class="container">
		<div class="nav">
			<a href="Home.jsp">Home</a>
			<a href="View.jsp?id=<%= id %>">About Me</a>
			<a href="Login.jsp">Login</a>
			<a href="Logout.jsp">LogOut</a>
			<a href="" style="color:#ffffff; font-size:large; border-radius:8px; background:#6CC417; padding:5px;"><%= data.getSname() %></a><img alt="" src="">
		</div>
	</div>
	
	<%---mid bar--%>
	<div class="midcontainer">
		<div class="homedetails">
			<center><h1> Welcome <%= data.getSname() %></h1></center>
		</div>
	</div>
</body>
</html>