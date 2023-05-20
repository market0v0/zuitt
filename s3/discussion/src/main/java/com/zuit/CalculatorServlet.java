package com.zuit;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CalculatorServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7009488492835154690L;
	//initialized 
	public void init() throws ServletException{
		System.out.println("*************");
		System.out.println("Initialized Connection to the Database.");
		System.out.println("*************");
	}
	//post
	public void  doPost(HttpServletRequest req, HttpServletResponse res ) throws IOException {
		System.out.println("Hello from the caculator servlet");
		/*
		 * Sysout then shift + space for autocomplete
		 * */
		System.out.println("Hello from the calculator servlet.");
		
		/*
		 * The parameter names are defined in the form input field.
		 * The parameters are found in the url as query string (e.g. ?num1=&num2)
		 * getParameter() method is used to extract the parameters in a query string/ 
		 * */
		
		int num1 = Integer.parseInt(req.getParameter("num1"));
		int num2 = Integer.parseInt(req.getParameter("num2"));
		int total = num1+num2;
		PrintWriter out = res.getWriter();
		
		out.println("<h1>the total of the two numbers are "+total+ "</h1>");
	}
	//get
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		PrintWriter out = res.getWriter();
		out.println("<h1>You have access the get method of the calculator</h1>");
		
	}
	//finalization 
	public void destroy() {
		System.out.println("*************");
		System.out.println("Disconnected from Database.");
		System.out.println("*************");
	}
	

}
