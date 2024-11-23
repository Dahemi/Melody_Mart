<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/lessonPage.css">
    <link rel="stylesheet" href="CSS/edit-booking.css">
    <link rel="stylesheet" href="CSS/home.css">
    <title>Edit Booking - Melody Mart</title>
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
    
    <main>
        <div class="container">
            <button class="back-button" onclick="goBack()">← Back to Lessons</button>
            <div class="form-container">
                <h1>Edit Booking</h1>
                <form action="UpdateServlet" method="post" id="editForm" onsubmit="return validateForm()">
                    <label for="id">Your Booking ID:</label>
                    <input type="text" id="id" name="id" value="${bookingId}" pattern="^[0-9]+$" title="Booking ID should be a number" required>

                    <label for="lesson">New Lesson:</label>
                    <select id="lesson" name="lesson" required>
                        <option value="">Select a lesson</option>
                        <option value="Piano for Beginners">Piano for Beginners</option>
                        <option value="Advanced Piano Techniques">Advanced Piano Techniques</option>
                        <option value="Guitar Fundamentals">Guitar Fundamentals</option>
                        <option value="Rock Guitar Mastery">Rock Guitar Mastery</option>
                        <option value="Vocal Training Basics">Vocal Training Basics</option>
                        <option value="Advanced Vocal Techniques">Advanced Vocal Techniques</option>
                    </select>

                    <label for="date">New Date:</label>
                    <input type="date" id="date" name="date" required>

                    <label for="time">New Time:</label>
                    <input type="time" id="time" name="time" required>

                    <button type="submit" class="btn">Save Changes</button>
                </form>
            </div>
            <div id="messageContainer"></div>
        </div>
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
    <script>
        function goBack() {
            window.location.href = "lessonPage.jsp";
        }

        function performSearch() {
            // Implement search functionality
            console.log("Search functionality to be implemented");
        }

        function validateForm() {
            var bookingId = document.getElementById("id").value;
            var lesson = document.getElementById("lesson").value;
            var date = document.getElementById("date").value;
            var time = document.getElementById("time").value;
            var errorMessage = "";

            if (!bookingId || !/^\d+$/.test(bookingId)) {
                errorMessage += "Please enter a valid numeric Booking ID.\n";
            }
            if (lesson === "") {
                errorMessage += "Please select a lesson.\n";
            }
            if (date === "") {
                errorMessage += "Please select a valid date.\n";
            }
            if (time === "") {
                errorMessage += "Please select a valid time.\n";
            }

            if (errorMessage) {
                alert(errorMessage);
                return false; // Prevent form submission
            }
            return true; // Allow form submission
        }
    </script>
</body>
</html>