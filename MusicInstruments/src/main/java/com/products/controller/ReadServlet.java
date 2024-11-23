package com.products.controller;

import com.products.dao.productDAO;
import com.products.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ReadServlet")
public class ReadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productId");

        productDAO productDAO = new productDAO();
        try {
            Product product = productDAO.readProduct(productId);
            if (product != null) {
                request.setAttribute("product", product);
                request.getRequestDispatcher("readsuccess.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Product not found.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            request.setAttribute("error", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
