package com.zuitt;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class informationServlet extends HttpServlet {

	/**
	 * 
	 */
	private ArrayList<String> data;
	private static final long serialVersionUID = 2709195407602250542L;
	public void init() throws ServletException {
		data = new ArrayList<>(Arrays.asList("Standard", "Dexluxe"));
		System.out.println("******************************************");
		System.out.println(" InformationServlet has been initialized. ");
		System.out.println("******************************************");
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
	//	PrintWriter out = res.getWriter();
	//	out.println("<h1>Hotel Information</h1>");
		
		ServletContext srvContext = getServletContext();
		String hotelName = srvContext.getInitParameter("hotel_name");
		String hotelAddress = srvContext.getInitParameter("hotel_address");
		String hotelContact = srvContext.getInitParameter("hotel_contact");
		
		ServletConfig servConfig = getServletConfig();
		String status = servConfig.getInitParameter("status");
		
		//get the data from the "RoomServlet" created under the do get method
		//String facilities = System.getProperty("facilities");
		//Data pass data via redirect
		String facilities = req.getParameter("facilities");
		
		//Data pass via HttpSession
		HttpSession session = req.getSession();
		String roomsAvailable = (String) session.getAttribute("availableRooms");
		
		PrintWriter output = res.getWriter();
		output.println(
				"<h1>Hotel Information</h1>" +
				"<p>Hotel Name: "+hotelName+"</p>"+
				"<p>Hotel Address: "+hotelAddress+"</p>"+
				"<p>Hotel Contact: "+hotelContact+"</p>"+
				"<p>Hotel Status: "+status+"</p>"+
				"<p>Facilities: "+facilities+ "</p>"+
				"<p>Rooms Available: "+roomsAvailable+"</p>"
			);
    }
	
	public void destroy(){
		System.out.println("******************************************");
		System.out.println(" InformationServlet has been destroy. ");
		System.out.println("******************************************");
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException {
		
		String roomName = req.getParameter("roomtype");
		data.add(roomName);
		
		PrintWriter out = res.getWriter();
		out.println(data);
	}
	
	public void doDelete(HttpServletRequest req, HttpServletResponse res)throws IOException {
		data.remove(1);
		PrintWriter out = res.getWriter();
		out.println(data); 	
	}
	
	public void doPut(HttpServletRequest req, HttpServletResponse res)throws IOException {
		data.set(1, "Promo");
		PrintWriter out = res.getWriter();
		out.println(data); 
	}
}
