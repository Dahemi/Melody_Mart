<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music Lessons - Melody Mart</title>
    <link rel="stylesheet" href="CSS/lessonPage.css"> 
    <link rel="stylesheet" href="CSS/home.css">
     
</head>
<body>

    <!--HEADER STARTS-->
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
                        <li><a href="productHome.jsp">Products</a></li>
                        <li><a href="lessonPage.jsp">Lessons</a></li>
                        <li><a href="/booking/BookingFront.jsp">Audio Rooms</a></li>
                        <li><a href="artistHome.jsp">Artists</a></li>
                    </ul>
                </nav>
                <a href="loginLandingPage.jsp" class="login-button">
                <i class="fas fa-user"></i> Login
            </a>
        </div>
    </div>
	</header>
    <!--HEADER ENDS-->

    <div class="container">
        <h1 style="font-size:60px">Unlock your Music potential</h1>

        <!--Tutor List-->
        <div class="tutor-list">
            <div class="tutor-card">
                <img src="https://www.shutterstock.com/image-photo/young-happy-business-woman-sitting-260nw-2223351415.jpg" alt="Sarah Johnson" class="tutor-photo">
                <h2 class="tutor-name">Sarah Johnson</h2>
                <p class="tutor-bio">Sarah is a classically trained pianist with over 10 years of teaching experience.</p>
                <div class="lesson">
                    <p class="lesson-title">Piano for Beginners</p>
                    <p>Skill Level: Beginner</p>
                    <p>Duration: 45 minutes</p>
                    <p>Price: $40 - $60 per lesson</p>
                    <button class="book-now" onclick="redirectToBooking()">Book Now</button>
                </div>
                <div class="lesson">
                    <p class="lesson-title">Advanced Piano Techniques</p>
                    <p>Skill Level: Advanced</p>
                    <p>Duration: 60 minutes</p>
                    <p>Price: $70 - $90 per lesson</p>
                    <button class="book-now" onclick="redirectToBooking()">Book Now</button>
                </div>
            </div>
            <div class="tutor-card">
                <img src="https://www.shutterstock.com/image-photo/close-portrait-cheerful-man-glasses-260nw-2304273735.jpg" alt="Mike Thompson" class="tutor-photo">
                <h2 class="tutor-name">Mike Thompson</h2>
                <p class="tutor-bio">Mike is a versatile guitarist specializing in rock, blues, and jazz.</p>
                <div class="lesson">
                    <p class="lesson-title">Guitar Fundamentals</p>
                    <p>Skill Level: Beginner to Intermediate</p>
                    <p>Duration: 50 minutes</p>
                    <p>Price: $45 - $65 per lesson</p>
                    <button class="book-now" onclick="redirectToBooking()">Book Now</button>
                </div>
                <div class="lesson">
                    <p class="lesson-title">Rock Guitar Mastery</p>
                    <p>Skill Level: Intermediate to Advanced</p>
                    <p>Duration: 60 minutes</p>
                    <p>Price: $60 - $80 per lesson</p>
                    <button class="book-now" onclick="redirectToBooking()">Book Now</button>

                </div>
            </div>  
        </div>
        <!--Tutor list ends-->
        
        <div class="manage-bookings">
		<form action="ViewServlet" method="post">
				<h3><center>Everyone is booking their lessons</center></h3>
        		<button id="viewBookingsBtn" class="book-now"  type="submit">View Bookings Up to NOW.</button>
    	</form>
    	</div>
    	
        <!--Manage Bookings section -->
        <div class="manage-bookings">
            <h2>Manage Your Musical Journey</h2>
            
    		
    		<form action="SearchBooking.jsp" method="post">
        		<button id="viewBookingsBtn" class="book-now"  type="submit">Want to view your Bookings ? </button>
    		</form>
    		
            <button id="viewBookingsBtn" class="book-now" onclick="redirectToEdit()">Edit My Bookings</button>
            <button id="viewBookingsBtn" class="book-now" onclick="redirectToDelete()">Delete My Bookings</button>
            <div id="bookingList" class="booking-list"></div>
        </div>

        <!--FOOTER-->
		        
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
        <!--FOOTER ENDS -->
        

    </div>
    
    <script>
        function redirectToBooking() {
        // Redirect to booking.html
        window.location.href = "bookingForm.jsp";
        }

        function redirectToEdit() {
        // Redirect to booking.html
        window.location.href = "edit-booking.jsp";
        }

        function redirectToDelete() {
        // Redirect to booking.html
        window.location.href = "deleteBookingForm.jsp";
        }
    </script>
</body>
</html>