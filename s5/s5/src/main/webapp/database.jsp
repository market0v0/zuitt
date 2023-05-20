<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database Servlet</title>
</head>
	<body>
	
	<!-- rETRIVES THE DATA FRON THE SERVLET -->
		<% 
		ServletContext srvContext = getServletContext();
		String firstName = (String) srvContext.getAttribute("firstName");
		String lastName = (String) srvContext.getAttribute("lastName");
		String email = (String) srvContext.getAttribute("email");
		String contact = (String) srvContext.getAttribute("contact");
		
		%>
		<h1>User Information has been stored to DatabaseServlet</h1>
		<p>First Name: <%=firstName %></p>
		<p>Last Name: <%=lastName %></p>
		<p>Email : <%=email %></p>
		<p>Contact : <%=contact %></p>
	</body>
</html>