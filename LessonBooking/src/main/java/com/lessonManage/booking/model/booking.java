package com.lessonManage.booking.model;

public class booking {

	int bookingID;
	String lessonName;
	String name;
	String date;
	String time;
	String phoneNo;
	String email;

	public booking() {

	}

	public booking(String lessonName,String name, String date, String time,String email, String phoneNo) {
		this.lessonName = lessonName;
		this.name = name;
		this.date = date;
		this.time = time;
		this.phoneNo = phoneNo;
		this.email = email;
	}

	//constructor with bookingID for reading records
	public booking(int bookingID,String lessonName,String name, String date, String time,String email, String phoneNo) {
		this.bookingID = bookingID;
		this.lessonName = lessonName;
		this.name = name;
		this.date = date;
		this.time = time;
		this.phoneNo = phoneNo;
		this.email = email;
	}

	//constructor fpr updatinf values
	public booking(String lessonName, String date, String time) {
		this.lessonName = lessonName;
		this.date = date;
		this.time = time;
	}

	//constructor to view bookings upto now - do not reveal personal info
	public booking(int bookingId, String lessonName, String name, String date, String time) {
		this.bookingID = bookingId;
		this.lessonName = lessonName;
		this.name = name;
		this.date = date;
		this.time = time;
	}

	// Getter for bookingId
    public int getBookingID() {
        return bookingID;
    }

	public String getLessonName() {
		return lessonName;
	}

	public String getName() {
		return name;
	}

	public String getDate() {
		return date;
	}

	public String getTime() {
		return time;
	}


	public String getEmail() {
		return email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setBookingID(int bookingId) {
        this.bookingID= bookingId;
    }
}

