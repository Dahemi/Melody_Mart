<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/home.css">
    <title>View Bookings - Melody Mart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
            background-color: var(--background-color);
            color: var(--text-color);
        }

        main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 0;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            max-width: 1000px;
            background-color: var(--secondary-color);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        caption {
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 20px;
            color: var(--accent-color);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid var(--primary-color);
        }

        th {
            background-color: var(--accent-color);
            color: #ffffff;
            text-transform: uppercase;
            font-weight: bold;
        }

        tr:hover {
            background-color: rgba(155, 77, 202, 0.1);
        }

        p {
            font-size: 18px;
            text-align: center;
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
                <div class="search-container">
                    <input type="text" id="search-input" placeholder="Search for products...">
                    <button onclick="performSearch()">Search</button>
                </div>
                <nav>
                    <ul>
                        <li><a href="homePage.jsp">Home</a></li>
                        <li><a href="productHome.jsp">Products</a></li>
                        <li><a href="lessonPage.jsp">Lessons</a></li>
                        <li><a href="/bookingBookingFront.jsp/">Audio Rooms</a></li>
                        <li><a href="artistHome.jsp">Artists</a></li>
                    </ul>
                </nav>
                <a href="loginLandingPage.jsp" class="login-button">
                    <i class="fas fa-user"></i> Login
                </a>
            </div>
        </div>
    </header>

    <main>
        <c:if test="${not empty bookings}">
            <table>
                <caption>Booking List</caption>
                <tr>
                    <th>BookingID</th>
                    <th>Lesson Name</th>
                    <th>Name</th>
                    <th>Scheduled Date</th>
                    <th>Scheduled Time</th>
                </tr>

                <c:forEach var="bl" items="${bookings}">
                    <tr>
                        <td>${bl.bookingID}</td>
                        <td>${bl.lessonName}</td>
                        <td>${bl.name}</td>
                        <td>${bl.date}</td>
                        <td>${bl.time}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>

        <c:if test="${empty bookings}">
            <p>No bookings found.</p>
        </c:if>
    </main>

    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-links">
	                <a href="AboutUs.jsp">About Us</a>
	                <a href="ContactUs.jsp">Contact</a>
	                <a href="Terms&C.jsp">Terms of Service</a>
	                <a href="privacyPolicy.jsp">Privacy Policy</a>
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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
</body>
</html>