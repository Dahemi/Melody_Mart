package com.customer.dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.model.Customer;
import com.customer.util.DBConnect;


public class CustomerDBUtill {
	
	//object for all 
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;
		
	public static List<Customer> validate(String phone) {
			
			ArrayList<Customer> cus = new ArrayList<>();
		
			//validate
			try {
				//DBConnect	has static method called getconnection			
				con = DBConnect.getConnection();
				stat = con.createStatement();
				
				String sql = "select * from cbook where phone='"+phone+"'";
			    
			    rs = stat.executeQuery(sql);
			    
			    if(rs.next()) {
			    	int id =rs.getInt(1);
			    	String name = rs.getString(2);
			    	String nic = rs.getString(3);
			    	String email = rs.getString(4);
			    	String phone1 = rs.getString(5);
			    	String date = rs.getString(6);
			    	String time = rs.getString(7);
			    	String members = rs.getString(8);
			    	
			    	
			    	Customer c = new Customer(id,name,nic,email,phone1,date,time,members);
			    	cus.add(c);
			    }
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return cus;		
			
	}
	//InsertCustomer Method(Insert to database)
	public static boolean bookingInsert(String name, String nic,String email,String phone,String date,String time,String member) {
		
		boolean isSuccess = false;
		
        try {
        	con = DBConnect.getConnection();
		    stat = con.createStatement();
        	
		    //Query to Insert data to database
        	String sql = "INSERT INTO cbook VALUES(0,'"+name+"','"+nic+"','"+email+"','"+phone+"','"+date+"','"+time+"','"+member+"')";
        	
        	//integer variable
        	int rs = stat.executeUpdate(sql);
        	
        	//executeUpdate return 1 returns true and 0 returns false
        	
        	if(rs> 0){//when isSuceess true 
        		isSuccess = true;
        	}
        	else {
        		isSuccess = false;
        	}
        		
        	
        }
        catch(Exception e){
        	e.printStackTrace();
        	
        }
        
        
		return isSuccess;//return to InsertServlet
		
	}
	
	public static boolean bookingUpdate(String id,String name, String nic,String email,String phone,String date,String time,String members) {
		try {
			con = DBConnect.getConnection();
		    stat = con.createStatement();
		    
		    String sql = "update cbook set name='"+name+"', nic='"+nic+"',email='"+email+"',phone='"+phone+"',date='"+date+"',time='"+time+"',members='"+members+"'"
		    		+ "where id ='"+id+"'";
			
			int rs = stat.executeUpdate(sql);
			if(rs > 0){//when isSuceess true 
        		isSuccess = true;
        	}
        	else {
        		isSuccess = false;
        	}
			
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Reterive data
	public static List<Customer> getCustomerDetails(String id){
		int convertedID =Integer.parseInt(id);
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
		    stat = con.createStatement();
		    String sql = "Select * from cbook where id ='"+convertedID+"'";
			rs =stat.executeQuery(sql);
			
			while(rs.next()) {
				int Id =rs.getInt(1);
		    	String name = rs.getString(2);
		    	String nic = rs.getString(3);
		    	String email = rs.getString(4);
		    	String phone1 = rs.getString(5);
		    	String date = rs.getString(6);
		    	String time = rs.getString(7);
		    	String members = rs.getString(8);
		    	
		    	Customer c =new Customer(Id,name, nic, email, phone1, date, time,members);
		    	cus.add(c);
		    	
			}
		    
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return cus;
	}
	
	public static boolean bookingDelete(String id) {
		int convId = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
		    stat = con.createStatement();
		    String sql = "delete from cbook where id ='"+convId+"'";
			int r  =stat.executeUpdate(sql);
			
			
			if(r > 0){//when isSuceess true 
        		isSuccess = true;
        	}
        	else {
        		isSuccess = false;
        	}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
}
	



