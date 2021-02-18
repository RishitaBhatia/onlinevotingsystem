<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
<link rel="stylesheet" href="/onlinevotingsystem/signup.css" type="text/css">
</head>
<body>
<form action="signup" method="post">
<ul>
  <li style="float:left"><a href="login.jsp" style="font-size:30px;font-family:ink free;text-shadow:5px 3px black;margin:4px">Online Voting System</a></li>
  <li style="float:right"><a href="signup.jsp">Create Account</a></li>
  <li style="float:right"><a href="admin.jsp">Admin Login</a></li>
  <li style="float:right"><a href="login.jsp">User Login</a></li>
</ul>
<h1 style="font-family:lucida handwriting" align="center">User Registration</h1>
<table align="center">
<tr>
<td>FirstName</td>
<td><input type="text" name="fname" style="margin-bottom:10px"></td>
</tr>
<tr>
<td>LastName</td>
<td><input type="text" name="lname" style="margin-bottom:10px"></td>
</tr>
<tr>
<td>Email</td> 
<td><input type="text" name="email" style="margin-bottom:10px"></td>
</tr>
<tr>
<td>Date of birth</td>
<td><input type="text" name="dob" style="margin-bottom:10px" placeholder="DD/MM/YYYY"></td>
</tr>
<tr>
<td>Voter ID</td> 
<td><input type="text" name="voterid" style="margin-bottom:10px"></td>
</tr>
<tr>
<td>Mobile No</td> 
<td><input type="number" name="mobile" style="margin-bottom:10px"></td>
</tr>
<tr>
<td>Password</td> 
<td><input type="password" name="password"></td>
</tr>
</table>
<p align="center"><input type="submit" value="Register" name="submit"></p>
</form>
</body>
</html>