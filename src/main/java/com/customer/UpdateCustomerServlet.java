package com.customer;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updatecustomer(id, name, email, phone, username, password);
		
		if (isTrue) {
		    // Update successful
		    List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
		    request.setAttribute("cusDetails", cusDetails);
		    request.setAttribute("updateStatus", "success");

		    RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		    dis.forward(request, response);

		} else {
		    // Update unsuccessful
		    List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
		    request.setAttribute("cusDetails", cusDetails);
		    request.setAttribute("updateStatus", "failure");

		    RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		    dis.forward(request, response);
		}
		
		




	}

}
