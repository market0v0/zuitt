package com.zuitt;

import java.io.IOException;
import java.time.LocalTime;
import java.util.ArrayList;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/database")
public class DatabaseServlet extends HttpServlet {

	ArrayList<String> bookings = new ArrayList<>();
	private int bookingCount;
	/**
	 * 
	 */
	private static final long serialVersionUID = -6668827760365993356L;
	
	public void init() throws ServletException{
		System.out.println("DatabaseServlet has been initialized.");
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException {	
		String date = LocalTime.now().toString();
		
		bookingCount++;
		
		String orderNumber = bookingCount + date.replaceAll("[^a-zA-Z0-9]", "");
		bookings.add(orderNumber);
		HttpSession session = req.getSession();
		session.setAttribute("bookings", bookings);
		res.sendRedirect("bookings.jsp");
	}
	
	public void destroy() {
		System.out.println("DatabaseServlet has been finalized");
	}
	
}
