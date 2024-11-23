package com.artist.controller;

import com.artist.dao.ArtistDAO;
import com.artist.model.Event;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ReadEventServlet")
public class ReadEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eventId = request.getParameter("txtID"); // Fetch the event ID from the request

        ArtistDAO artistDAO = new ArtistDAO();
        try {
            if (eventId != null && !eventId.isEmpty()) {
                // Read a single event
                Event event = artistDAO.readEvent(eventId);
                if (event != null) {
                    request.setAttribute("event", event);
                    request.getRequestDispatcher("welcome.jsp").forward(request, response);
                } else {
                    request.setAttribute("error", "Event not found.");
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            }
            } catch (SQLException e) {
            request.setAttribute("error", "Error: " + e.getMessage()); // Handle SQL exceptions
            request.getRequestDispatcher("error.jsp").forward(request, response); // Forward to error.jsp
        }
    }
}
