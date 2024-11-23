<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lessonManage.booking.model.booking" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Details</title>
    <link rel="stylesheet" href="CSS/lessonPage.css"> 
    <link rel="stylesheet" href="CSS/login.css">
    <style>
        :root {
            --bg-color: #121212;
            --text-color: #ffffff;
            --accent-color: #8c52ff;
            --card-bg: #2a2a40;
            --hover-color: #3a3a55;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Header styles */
        header {
            background-color: var(--card-bg);
            padding: 10px 0;
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
            color: var(--text-color);
            text-decoration: none;
            font-size: 1.5em;
        }

        .logo img {
            height: 40px;
            margin-right: 10px;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
            display: flex;
        }

        nav ul li {
            margin-right: 20px;
        }

        nav ul li a {
            color: var(--text-color);
            text-decoration: none;
        }

        .login-button {
            background-color: var(--accent-color);
            color: var(--text-color);
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
        }

        /* Booking details styles */
        h2 {
            color: var(--accent-color);
            text-align: center;
        }

        table {
            width: 100%;
            margin-top: 20px;
            background-color: var(--card-bg);
            border-radius: 8px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid var(--hover-color);
        }

        th {
            background-color: var(--accent-color);
            color: var(--text-color);
        }

        /* Footer styles */
        footer {
            background-color: var(--card-bg);
            color: var(--text-color);
            padding: 20px 0;
            margin-top: 40px;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .footer-links a {
            color: var(--text-color);
            text-decoration: none;
            margin-right: 15px;
        }

        .social-icons a {
            color: var(--text-color);
            font-size: 1.2em;
            margin-left: 10px;
        }

        .copyright {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
	
    <header>
        <div class="container">
            <div class="header-content">
                <a href="/booking/images/logo2.png" class="logo">
                    <img src="/booking/images/logo2.png" alt="Melody Mart Logo" />
                    Melody Mart
                </a>
                <nav>
                    <ul>
                        <li><a href="homePage.jsp">Home</a></li>
                        <li><a href="#products">Products</a></li>
                        <li><a href="lessonPage.jsp">Lessons</a></li>
                        <li><a href="/booking/BookingFront.jsp">Audio Rooms</a></li>
                        <li><a href="#artists">Artists</a></li>
                    </ul>
                </nav>
                <a href="loginLandingPage.jsp" class="login-button">
                    <i class="fas fa-user"></i> Login
                </a>
            </div>
        </div>
    </header>
    
    <main class="container">
    	 <h2>Booking Details</h2>
        <%
        booking book = (booking) request.getAttribute("booking");
        if (book != null) {
        %>
        <table>
            <tr>
                <th>Booking ID</th>
                <td><%= book.getBookingID() %></td>
            </tr>
            <tr>
                <th>Lesson Name</th>
                <td><%= book.getLessonName() %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= book.getName() %></td>
            </tr>
            <tr>
                <th>Date</th>
                <td><%= book.getDate() %></td>
            </tr>
            <tr>
                <th>Time</th>
                <td><%= book.getTime() %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%= book.getEmail() %></td>
            </tr>
            <tr>
                <th>Phone</th>
                <td><%= book.getPhoneNo() %></td>
            </tr>
        </table>
        <%
        } else {
        %>
        <p>No booking found.</p>
        <%
        }
        %>
        <br>
        <a href="lessonPage.jsp" class="login-button">Back to View Booking Form</a>
    </main>
    
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-links">
                    <a href="#">About Us</a>
                    <a href="#">Contact</a>
                    <a href="#">Terms of Service</a>
                    <a href="#">Privacy Policy</a>
                </div>
                <div class="social-icons">
                    <a href="#" aria-label="Facebook"><i class="fab fa-facebook"></i></a>
                    <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2024 Melody Mart. All rights reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>