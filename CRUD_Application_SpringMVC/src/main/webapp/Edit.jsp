<%@page import="com.demo.test.DTO.Registeration.StudentDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit My Details</title>
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
			<form action="update.do" method="post" style="margin: 10%; margin-top:7%; margin-bottom:7%; background: #52595D; padding: 20px; border-radius: 15px; align-items: center;">
			<center>
			<h2 style="font-family: cursive;">Edit My Details</h2>
				<% 
					String msg = request.getParameter("msg");
					if("done".equals(msg)){
				%>
						<h4 style="color: green;"> Updation Seccessfully! </h4>	
				<% 
					}
				%>	
				<% 
					if("nodone".equals(msg)) {
				%>
						<h4 style="color: red;"> Updation Failure! <br><i style="padding-left: 60px"> Please Try Again! </i> </h5>
				<%
					}
				%>
			<table style="width: 100%;">
				<tr>
					<th style="width: 50%;"><b> Student Id </b></th>
					<td style="width: 50%;"><input value="<%= data.getSid() %>" type="hidden" name="sid" style="width: 50%; margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;"  ></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Name </b></th>
					<td style="width: 50%;"><input value="<%= data.getSname() %>" type="text" name="sname" style="width: 50%; margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Email </b></th>
					<td style="width: 50%;"><input value="<%= data.getSemail() %>" type="email" name="semail" style="width: 50%; margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Address </b></th>
					<td style="width: 50%;"><input value="<%= data.getSaddress() %>" type="text" name="saddress" style="width: 50%; margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Course </b></th>
					<td style="width: 50%;"> <select name="scourse" style="width: 51.5%;  margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;">
							<option><%= data.getScourse() %></option>
							<option> </option>
							<option value="BTech">BTech</option>
							<option value="BSc">BSc</option>
							<option value="BA">BA</option>
							<option value="BBA">BBA</option>
							<option value="BCom">BCom</option>
					</select> </td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Place </b></th>
					<td style="width: 50%;"><input value="<%= data.getSplace() %>" type="text" name="splace" style="width: 50%; margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Age </b></th>
					<td style="width: 50%;"><input value="<%= data.getSage() %>" type="number" name="sage" style="width: 50%; margin-bottom: 8px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Password </b></th>
					<td style="width: 50%;"><input value="<%= data.getSpass() %>" type="password" name="spass" style="width: 50%; margin-bottom: 8px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th colspan="2" style="width: 50%;"><input type="submit" value="Edit" style="width: 50%; color: #87AFC7; border-radius: 15px; border: 0px;padding: 5px; margin-bottom: 10px; background: #29465B;"></th>
				</tr>
			</table>
			<br><br>
			</center>
		</div>
	</div>
</body>
</html>