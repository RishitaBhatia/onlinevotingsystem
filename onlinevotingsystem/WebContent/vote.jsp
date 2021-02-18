<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Please Vote</title>
<link rel="stylesheet" href="/onlinevotingsystem/vote.css" type="text/css">
</head>
<body>
<form action="vote" method="post">
<ul>
  <li style="float:left"><a href="login.jsp" style="font-size:30px;font-family:ink free;text-shadow:5px 3px black;margin:4px">Online Voting System</a></li>
  <li style="float:right"><a href="signup.jsp">Create Account</a></li>
  <li style="float:right"><a href="admin.jsp">Admin Login</a></li>
  <li style="float:right"><a href="login.jsp">User Login</a></li>
</ul>
<h2 style="font-family:lucida handwriting" align="center">Select your Candidate</h2>
<table align="center">
<tr>
<td>Voter ID</td>
<td><input type="text" name="voterid" style="margin-bottom:10px"></td>
</tr>
<tr>
<td><input type="radio" name="vote" value="AAP" style="margin-bottom:10px"><img src="aap.jpg"></td>
<td>Aam Aadmi Party</td>
</tr>
<tr>
<td><input type="radio" name="vote" value="BJP" style="margin-bottom:10px"><img src="bjp.png"></td>
<td>Bharatiya Janata Party</td>
</tr>
<tr>
<td><input type="radio" name="vote" value="INC"><img src="inc.png"></td>
<td>Indian National Congress</td>
</tr>
</table>
<p align="center"><input type="submit" name="submit" value="Vote"></p>
</form>
</body>
</html>