package com.artist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.artist.model.Event;
import com.artist.util.DatabaseConnection;

public class ArtistDAO {
    
    // Method to insert an event
    public boolean insertEvent(Event event) throws SQLException {
        String sql = "INSERT INTO event_details (eid, aname, ename, edate, evenue, ecapacity, eprice) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, event.getId());
            ps.setString(2, event.getArtistName());
            ps.setString(3, event.getEventName());
            ps.setString(4, event.getDate());
            ps.setString(5, event.getVenue());
            ps.setString(6, event.getCapacity());
            ps.setString(7, event.getPrice());
            return ps.executeUpdate() > 0;
        }
    }

    // Method to update an event
    public boolean updateEvent(Event event) throws SQLException {
        String sql = "UPDATE event_details SET aname=?, ename=?, edate=?, evenue=?, ecapacity=?, eprice=? WHERE eid=?";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, event.getArtistName());
            ps.setString(2, event.getEventName());
            ps.setString(3, event.getDate());
            ps.setString(4, event.getVenue());
            ps.setString(5, event.getCapacity());
            ps.setString(6, event.getPrice());
            ps.setString(7, event.getId());
            return ps.executeUpdate() > 0;
        }
    }

    // Method to delete an event
    public boolean deleteEvent(String eventId) throws SQLException {
        String sql = "DELETE FROM event_details WHERE eid=?";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, eventId);
            return ps.executeUpdate() > 0;
        }
    }

    // Method to read an event
    public Event readEvent(String eventId) throws SQLException {
        String sql = "SELECT * FROM event_details WHERE eid=?";
        try (Connection con = DatabaseConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, eventId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Event(
                        rs.getString("eid"),
                        rs.getString("aname"),
                        rs.getString("ename"),
                        rs.getString("edate"),
                        rs.getString("evenue"),
                        rs.getString("ecapacity"),
                        rs.getString("eprice")
                    );
                }
            }
        }
        return null;
    }

    
}
