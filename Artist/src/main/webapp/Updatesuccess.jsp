<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Details</title>
<style>
body {
    background-color: #0d0d0d;
    color: #fff;
    font-family: Arial, sans-serif;
    padding: 20px;
}
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}
th, td {
    border: 1px solid #33cccc;
    padding: 10px;
    text-align: left;
}
th {
    background-color: #0d0d0d;
    color: #33cccc;
    font-weight: bold;
}
td {
    background-color: #1a1a1a;
}
</style>
</head>
<body>
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
        <td><%= request.getParameter("txtID") %></td>
        <td><%= request.getParameter("txtaname") %></td>
        <td><%= request.getParameter("txtname") %></td>
        <td><%= request.getParameter("txtdate") %></td>
        <td><%= request.getParameter("txtvenue") %></td>
        <td><%= request.getParameter("txtcap") %></td>
        <td><%= request.getParameter("txtprice") %></td>
    </tr>
</table>

<p><a href="InsertEvent.jsp">Add Another Event</a></p>
        
</body>
</html>