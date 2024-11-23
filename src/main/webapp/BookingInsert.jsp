<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	
    <link rel="stylesheet" href ="css/home.css">
   <link rel="stylesheet" href="css/Form.css">
    
<title>Insert title here</title>
</head>
<body>
<div>
  <!--HEADER STARTS-->
   <header>
        <div class="hcontainer">
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
                        <li><a href="/LessonManage/homePage.jsp">Home</a></li>
                        <li><a href="/LessonManage/productHome.jsp">Products</a></li>
                        <li><a href="/LessonManage/lessonPage.jsp">Lessons</a></li>
                        <li><a href="BookingFront/jsp">Audio Rooms</a></li>
                        <li><a href="/LessonManage/artistHome.jsp">Artists</a></li>
                    </ul>
                </nav>
                <a href="/LessonManage/loginLandingPage.jsp" class="login-button">
                    <i class="fas fa-user"></i> Login
                </a>
            </div>
        </div>
    </header>
       <!--HEADER ENDS-->
    
    <!-- form -->
      <div class="cont">
       
        <h1>Book a Audio Recording Room</h1>
        <form action="InsertServlet" method ="POST">
         
         	<label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="nic">NIC:</label>
            <input type="text" id="nic" name="nic" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <div id="emailError" class="error"></div>
            
            <label for="phone">Phone Number:</label>
            <input type="tel" id="phone" name="phone" required>
            <div id="phoneError" class="error"></div>
            
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>

            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required>

            <label for="members">Members:</label>
            <input type="number" id="name" name="members" required>
            
            <button type="submit">Confirm Booking</button>
        </form>
        <div id="confirmation">
            Your booking has been confirmed! We'll contact you shortly with further details.
        </div>
    </div>


	
	   <!--Manage Bookings section -->
        <div class="manage-bookings">
            <h2>Manage Your Bookings</h2>
            <button id="viewBookingsBtn" class="book-now" onclick="redirectToview()" type = "submit">View My Bookings</button>
            <button id="viewBookingsBtn" class="book-now" onclick="redirectToUpdate()" type = "submit">Edit My Bookings</button>
            <button id="viewBookingsBtn" class="book-now" onclick="redirectToDelete()" type = "submit">Delete My Bookings</button>
            <div id="bookingList" class="booking-list"></div>
        </div>

        <!--FOOTER-->
         <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-links">
                <a href="/LessonPage/AboutUs.jsp">About Us</a>
                <a href="/LessonPage/ContactUs.jsp">Contact</a>
                <a href="/LessonManage/Terms&C.jsp">Terms of Service</a>
                <a href="/LessonManage/provacyPolicy.jsp">Privacy Policy</a>
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
       
    </div>
    
    <script>
        function redirectToBooking() {
        // Redirect to booking.html
        window.location.href = "BookingInsert.jsp";
        }
        function redirectToview() {
        // Redirect to booking.html
        window.location.href = "BookingRead.jsp";
        }
        function redirectToUpdate() {
        // Redirect to booking.html
        window.location.href = "BookingUpdate.jsp";
        }
		function redirectToDelete() {
        // Redirect to booking.html
        window.location.href = "BookingDelete.jsp";
        }
    </script>
 
</div>
</body>
</html>