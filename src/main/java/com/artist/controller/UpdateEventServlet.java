package com.artist.controller;

import com.artist.dao.ArtistDAO;
import com.artist.model.Event;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eventId = request.getParameter("txtID");
        String artistName = request.getParameter("txtaname");
        String eventName = request.getParameter("txtname");
        String eventDate = request.getParameter("txtdate");
        String eventVenue = request.getParameter("txtvenue");
        String eventCapacity = request.getParameter("txtcap");
        String ticketPrice = request.getParameter("txtprice");

        Event event = new Event(eventId, artistName, eventName, eventDate, eventVenue, eventCapacity, ticketPrice);

        ArtistDAO eventDAO = new ArtistDAO();
        try {
            if (eventDAO.updateEvent(event)) {
                request.setAttribute("message", "Event successfully updated!");
                request.getRequestDispatcher("Updatesuccess.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Failed to update event.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            request.setAttribute("error", "Error: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
