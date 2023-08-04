<%@page import="com.demo.test.DTO.Registeration.StudentDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Details</title>
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
			<a href="View.jsp">About Me</a>
			<a href="Login.jsp">Login</a>
			<a href="Logout.jsp">LogOut</a>
			<a href="" style="color:#ffffff; font-size:large; border-radius:8px; background:#6CC417; padding:5px;"><%= data.getSname() %></a><img alt="" src="">
		</div>
	</div>
	
	<%---mid bar--%>
	<div class="midcontainer">
		<div class="main">
		<div class="details">
			<div style="width: 100%;"><h3>Name  </h3></div>
			<div style="width: 100%;"><h3><%= data.getSname() %></h3></div>
		</div>
		<div class="details">
			<div style="width: 100%;"><h3>Address  </h3></div>
			<div style="width: 100%;"><h3><%= data.getSaddress() %></h3></div>
		</div>
		<div class="details">
			<div style="width: 100%;"><h3>Course  </h3></div>
			<div style="width: 100%;"><h3><%= data.getScourse() %></h3></div>
		</div>
		<div class="details">
			<div style="width: 100%;"><h3>Place  </h3></div>
			<div style="width: 100%;"><h3><%= data.getSplace() %></h3></div>
		</div>
		<div class="details">
			<div style="width: 100%;"><h3>Age  </h3></div>
			<div style="width: 100%;"><h3><%= data.getSage() %></h3></div>
		</div>
			<center><a href="Edit.jsp?id=<%= id %>" style=" padding-top: 20px; font-family: fantasy;">Edit</a></center>
		</div>
	</div>
</body>
</html>