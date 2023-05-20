<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP Creating Dynamic Content</title>
		<style>
			div {
				margin-top: 5px;
				margin-bottom: 5px;
			}
			
			#container{
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
			}
			div > input, div > select, div > textarea{
				width: 96%;
			}
			
		</style>
	</head>
	<body>
		
		
		<div id="container">
		<h1>JSP Servlet Transport</h1>
		
			<form action="booking" method="post">
				<!-- Name -->
				<div>
					<label for="name">Name</label>
					<input type="text" name="name" required>
				</div>
			
				
				<!-- Phone Number -->
				<div>
					<label for="phone">Phone Number</label>
					<input type="tel" name="phone" required>
				</div>
				
				<!-- email -->
				<div>
					<label for="email">Email</label>
					<input type="email" name="email" required>
				</div>
				
				<!-- Vehicle Choice -->
				<fieldset>
					<legend>Which vehicle do you require?</legend>
					<!-- Taxi -->
					<input type="radio" id="taxi" name="car_type" value="taxi" required>
					<label for="taxi">Taxi</label>
					
					<!-- Four Seater -->
					<input type="radio" id="four_seater" name="car_type" value="fourseater" required>
					<label for="four_seater">4-Seater</label>
					
					<!-- Six Seater -->
					<input type="radio" id="six_seater" name="car_type" value="sixseater" required>
					<label for="six_seater">6-Seater</label>
					
					
				</fieldset>
				
				<!-- Extras -->
					<fieldset>
						<legend>Extras</legend>
						
						<!-- Baby Chair -->
						<input type="checkbox" name="extras_baby" value="baby_seat">
						
						<label for="extra_baby">Baby Seat</label>
						
						<!-- Wheel Chair -->
						<input type="checkbox" name="extras_wheelchair" value="wheelchair_assistance">
						
						<label for="extras_wheelchair">Wheelchair Assistance</label>
						
					</fieldset>
					
					<!--  Pickup time -->
					<div>
						<label for="pickup_Date_time">Pickup Date/time</label>
						<input type="datetime-local" name="pickup_date_time" required>
					</div>
					
					<!-- Pickup location -->
					<div>
						<label for="pickup_location">Pickup Location</label>
						<select id="pickup_place" name="pickup_location">
							<option value="" selected="selected">Select one</option>
							<option value="office">Office</option>
							<option value="home">Home</option>
						</select>
					</div>
					
					<!-- Dropoff place -->
					<div>
						<label for="destination">Dropoff Place</label>
						<input type="text" name="destination" required list="destinations">
						<!--  datalist provide autocomplete feature -->
						<datalist id="destinations">
							<option value="Home">
							<option value="Office">
							<option value="Airport">
							<option value="Beach">
						</datalist>
					</div>
					
					<!-- Special Instructions -->
					<div>
						<label for="comments">Special Instructions</label>
						<textarea name="comments" maxlength="500"></textarea>
					</div>
					
					<!-- button for submit -->
					
					<button>Submit booking</button>
					
			</form>
		</div>
	</body>
</html>