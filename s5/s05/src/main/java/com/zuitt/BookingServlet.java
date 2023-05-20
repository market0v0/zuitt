package com.zuitt;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/booking")
public class BookingServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4957551653977008154L;
	public void init() throws ServletException{
		System.out.println("BookingServlet has been initialized.");
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String carType = req.getParameter("car_type");
		String extrasBaby = req.getParameter("extras_baby");
		String extrasWheelchair = req.getParameter("extras_wheelchair"); 
		String pickupDateTime = req.getParameter("pickup_date_time");
		String pickupLocation = req.getParameter("pickup_location");
		String destination = req.getParameter("destination");
		String comments = req.getParameter("comments");
		
		HttpSession session = req.getSession();
		
		session.setAttribute("name", name);
		session.setAttribute("phone", phone);
		session.setAttribute("email", email);
		session.setAttribute("carType", carType);
		session.setAttribute("extrasBaby", extrasBaby);
		session.setAttribute("extrasWheelchair", extrasWheelchair);
		session.setAttribute("pickupDateTime", pickupDateTime);
		session.setAttribute("pickupLocation", pickupLocation);
		session.setAttribute("destination", destination);
		session.setAttribute("comments", comments);
		
		res.sendRedirect("confirmation.jsp");
	}
	
	public void destroy() {
		System.out.println("BookingServlet has been finalized");
	}

}

