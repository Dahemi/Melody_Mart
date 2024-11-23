package com.customer.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.dao.CustomerDBUtill;
import com.customer.model.Customer;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = CustomerDBUtill.bookingDelete(id);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("BookingInsert.jsp");
			dis.forward(request,response);
		}
		else {
			List<Customer> cusDetails = CustomerDBUtill.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
	}

}
