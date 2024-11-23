package com.products.dao;

import com.products.model.Product;
import com.products.util.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class productDAO {

    // Insert product
    public boolean insertProduct(Product product) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO products (id, name, status, price, quantity, category) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, product.getId());
            ps.setString(2, product.getName());
            ps.setString(3, product.getstatus());
            ps.setString(4, product.getPrice());
            ps.setInt(5, product.getQuantity());
            ps.setString(6, product.getCategory());
            return ps.executeUpdate() > 0;
        }
    }

    // Update product
    public boolean updateProduct(Product product) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE products SET name=?, status=?, price=?, quantity=?, category=? WHERE id=?";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, product.getName());
            ps.setString(2, product.getstatus());
            ps.setString(3, product.getPrice());
            ps.setInt(4, product.getQuantity());
            ps.setString(5, product.getCategory());
            ps.setString(6, product.getId());
            
            return ps.executeUpdate() > 0;
        }
    }

    // Read product by ID
    public Product readProduct(String productId) throws SQLException, ClassNotFoundException {
        String sql = "SELECT * FROM products WHERE id=?";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, productId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Product(rs.getString("id"),
                                       rs.getString("name"),
                                       rs.getString("status"),
                                       rs.getString("price"),
                                       rs.getInt("quantity"),
                                       rs.getString("category"));
                }
                return null;
            }
        }
    }

    // Delete product
    public boolean deleteProduct(String productId) throws SQLException, ClassNotFoundException {
        String sql = "DELETE FROM products WHERE id=?";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, productId);
            return ps.executeUpdate() > 0;
        }
    }
}
