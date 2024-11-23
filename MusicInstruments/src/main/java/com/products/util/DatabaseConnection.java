package com.products.util;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DatabaseConnection {

	private static final String URL = "jdbc:mysql://localhost:3306/productmanage";
    private static final String USER = "root";
    private static final String PASSWORD = "1234";

    // Get a database connection
    public static java.sql.Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
