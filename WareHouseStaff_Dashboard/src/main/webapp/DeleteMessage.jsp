<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Message</title>
</head>
<body>
<%
		String idmessage = request.getParameter("idmessage");
		String message = request.getParameter("message");
		String time = request.getParameter("time");
	%>

	<h1> Delete Message</h1>
	<form action="DeleteMessageServlet" method="post">
	<table>
	<tr>
			<td>Message ID</td>
			<td><input type="number" name="msgid" value="<%= idmessage %>" required></td>
		</tr>
		<tr>
			<td>Message</td>
			<td><input type="text" name="message" value="<%= message %>" readonly></td>
		</tr>
		<tr>
		<td>time</td>
		<td><input type="time" name="time" value="<%= time %>" readonly></td>
	</tr>
	</table>
	<br>
	<input type="submit" name="submit" value="Delete Message">
	</form>
</body>
</html>