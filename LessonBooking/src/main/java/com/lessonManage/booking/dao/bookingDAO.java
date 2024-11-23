package com.lessonManage.booking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.lessonManage.booking.model.booking;
import com.lessonManage.booking.util.DatabaseConnection;

public class bookingDAO {

    		//-----------CRUD Methods (Insert, Get by ID, Get All, Update, Delete)-------//


    // Method to insert a new booking
    public boolean insertBooking(booking book) throws SQLException, ClassNotFoundException {
        boolean rowInserted = false;
        String sql = "INSERT INTO booking (LessonName, name, date, time, email, phone) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection con = DatabaseConnection.getConnection();  // Use utility class for DB connection
             PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

            ps.setString(1, book.getLessonName());
            ps.setString(2, book.getName());
            ps.setString(3, book.getDate());
            ps.setString(4, book.getTime());
            ps.setString(5, book.getEmail());
            ps.setString(6, book.getPhoneNo());

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                try (ResultSet rs = ps.getGeneratedKeys()) {
                    if (rs.next()) {
                        int generatedBookingId = rs.getInt(1);
                        book.setBookingID(generatedBookingId);
                    }
                }
                rowInserted = true;
            }
        }catch (SQLException e) {
            System.err.println("Error inserting booking: " + e.getMessage());
            return false;
        }
        return rowInserted;
    }

    // Method to retrieve booking by ID
    public booking getBookingById(int bookingId) throws SQLException, ClassNotFoundException {
        booking book = null;
        String sql = "SELECT * FROM booking WHERE booking_id = ?";

        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, bookingId);
            try (ResultSet resultSet = ps.executeQuery()) {
                if (resultSet.next()) {
                    String lessonName = resultSet.getString("LessonName");
                    String name = resultSet.getString("name");
                    String date = resultSet.getString("date");
                    String time = resultSet.getString("time");
                    String email = resultSet.getString("email");
                    String phone = resultSet.getString("phone");

                    book = new booking(bookingId, lessonName, name, date, time, email, phone);
                }
            }
        } catch (SQLException e) {
            System.err.println("Error fetching booking by ID: " + e.getMessage());
        }
        return book;
    }

    // Method to retrieve all bookings
    public List<booking> getAllBookings() throws SQLException, ClassNotFoundException {
        List<booking> bookingList = new ArrayList<>();
        String sql = "SELECT * FROM booking";

        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet resultSet = ps.executeQuery()) {

            while (resultSet.next()) {
                int bookingId = resultSet.getInt("booking_id");
                String lessonName = resultSet.getString("LessonName");
                String name = resultSet.getString("name");
                String date = resultSet.getString("date");
                String time = resultSet.getString("time");

                booking book = new booking(bookingId, lessonName, name, date, time);
                bookingList.add(book);
            }
        }catch (SQLException e) {
            System.err.println("Error fetching all bookings: " + e.getMessage());
        }
        return bookingList;
    }

    // Method to update existing booking
    public boolean updateBooking(booking book) throws SQLException, ClassNotFoundException {
        boolean rowUpdated = false;
        String sql = "UPDATE booking SET LessonName = ?, date = ?, time = ? WHERE booking_id = ?";

        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, book.getLessonName());
            ps.setString(2, book.getDate());
            ps.setString(3, book.getTime());
            ps.setInt(4, book.getBookingID());

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                rowUpdated = true;
            }
        }catch (SQLException e) {
            System.err.println("Error updating booking: " + e.getMessage());
            return false;
        }
        return rowUpdated;
    }

    // Method to delete a booking
    public boolean deleteBooking(int bookingId) throws SQLException, ClassNotFoundException {
        boolean rowDeleted = false;
        String sql = "DELETE FROM booking WHERE booking_id = ?";

        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, bookingId);
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                rowDeleted = true;
            }
        }catch (SQLException e) {
            System.err.println("Error deleting booking: " + e.getMessage());
            return false;
        }
        return rowDeleted;
    }
}
