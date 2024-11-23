package com.customer.util;

import java.sql.Connection;
import java.sql.DriverManager;

//common for all the functions
public class DBConnect {
	
	//create database connection
	private static String url  = "jdbc:mysql://127.0.0.1:3306/book?useSSL=false";
	private static String user = "root";
	private static String pass = "1234";
	private static Connection con;
	
	
	public static Connection getConnection() {
		
			
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		con = DriverManager.getConnection(url, user, pass);
		
	}
	catch(Exception e){
		System.out.println("Database connection is not Success!");
		
	}
	return con;
	}
}
