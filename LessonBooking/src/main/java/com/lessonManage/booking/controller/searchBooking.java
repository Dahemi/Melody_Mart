package com.lessonManage.booking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lessonManage.booking.dao.bookingDAO;
import com.lessonManage.booking.model.booking;

@WebServlet("/searchBooking")
public class searchBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private bookingDAO bookingDao;

    @Override
	public void init() {
        bookingDao = new bookingDAO();
    }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		// Get the booking ID from the form
	    String bookingIdStr = request.getParameter("bookingId");

	    if (bookingIdStr == null || bookingIdStr.trim().isEmpty()) {

	    	// Booking ID is missing or empty
	        request.setAttribute("errorMessage", "Booking ID is required");
	        request.getRequestDispatcher("IT23182578/SearchBooking.jsp").forward(request, response);

	        return;
	    }

		//Retrieve the booking from the database.calling related method from DAO
        try {

        	int bookingId = Integer.parseInt(bookingIdStr);

			booking book = bookingDao.getBookingById(bookingId);

			if( book != null) {

				//set the booking as an attribute
				request.setAttribute("booking", book);

				//forward to the display page
				request.getRequestDispatcher("viewByID.jsp").forward(request, response);
			}
			else {

				//Booking not found
				request.setAttribute("errorMessage", "booking not found");
				request.getRequestDispatcher("SearchBooking.jsp").forward(request, response);
			}
		}
        catch (NumberFormatException e) {

        	// Invalid booking ID format
            request.setAttribute("errorMessage", "Invalid booking ID format");
            request.getRequestDispatcher("SearchBooking.jsp").forward(request, response);

        } catch (Exception e) {

        	// Handle other exceptions
            throw new ServletException(e);
        }

	}

}
