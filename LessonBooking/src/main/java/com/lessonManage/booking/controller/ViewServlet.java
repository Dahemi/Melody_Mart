package com.lessonManage.booking.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lessonManage.booking.dao.bookingDAO;
import com.lessonManage.booking.model.booking;

@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // Set content type for response
        response.setContentType("text/html;charset=UTF-8");

        // Instantiate bookingDAO to retrieve bookings
        bookingDAO bookDAO = new bookingDAO();
        List<booking> bookings; //list to store retrieved data from DAO

        try {
            // Get all bookings from the database
            bookings = bookDAO.getAllBookings();

            // Set the list of bookings as a request attribute - t0 send to jsp
            request.setAttribute("bookings", bookings);

            // Forward to the JSP page to display bookings
            request.getRequestDispatcher("viewBookings.jsp").forward(request, response);
        } catch (Exception e) {
            // Handle exceptions and forward to error page
            request.setAttribute("error", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("lessonPage.jsp").forward(request, response);
        }

	}

}
