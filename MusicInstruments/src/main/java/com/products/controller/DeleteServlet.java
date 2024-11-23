package com.products.controller;

import com.products.dao.productDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productId");

        productDAO productDAO = new productDAO();
        try {
            if (productDAO.deleteProduct(productId)) {
                request.getRequestDispatcher("delete_success.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Failed to delete product.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            request.setAttribute("error", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
