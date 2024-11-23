package com.lessonManage.booking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lessonManage.booking.dao.bookingDAO;
import com.lessonManage.booking.model.booking;


@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		// Retrieve parameters from the form
		String lessonName = request.getParameter("lesson");
        String name = request.getParameter("name");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");


        // Create a new User object
        booking book = new booking(lessonName,name,date,time,email,phone);

        // Instantiate UserDAO to handle the database operations
        bookingDAO bookDAO = new bookingDAO();

        try {
            // Use UserDAO to insert the user into the database
            if (bookDAO.insertBooking(book)) {
            	// Insert successful, set booking details as request attributes
                request.setAttribute("bookingId", book.getBookingID()); // Include the generated booking ID
                request.setAttribute("lessonName", lessonName);
                request.setAttribute("date", date);
                request.setAttribute("time", time);

                // Forward to BookingSuccess.jsp with booking details
                request.getRequestDispatcher("BookingSuccess.jsp").forward(request, response);
            } else {

            	// Insert failed
                request.setAttribute("error", "Insert failed. Please try again.");
                request.getRequestDispatcher("bookingForm.jsp").forward(request, response);
            }
        } catch (Exception e) {

        	// Handle exceptions and forward to error page
            request.setAttribute("error", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("bookingForm.jsp").forward(request, response);
        }
	}

}
