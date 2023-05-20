package com.zuitt;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/user")
public class UserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7560556849380195433L;
	
	public void init() throws ServletException{
		System.out.println("**************************************");
		System.out.println(" UserServlet has been initialized. ");
		System.out.println(" Connected from DB. ");
		System.out.println("**************************************");
	}
		
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException {	
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		
		ServletContext srvContext = getServletContext();
		srvContext.setAttribute("firstName",req.getParameter("firstName"));
		srvContext.setAttribute("lastName",req.getParameter("lastName"));
		srvContext.setAttribute("email",req.getParameter("email"));
		srvContext.setAttribute("contact",req.getParameter("contact"));
		
		//res.sendRedirect("database");
		res.sendRedirect("database.jsp");
	}
	
	public void destroy(){
		System.out.println("**************************************");
		System.out.println(" UserServlet has been destroy. ");
		System.out.println(" Disconnected from DB. ");
		System.out.println("**************************************");
	}
}
