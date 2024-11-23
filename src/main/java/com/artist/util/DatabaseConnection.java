package com.artist.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/event";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";

    public static Connection getConnection() throws SQLException {
    	try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Remove this line if using Connector/J 8.0+
        } catch (ClassNotFoundException e) {
            e.printStackTrace(); // Print error if driver is not found
        }
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
}




