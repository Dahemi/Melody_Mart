<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Event Insertion Success</title>
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
        width: 50%; /* Reduce the size of the table */
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
    <h1 style="text-align:center;">Event Inserted Successfully!</h1>

    <table>
        <tr>
            <th>Event ID</th>
            <th>Artist Name</th>
            <th>Event Name</th>
            <th>Event Date</th>
            <th>Venue</th>
            <th>Capacity</th>
            <th>Ticket Price</th>
        </tr>
        <tr>
        
        	
            <td>${eventId}</td>
            <td>${artistName}</td>
            <td>${eventName}</td>
            <td>${eventDate}</td>
            <td>${eventVenue}</td>
            <td>${eventCapacity}</td>
            <td>${ticketPrice}</td>
        </tr>
    </table>
</body>
</html>
