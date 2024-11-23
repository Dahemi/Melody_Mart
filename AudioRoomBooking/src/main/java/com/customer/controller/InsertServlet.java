package com.customer.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.dao.CustomerDBUtill;

//data came from insert jsp file
@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Store jsp data in varible
		String name = request.getParameter("name");
		String nic =request.getParameter("nic");
		String email =request.getParameter("email");
		String phone = request.getParameter("phone");
		String date =request.getParameter("date");
		String time =request.getParameter("time");
		String members =request.getParameter("members");
		
		boolean isTrue;
		
		//we use static method that's why we can call insertCustomer method here
		isTrue = CustomerDBUtill.bookingInsert(name, nic, email, phone, date, time, members);
		
		//isTrue has inserted the insertCustomer method
		if(isTrue == true ) {
			//when we need go to servlet to jsp file we use request dispatcher
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
