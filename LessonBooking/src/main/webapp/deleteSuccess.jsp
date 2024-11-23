<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/booking/css/home.css">
    <title>Deletion Result</title>
    <style>
    	.container{
    		text-align:center;
    	}
    </style>
</head>
<body>
	<header>
        <div class="container">
            <div class="header-content">
                <a href="#" class="logo">
                    <img src="https://www.shutterstock.com/image-vector/guitar-music-logo-design-brand-260nw-2249431635.jpg" alt="Melody Mart Logo" />
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
                        <li><a href="booking/BookingFront/jsp">Audio Rooms</a></li>
                        <li><a href="/Artist/home.jsp">Artists</a></li>
                    </ul>
                </nav>
                <a href="loginLandingPage.jsp" class="login-button">
                    <i class="fas fa-user"></i> Login
                </a>
            </div>
        </div>
    </header>
    
    <div class="container">
        <h2>Booking Deletion Result</h2>
        <div class="message">
            <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
                if (message.contains("successfully")) {
            %>
                <p class="success"><%= message %></p>
            <% } else { %>
                <p class="error"><%= message %></p>
            <%
                }
            }
            %>
        </div>
        <a href="deleteBookingForm.jsp">Back to Delete Booking Form</a>
    </div>
    
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
    
</body>
</html>