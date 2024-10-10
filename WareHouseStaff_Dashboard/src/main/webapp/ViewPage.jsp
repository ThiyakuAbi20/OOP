<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Data</title>
<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>
	<h1> View Message</h1>
	<table>
	<c:forEach var="msg" items="${MessageDetails}">
	
	<c:set var="idmessage" value="${msg.idmessage}"/>
	<c:set var="message" value="${msg.message}"/>
	<c:set var="time" value="${msg.time}"/>
	
	<tr>
		<td>Message ID</td>
		<td>${msg.idmessage}</td>
	</tr>
	<tr>
		<td>Message</td>
		<td>${msg.message}</td>
	</tr>
	<tr>
		<td>Time</td>
		<td>${msg.time}</td>
	</tr>

	</c:forEach>
	</table>
	<br><br>
	<c:url value="UpdateMessage.jsp" var="msgupdate">
		<c:param name="idmessage" value="${idmessage}"/>
		<c:param name="message" value="${message}"/>
		<c:param name="time" value="${time}"/>
		
	</c:url>
	
	<a href="${UpdateMessage}">
	<input type="button" name="update" value="Update My Data">
	</a>
	
	<br><br>
	<c:url value="DeleteMessage.jsp" var="msgdelete">
		<c:param name="idmessage" value="${idmessage}"/>
		<c:param name="message" value="${message}"/>
		<c:param name="time" value="${time}"/>

	</c:url>
	<a href="${DeleteMessage}">
	<input type="button" name="delete" value="Delete My Message">
	</a>

</body>
</html>