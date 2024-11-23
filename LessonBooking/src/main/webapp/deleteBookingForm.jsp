<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Booking</title>
    <link rel="stylesheet" href="CSS/lessonPage.css"> 
    <link rel="stylesheet" href="/booking/css/home.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1a0e2e;
            margin: 0;

        }
        h2 {
            color: white;
            text-align:center;
        }
        form {
            background-color: white;
            padding: 20px;
            margin:auto;
            border-radius: 5px;
            max-width:500px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 10px;
            color:#000000;
        }
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="checkbox"] {
            margin-right: 10px;
        }
        input[type="submit"] {
            background-color: #ff4d4d;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #cc0000;
        }
        .error {
            color: red;
            margin-bottom: 10px;
        }
    </style>

    
</head>
<body>
    <!--HEADER STARTS-->
    <header>
        <div class="container">
            <div class="header-content">
                <a href="#" class="logo">
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
    <!--HEADER ENDS-->
    
    <h2>Delete Booking</h2>
    <form action="DeleteServlet" method="post" onsubmit="return validateForm()">
        <label for="bookingId">Enter Booking ID to delete:</label>
        <input type="number" id="bookingId" name="bookingId" required>
        
        <label>
            <input type="checkbox" id="confirmDelete" name="confirmDelete" required>
            I confirm that I want to delete this booking
        </label>
        
        <input type="submit" value="Delete Booking">
    </form>
    
    <% if (request.getAttribute("message") != null) { %>
        <p class="error"><%= request.getAttribute("message") %></p>
    <% } %>
    
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
    <!--FOOTER ENDS-->
    
    <script>
        function validateForm() {
            var bookingId = document.getElementById("bookingId").value;
            var confirmDelete = document.getElementById("confirmDelete").checked;
            var errorMessage = "";

            if (bookingId === "" || bookingId <= 0) {
                errorMessage += "Please enter a valid booking ID.\n";
            }
            if (!confirmDelete) {
                errorMessage += "Please confirm the deletion by checking the checkbox.\n";
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