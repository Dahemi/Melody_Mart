<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #000000;
        }
        .success-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        h2 {
            color: #8c52ff;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #8c52ff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>

<div class="success-container">
        <h2>Booked Successfully!</h2>
        <p>${message}</p>

        <!-- Booking details section -->
        <h3>Here are your booking details:</h3>
        	<strong>Booking ID:</strong> ${bookingId}<br>
        	<strong>Lesson:</strong> ${lessonName}<br>
            <strong>Date:</strong> ${date}<br>
           	<strong>Time:</strong> ${time}<br>
        
        <a href="lessonPage.jsp">Back to Home</a>
   </div>     
</html>