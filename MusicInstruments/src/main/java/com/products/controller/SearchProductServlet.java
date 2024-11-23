package com.products.controller;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.products.model.SearchProduct;

import javax.servlet.RequestDispatcher;



@WebServlet("/SearchProductServlet")
public class SearchProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String searchQuery = request.getParameter("searchQuery");

	        if (searchQuery != null && !searchQuery.trim().isEmpty()) {
	            Connection conn = null;
	            PreparedStatement stmt = null;
	            ResultSet rs = null;

	            ArrayList<SearchProduct> products = new ArrayList<>();

	            try {
	                // Load the JDBC driver
	                Class.forName("com.mysql.jdbc.Driver");

	                // Connect to the database
	                conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/productmanage", "root", "1234");

	                // SQL query to search products
	                String sql = "SELECT name, price,status,description,image_url FROM searchproduct WHERE name LIKE ?";
	                stmt = conn.prepareStatement(sql);
	                stmt.setString(1, "%" + searchQuery + "%");  // Partial match using LIKE

	                // Execute the query
	                rs = stmt.executeQuery();

	                // Process the result set
	                while (rs.next()) {
	                
	                    String productName = rs.getString("name");
	                    double price = rs.getDouble("price");
	                    String status = rs.getString("status");
	                    String description  = rs.getString("description");
	                    String image_url  = rs.getString("image_url");

	                    // Add product to the list
	                    products.add(new SearchProduct(productName, price,status, description, image_url));
	                }

	                // Set products list as a request attribute
	                request.setAttribute("products", products);

	                // Forward the request to the JSP page
	                RequestDispatcher dispatcher = request.getRequestDispatcher("searchResult.jsp");
	                dispatcher.forward(request, response);

	            } catch (Exception e) {
	                e.printStackTrace();
	            } finally {
	                // Clean up resources
	                try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
	                try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
	                try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
	            }
	        } else {
	            // If no search query is provided, just forward to an empty search result page
	            RequestDispatcher dispatcher = request.getRequestDispatcher("searchResults.jsp");
	            dispatcher.forward(request, response);
	        }
	    
		
	}

}
