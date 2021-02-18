<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="/onlinevotingsystem/login.css" type="text/css">
</head>
<body>
<form action="login" method="post">
<ul>
  <li style="float:left"><a href="login.jsp" style="font-size:30px;font-family:ink free;text-shadow:5px 3px black;margin:4px">Online Voting System</a></li>
  <li style="float:right"><a href="signup.jsp">Create Account</a></li>
  <li style="float:right"><a href="admin.jsp">Admin Login</a></li>
  <li style="float:right"><a href="login.jsp">User Login</a></li>
</ul>
<h1 style="font-family:lucida handwriting" align="center">User Login</h1>
<table align="center">
<tr>
<td>Voter ID</td>
<td><input type="text" name="voterid" style="margin-bottom:10px"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password"></td>
</tr>
</table>
<p align="center"><input type="submit" name="submit" value="Login"></p>
<p align="center">Don't have an account?<a href="signup.jsp">SignUp</a></p>
</form>
</body>
</html>