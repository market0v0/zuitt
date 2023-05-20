
	<%
		String carType = session.getAttribute("carType").toString();
		if(carType.equals("taxi")){
			carType = "Taxi";
		}
		else if(carType.equals("fourseater")){
			carType = "4-Seater Car";
		}
		else{
			carType = "6-Seater Car";
		}
	
	%>
