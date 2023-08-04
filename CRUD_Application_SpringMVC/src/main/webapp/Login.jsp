<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Student Login </title>
</head>
<body>
	<form action="login.do" method="post" style="margin: 20%; margin-top:15%; margin-bottom:10%; background: #52595D; padding: 20px; border-radius: 15px; align-items: center;">
			<center>
			<h2 style="font-family: cursive;">Student Login</h2>
			<table style="width: 100%;">
				<tr>
					<th style="width: 50%;"><b> Student Email </b></th>
					<td style="width: 50%;"><input type="email" name="semail" style="width: 50%; margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Password </b></th>
					<td style="width: 50%;"><input type="password" name="spass" style="width: 50%; margin-bottom: 8px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th colspan="2" style="width: 50%;"><input type="submit" value="Login" style="width: 50%; color: #87AFC7; border-radius: 15px; border: 0px;padding: 5px; margin-bottom: 10px; background: #29465B;"></th>
				</tr>
			</table>
			<br><br>
			<a href="Registration.jsp" style="align-self: center; text-decoration: none; color: #ffffff">Sign Up</a>
			</center>
		</form>
</body>
</html>