package com.zuitt;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class RoomServlet extends HttpServlet {

	/**
	 * 
	 */
	private ArrayList<String> data;
	private static final long serialVersionUID = 7802515668491130811L;
		
	public void init() throws ServletException {
		data = new ArrayList<>(Arrays.asList("Standard", "Dexluxe"));
		System.out.println("******************************************");
		System.out.println(" RoomServlet has been initialized. ");
		System.out.println("******************************************");
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException {	
		String roomName = req.getParameter("roomtype");
		data.add(roomName);
		
		ServletContext srvContext = getServletContext();
		srvContext.setAttribute("data", data);
		
		//Request Dispatcher forwards req and res to information servlet invoke the dopost
		RequestDispatcher rd = req.getRequestDispatcher("information");
		rd.forward(req, res);
		
		PrintWriter out = res.getWriter();
		out.println(data);
	}
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
	//	PrintWriter out = res.getWriter();
	//	out.println("<h1>Hotel Information</h1>");
		
		System.getProperties().put("facilities", "Swimming pool, Gym, GrandBallroom, offices");
		String facilities = System.getProperty("facilities");
		PrintWriter out = res.getWriter();
		out.println(facilities);
		
		//sending information using HttpSession
		HttpSession session = req.getSession();
		session.setAttribute("availableRooms","standard");
		res.sendRedirect("information?facilities="+facilities);
    }
	
	
	public void destroy(){
		System.out.println("******************************************");
		System.out.println(" RoomServlet has been destroy. ");
		System.out.println("******************************************");
	}
	
}
