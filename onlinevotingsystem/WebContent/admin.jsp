<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/onlinevotingsystem/admin.css" type="text/css">
<title>Check Result</title>
</head>
<body>
<form action="admin" method="post">
<ul>
  <li style="float:left"><a href="login.jsp" style="font-size:30px;font-family:ink free;text-shadow:5px 3px black;margin:4px">Online Voting System</a></li>
  <li style="float:right"><a href="signup.jsp">Create Account</a></li>
  <li style="float:right"><a href="admin.jsp">Admin Login</a></li>
  <li style="float:right"><a href="login.jsp">User Login</a></li>
</ul>
<h1 style="font-family:lucida handwriting" align="center">Admin Login</h1>
<table align="center">
<tr>
<td>Username</td>
<td><input type="text" name="username" style="margin-bottom:10px"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password"></td>
</tr>
</table>
<a href="admin1.jsp"><p align="center"><input type="submit" name="submit" value="Check Result"></a></p>
</form>
</body>
</html>