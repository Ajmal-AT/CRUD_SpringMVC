<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>
		<form action="register.do" method="post" style="margin: 20%; margin-top:15%; margin-bottom:10%; background: #52595D; padding: 20px; border-radius: 15px; align-items: center;">
			<center>
			<h2 style="font-family: cursive;">Student Registration Form</h2>
			<table style="width: 100%;">
				<tr>
					<th style="width: 50%;"><b> Student Name </b></th>
					<td style="width: 50%;"><input type="text" name="sname" style="width: 50%; margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Email </b></th>
					<td style="width: 50%;"><input type="email" name="semail" style="width: 50%; margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Address </b></th>
					<td style="width: 50%;"><input type="text" name="saddress" style="width: 50%; margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Course </b></th>
					<td style="width: 50%;"> <select name="scourse" style="width: 51.5%;  margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;">
							<option value=""></option>
							<option value="BTech">BTech</option>
							<option value="BSc">BSc</option>
							<option value="BA">BA</option>
							<option value="BBA">BBA</option>
							<option value="BCom">BCom</option>
					</select> </td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Place </b></th>
					<td style="width: 50%;"><input type="text" name="splace" style="width: 50%; margin-bottom: 5px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Age </b></th>
					<td style="width: 50%;"><input type="number" name="sage" style="width: 50%; margin-bottom: 8px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th style="width: 50%;"><b> Student Password </b></th>
					<td style="width: 50%;"><input type="password" name="spass" style="width: 50%; margin-bottom: 8px; border-radius: 5px; padding: 5px; border: 0px;"></td>
				</tr>
				<tr>
					<th colspan="2" style="width: 50%;"><input type="submit" value="Register" style="width: 50%; color: #87AFC7; border-radius: 15px; border: 0px;padding: 5px; margin-bottom: 10px; background: #29465B;"></th>
				</tr>
			</table>
			<br><br>
				<a href="Login.jsp" style="align-self: center; text-decoration: none; color: #ffffff">Login</a>
			</center>
		</form>
</body>
</html>