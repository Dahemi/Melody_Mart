package com.Login.UserLogin.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Login.UserLogin.model.User;
import com.Login.UserLogin.util.DataBaseConnection;



public class UserDAO {



    //Method to check if the user exists in the database
    public boolean validateUser(User user) throws SQLException, ClassNotFoundException {
        String sql = "SELECT uname FROM login WHERE uname=? AND password=?";

        try (Connection con = DataBaseConnection.getConnection();
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


 // Method to insert a new user into the database
    public boolean insertUser(User user) throws SQLException, ClassNotFoundException {
		String sql = "INSERT INTO login (uname, password) VALUES (?, ?)";

	        try (Connection con = DataBaseConnection.getConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {

	            ps.setString(1, user.getUsername());
	            ps.setString(2, user.getPassword());

	            int rowsAffected = ps.executeUpdate();
	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            System.err.println("SQL Error in insertUser: " + e.getMessage());
	            e.printStackTrace();
	            throw e;
	        } catch (ClassNotFoundException e) {
	            System.err.println("Database driver not found: " + e.getMessage());
	            e.printStackTrace();
	            throw e;
	        }
     }


 // Method to retrieve all users from the database
    public List<User> getAllUsers() throws SQLException, ClassNotFoundException {
        List<User> userList = new ArrayList<>();
        String sql = "SELECT uname, password FROM login";

        try (Connection con = DataBaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            // Iterate through the result set and create User objects
            while (rs.next()) {
                String username = rs.getString("uname");
                String password = rs.getString("password");
                userList.add(new User(username, password));
            }
        }
        return userList;
    }




}
