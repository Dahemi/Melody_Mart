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

@WebServlet("/ReadServlet")
public class ReadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String phone = request.getParameter("phone");
		
		
		try {
				List<Customer> cusDetails= CustomerDBUtill.validate(phone);
				request.setAttribute("cusDetails", cusDetails); //"cusDetails"-attribute name
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("ReadDisplay.jsp");
		dis.forward(request, response);
		
	}

}
