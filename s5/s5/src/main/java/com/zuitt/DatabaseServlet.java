package com.zuitt;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/database")
public class DatabaseServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6668827760365993356L;
	
	ArrayList<String> users = new ArrayList<>();
	
	
	public void init() throws ServletException{
		System.out.println("**************************************");
		System.out.println(" DatabaseServlet has been initialized. ");
		System.out.println(" Connected from DB. ");
		System.out.println("**************************************");
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException {	
		ServletContext srvContext = getServletContext();
		String firstName = (String) srvContext.getAttribute("firstName");
		String lastName = (String) srvContext.getAttribute("lastName");
		String email = (String) srvContext.getAttribute("email");
		String contact = (String) srvContext.getAttribute("contact");
		
			users.add(firstName+" "+lastName+": "+email+" "+contact);
			PrintWriter out = res.getWriter();
			out.println(
					"<h1>User Information has been stored to DatabaseServlet</h1>"+
					"<p>First Name: "+ firstName+ "</p>"+
					"<p>Last Name: "+ lastName+ "</p>"+
					"<p>Email: :"+ email+ "</p>"+
					"<p>Contact: :"+ contact+ "</p>"
					
					);
	}
	
	public void destroy(){
		System.out.println("**************************************");
		System.out.println(" DatabaseServlet has been destroy. ");
		System.out.println(" Disconnected from DB. ");
		System.out.println("**************************************");
	}
}
