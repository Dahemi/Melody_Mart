<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %> <!-- Import ArrayList -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Deleted Successfully</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #8c52ff;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #8c52ff;
            color: #ffffff;
        }

        td {
            background-color: #1e1e1e;
        }

        h1 {
            color: #4CAF50;
        }
    </style>
</head>
<body>
    <h1>Event Deleted Successfully!</h1>
    <p>The event has been deleted. Here are the remaining events in the database:</p>

    <table>
        <tr>
            <th>Event ID</th>
            <th>Artist Name</th>
            <th>Event Name</th>
            <th>Event Date</th>
            <th>Event Venue</th>
            <th>Capacity</th>
            <th>Price</th>
        </tr>

        <!-- Iterate over the remaining events and display them in the table -->
        <%
            ArrayList<String[]> eventList = (ArrayList<String[]>) request.getAttribute("eventList");
            if (eventList != null && !eventList.isEmpty()) {
                for (String[] event : eventList) {
        %>
            <tr>
                <td><%= event[0] %></td>
                <td><%= event[1] %></td>
                <td><%= event[2] %></td>
                <td><%= event[3] %></td>
                <td><%= event[4] %></td>
                <td><%= event[5] %></td>
                <td><%= event[6] %></td>
            </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="7">No events available</td>
            </tr>
        <%
            }
        %>
    </table>
</body>
</html>
