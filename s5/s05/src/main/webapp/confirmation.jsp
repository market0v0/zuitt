<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="carTypr.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Confirmation</title>
</head>
<body>
	<%
/* 		String carType = session.getAttribute("carType").toString();
		if(carType.equals("taxi")){
			carType = "Taxi";
		}
		else if(carType.equals("fourseater")){
			carType = "4-Seater Car";
		}
		else{
			carType = "6-Seater Car";
		} */
		String pickupDateTime =session.getAttribute("pickupDateTime").toString();
		pickupDateTime = pickupDateTime.replace("T","/");
	%>
	
	<h1>Booking Confirmation</h1>
	<p>Name: <%= session.getAttribute("name") %></p>
	<p>Phone Number: <%= session.getAttribute("phone") %></p>
	<p>Email: <%= session.getAttribute("email") %></p>
	<p>Car Type: <%= carType %></p>
	<p>Extras:</p>
	<ul>
		<%
			if(session.getAttribute("extrasBaby") == null && session.getAttribute("extrasWheelchair") == null){
				out.println("<li>No extras requested.</li>");
			}
			if(session.getAttribute("extrasBaby") != null){
				out.println("<li>Baby Seat</li>");
			}
			if(session.getAttribute("extrasWheelchair") != null){
				out.println("<li>Wheelchair Assistance</li>");
			}
		%>
	</ul>
	<p>Pickup Date and Time: <%= pickupDateTime %></p>
	<p>Pickup Location: <%= session.getAttribute("pickupLocation") %></p>
	<p>Pickup Destination: <%= session.getAttribute("destination") %></p>
	<p>Comments: <%= session.getAttribute("comments") %></p>
	
	<!-- Submit button -->
	<form action="database" method="post">
		<input type="submit">
	</form>
	
	<!-- Back button to index.jsp -->
	<form action="index.jsp">
		<input type="submit" value="Back">
	</form>
</body>
</html>












