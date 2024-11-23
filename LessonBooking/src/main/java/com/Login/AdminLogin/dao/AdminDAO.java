package com.Login.AdminLogin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Login.AdminLogin.model.User;
import com.Login.AdminLogin.util.DatabaseConnection;

public class AdminDAO {

    // Method to check if the user exists in the database
    public boolean validateUser(User user) throws SQLException, ClassNotFoundException {
        String sql = "SELECT uname FROM adminlogin WHERE uname=? AND password=?";

        try (Connection con = DatabaseConnection.getConnection();  // Use DBUtil for connection
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());

            try (ResultSet rs = ps.executeQuery()) {
                return rs.next();
            }
        } catch (SQLException e) {
            throw new SQLException("Error validating user: " + e.getMessage(), e);
        }
    }
}
