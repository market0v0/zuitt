package com.zuitt;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7560556849380195433L;
	
	public void init() throws ServletException {
		System.out.println("******************************************");
		System.out.println(" UserServlet has been initialized. ");
		System.out.println("******************************************");
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException {	
		String fname = req.getParameter("fname");

		
		
	}
	public void destroy(){
		System.out.println("******************************************");
		System.out.println(" UserServlet has been destroy. ");
		System.out.println("******************************************");
	}
}
