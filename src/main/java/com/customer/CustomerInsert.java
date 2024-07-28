package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(name, email, phonenumber, username, password);
		
		if (isTrue == true) {
		    // Update successful
		    String redirectURL = "login.jsp";
		    String alertMessage = "Successful!";
		    String script = "alert('" + alertMessage + "'); window.location='" + redirectURL + "';";
		    response.getWriter().println("<script>" + script + "</script>");
		} else {
		    // Update unsuccessful
		    String redirectURL = "customerinsert.jsp";
		    String alertMessage = "Unsuccessful!";
		    String script = "alert('" + alertMessage + "'); window.location='" + redirectURL + "';";
		    response.getWriter().println("<script>" + script + "</script>");
		}
	
	}

}
