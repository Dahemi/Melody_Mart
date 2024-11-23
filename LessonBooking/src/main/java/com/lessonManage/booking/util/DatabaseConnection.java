package com.lessonManage.booking.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String jdbcURL = "jdbc:mysql://localhost:3306/lessonmanage";
    private static final String jdbcUsername = "root";
    private static final String jdbcPassword = "1234";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
    }
}
