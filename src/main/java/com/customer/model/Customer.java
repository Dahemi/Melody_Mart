package com.customer.model;

public class Customer {
	private int id;
	private String name;
	private String nic;
	private String email;
	private String phone;
	private String date;
	private String time;
	private String members;
	
	

	public Customer(int id, String name, String nic, String email,String phone, String date, String time,String members) {
		super();
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.email = email;
		this.phone = phone;
		this.date = date;
		this.time = time;
		this.members = members;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getNic() {
		return nic;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}

	public String getMembers() {
		return members;
	}

	
	

	

}
