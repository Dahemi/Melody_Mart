package com.lessonManage.booking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lessonManage.booking.dao.bookingDAO;
import com.lessonManage.booking.model.booking;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        // Retrieve parameters from the form
        String bookingId = request.getParameter("id"); // Booking ID for the update
        String lessonName = request.getParameter("lesson");
        String date = request.getParameter("date");
        String time = request.getParameter("time");


        // Create a new booking object with updated values
        booking book = new booking(lessonName, date, time);
        book.setBookingID(Integer.parseInt(bookingId)); // Set the booking ID for the object

        // Instantiate bookingDAO to handle the database operations
        bookingDAO bookDAO = new bookingDAO();

        try {
            // Use bookingDAO to update the booking in the database
            if (bookDAO.updateBooking(book)) {

                // Update successful, set booking details as request attributes
                request.setAttribute("bookingId", bookingId);
                request.setAttribute("lessonName", lessonName);
                request.setAttribute("date", date);
                request.setAttribute("time", time);

                // Forward to UpdateSuccess.jsp with booking details
                request.getRequestDispatcher("UpdateSuccess.jsp").forward(request, response);
            } else {

            	// Update failed
                request.setAttribute("error", "Update failed. Please try again.");
                request.getRequestDispatcher("edit-booking.jsp").forward(request, response);
            }
        } catch (Exception e) {

        	// Handle exceptions and forward to error page
            request.setAttribute("error", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("edit-booking.jsp").forward(request, response);
        }
    }
}
