

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Server Page</title>
</head>
	<body>
		<h1>Welcome to HotelServlet</h1>
		<!--JSp Scriplete   -->
		<%System.out.println("Hello from JSP");%>
		<!-- JSp Declaration -->
		<%!
			Date currentDateTime = new java.util.Date();
		%>
		<!-- JSp Expression  -->
		<p> The time now is <%= currentDateTime %></p>
		
		<%!
		private int initVar = 0;
		private int serviceVar = 0;
		private int destroyVar = 0;
		%>
		
		<%!
		public void jspInit(){
			initVar++;
			System.out.println("jspInit(): init "+initVar);
		}
		public void jspDestroy(){
			destroyVar++;
			System.out.println("jspDestroy(): init "+destroyVar);
			
		}
		
		%>
		
		<%
			serviceVar++;
			System.out.println("jspService(): service "+ serviceVar);
			
			String content1 = "content1: "+initVar; 
			String content2 = "content2: "+serviceVar; 
			String content3 = "content3: "+destroyVar; 
			
			
		%>
		
		<h1>JSP Expression</h1>
		<p><%= content1%></p>
		<p><%= content2%></p>
		<p><%= content3%></p>
		
		<h1>Create an Account</h1>
		<form action="user" method="post">
			<label for="firstName">First Name: </label><br>
			<input type="text" name="firstName"><br>
			
			<label for="lastName">Last Name: </label><br>
			<input type="text" name="lastName"><br>
			
			<label for="email">Email: </label><br>
			<input type="text" name="email"><br>
			
			<label for="contact">Contact: </label><br>
			<input type="text" name="contact"><br>
			
			<input type="submit">
		</form>
	</body>
</html>















