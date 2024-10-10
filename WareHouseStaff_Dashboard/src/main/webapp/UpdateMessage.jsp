<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Message</title>
<style type="text/css">
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
		}
	</style>
</head>
<body>
<%
		String idmessage = request.getParameter("idmessage");
		String message = request.getParameter("message");
		String time = request.getParameter("time");
%>
<h1> Update Message</h1>
<form action="UpdateMessageServlet" method="post">
	<table>
		<tr>
			<td>Message ID</td>
			<td><input type="number" name="mgsid" value="<%= idmessage %>" readonly></td>
		</tr>
		<tr>
			<td>Message</td>
			<td><input type="text" name="msg" value="<%= message %>"></td>
		</tr>
		<tr>
		<td>Time</td>
		<td><input type="time" name="time" value="<%= time %>"></td>
	</tr>
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>
</body>
</html>