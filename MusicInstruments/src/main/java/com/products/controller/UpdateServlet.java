package com.products.controller;

import com.products.dao.productDAO;
import com.products.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("txtID");
        String name = request.getParameter("txtName");
        String status = request.getParameter("txtstatus");
        String price = request.getParameter("txtPrice");
        int quantity = Integer.parseInt(request.getParameter("txtQuantity"));
        String category = request.getParameter("txtCategory");

        Product product = new Product(id, name, status, price, quantity, category);
        productDAO productDAO = new productDAO();
        try {
            if (productDAO.updateProduct(product)) {
            	
            	request.setAttribute("id", id);
            	request.setAttribute("name", name);
            	request.setAttribute("status", status);
            	request.setAttribute("price", price);
            	request.setAttribute("quantity", quantity);
            	request.setAttribute("category", category);
            	
                request.getRequestDispatcher("updatesuccess.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Failed to update product.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            request.setAttribute("error", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
