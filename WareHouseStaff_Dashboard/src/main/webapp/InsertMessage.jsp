<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Message</title>
</head>
<body>
<h1> Insert Message</h1>
	<form action="InsertMessageServlet" method="post">
		Message ID: <input type="number" name="messageid"><br><br>
		Message <input type="text" name="message"><br><br>
		Time: <input type="text" name="time"><br><br>
		
		<input type="submit" name="submit" value="Create Message">
	</form>
	
</body>
</html>