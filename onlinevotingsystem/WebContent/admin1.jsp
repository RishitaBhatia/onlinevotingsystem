<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/onlinevotingsystem/admin1.css" type="text/css">
<title>Check Result</title>
</head>
<body>
<form action="admin1" method="post">
<ul>
  <li style="float:left"><a href="login.jsp" style="font-size:30px;font-family:ink free;text-shadow:5px 3px black;margin:4px">Online Voting System</a></li>
  <li style="float:right"><a href="signup.jsp">Create Account</a></li>
  <li style="float:right"><a href="admin.jsp">Admin Login</a></li>
  <li style="float:right"><a href="login.jsp">User Login</a></li>
</ul>
<h1 style="font-family:lucida handwriting" align="center">Result</h1>
</form>

<%
String s1=(String)session.getAttribute("username");
String a[]=new String[100];
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","RISHITA","honey");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select party,count(party) as c from vote group by party");
int i=0;
while(rs.next())
{
	a[i]=rs.getString("c");
	i++;
}
%>
<table align="center">
<tr>
<td><img src="aap.jpg"></td>
<td></td>
<td><%=a[0] %></td>
</tr>
<tr>
<td><img src="bjp.png"></td>
<td></td>
<td><%=a[1] %></td>
</tr>
<tr>
<td><img src="inc.png"></td>
<td></td>
<td><%=a[2] %></td>
</tr>
</table>
</body>
</html>