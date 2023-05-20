<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Activity</title>
</head>
<body>

	<%
	// Using the scriptlet tag, create a variable dateTime
	LocalDateTime currentDateTime = LocalDateTime.now();
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	String formattedDateTime = currentDateTime.format(formatter);
	%>

	<!-- Using the date time variable declared above, print out the time values -->
	<!-- Manila = currentDateTime -->
	<!-- Japan = +1 -->
	<!-- Germany = -7 -->
	<!-- You can use the "plusHours" and "minusHours" method from the LocalDateTime class -->
	<h1>Our Date and Time now is...</h1>
	<ul>
		<li> Philippines: <%= formattedDateTime %> </li>
		<li> Japan: <%= currentDateTime.plusHours(1).format(formatter) %> </li>
		<li> Germany: <%= currentDateTime.minusHours(7).format(formatter) %> </li>
	</ul>

		<%!
	// Given the following Java Syntax below, apply the correct JSP syntax
	private int initVar=3;
	private int serviceVar=3;
	private int destroyVar=3;

	%>
	<%!
 	public void jspInit(){
    	initVar--;
    	System.out.println("jspInit(): init"+initVar);
  		}
  	public void jspDestroy(){
    	destroyVar--;
    	destroyVar = destroyVar + initVar;
    	System.out.println("jspDestroy(): destroy"+destroyVar);
  	}


	
	%>
	<% 
	serviceVar--;
  	System.out.println("_jspService(): service"+serviceVar);
  	String content1="content1 : "+initVar;
  	String content2="content2 : "+serviceVar;
  	String content3="content3 : "+destroyVar;

	%>
	<h1>JSP</h1>
	<p><%= content1 %></p>
	<p><%= content2 %></p>
	<p><%= content3 %></p>

</body>
</html>
