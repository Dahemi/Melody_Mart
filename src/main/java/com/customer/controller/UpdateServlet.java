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


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String nic =request.getParameter("nic");
		String email =request.getParameter("email");
		String phone = request.getParameter("phone");
		String date =request.getParameter("date");
		String time =request.getParameter("time");
		String members =request.getParameter("members");
		
		
		boolean isTrue;
		
		isTrue = CustomerDBUtill.bookingUpdate(id,name, nic, email, phone, date, time, members);
		
		if(isTrue == true ) {
			
			List<Customer> cusDetails = CustomerDBUtill.getCustomerDetails(id);
			request.setAttribute("cusDetails" , cusDetails);
			//when we need go to servlet to jsp file we use request dispatcher
			RequestDispatcher dis = request.getRequestDispatcher("ReadDisplay.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
