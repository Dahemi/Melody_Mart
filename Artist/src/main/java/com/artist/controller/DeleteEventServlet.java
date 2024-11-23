package com.artist.controller;

import com.artist.dao.ArtistDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/DeleteEventServlet")
public class DeleteEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eventId = request.getParameter("eventId");

        ArtistDAO eventDAO = new ArtistDAO();
        try {
            if (eventDAO.deleteEvent(eventId)) {
                request.setAttribute("message", "Event successfully deleted!");
                request.getRequestDispatcher("Deletesuccess.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Failed to delete event.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            request.setAttribute("error", "Error: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
