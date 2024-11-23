package com.products.controller;

import com.products.dao.productDAO;
import com.products.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
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
            if (productDAO.insertProduct(product)) {
            	request.setAttribute("productId", id);
                request.setAttribute("productName", name);
                request.setAttribute("productDescription", status);
                request.setAttribute("productPrice", price);
                request.setAttribute("productQuantity", quantity);
                request.setAttribute("productCategory", category);
                
                request.getRequestDispatcher("insertsuccess.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Failed to insert product.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            request.setAttribute("error", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
