<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Bookings</title>
	</head>
	<body>
		<%
			String bookings = session.getAttribute("bookings").toString();
		%>
		<h1>My Bookings</h1>
		<%= bookings %>
		<br>
		<a href="index.jsp">Book Another Transport</a>
	</body>
</html>