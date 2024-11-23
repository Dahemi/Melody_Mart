<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.Map"
import="com.artist.model.Event" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Details</title>
<style>
body {
    background-color: #0d0d0d; /* Black background */
    color: #fff;
    font-family: Arial, sans-serif;
}
h1 {
    color: #33cccc; /* Light cyan color for heading */
    text-align: center; /* Center-align the heading */
}
table {
    width: 80%; /* Increased width to accommodate more columns */
    margin: auto; /* Center the table */
    border-collapse: collapse;
    background-color: #1c1c1c; /* Dark gray background for table */
    color: #fff; /* White text */
}
table, th, td {
    border: 1px solid #33cccc; /* Light cyan border */
}
th, td {
    padding: 10px;
    text-align: left;
}
th {
    background-color: #2b2b2b; /* Slightly lighter gray for headers */
    color: #33cccc; /* Cyan text color for headers */
}
td {
    background-color: #262626; /* Darker gray for table rows */
}
</style>
</head>
<body>
    <h1>Here are your event details:</h1>

    <%
    Event event = (Event) request.getAttribute("event");

    if (event != null) {
    %>
    <table>
        <thead>
            <tr>
                <th>Event ID</th>
                <th>Artist Name</th>
                <th>Event Name</th>
                <th>Event Date</th>
                <th>Event Venue</th>
                <th>Capacity</th>
                <th>Ticket Price</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= event.getId() %></td>
                <td><%= event.getArtistName() %></td>
                <td><%= event.getEventName() %></td>
                <td><%= event.getDate() %></td>
                <td><%= event.getVenue() %></td>
                <td><%= event.getCapacity() %></td>
                <td><%= event.getPrice() %></td>
            </tr>
        </tbody>
    </table>
    <%
    } else {
    %>
    <p>No event details found.</p>
    <%
    }
    %>

</body>
</html>