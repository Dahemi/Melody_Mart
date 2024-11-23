package com.lessonManage.booking.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lessonManage.booking.dao.bookingDAO;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private bookingDAO bookingDao;

	 @Override
	public void init() {
	        bookingDao = new bookingDAO();
	 }

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
            // Get the booking ID and confirmation from the form
            int bookingId = Integer.parseInt(request.getParameter("bookingId"));
            String confirmation = request.getParameter("confirmDelete");

            if ("on".equals(confirmation)) {
                // Attempt to delete the booking
                boolean deleted = bookingDao.deleteBooking(bookingId);

                if (deleted) {
                    request.setAttribute("message", "Booking successfully deleted.");
                } else {
                    request.setAttribute("message", "Unable to delete booking. Booking may not exist.");
                }
            } else {
                request.setAttribute("message", "Deletion not confirmed. Booking was not deleted.");
            }

            // Forward to the result page
            request.getRequestDispatcher("deleteSuccess.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            request.setAttribute("message", "Invalid booking ID format.");
            request.getRequestDispatcher("deleteBookingForm.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
	}

}
