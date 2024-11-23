<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="C:\Users\Admin\Desktop\Only product\home.css">
    <style>
        :root {
            --bg-color: #121212;
            --text-color: #ffffff;
            --accent-color: #8c52ff;
            --card-bg: #1e1e1e;
            --hover-color: #2c2c2c;
            --footer-bg: #1e1e1e;
            --btn-hover-color: #7040d9;
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

        h1 {
            text-align: center;
            color: var(--accent-color);
        }

        /* Header Styling */
        header {
            background-color: var(--bg-color);
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
            font-size: 24px;
            color: var(--text-color);
            text-decoration: none;
        }

        .logo img {
            width: 50px;
            margin-right: 10px;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 20px;
            margin: 0;
            padding: 0;
        }

        nav ul li a {
            color: var(--text-color);
            text-decoration: none;
            font-weight: bold;
        }

        .login-button {
            color: var(--text-color);
            background-color: var(--accent-color);
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
        }

        .login-button:hover {
            background-color: var(--btn-hover-color);
        }

        form {
            background-color: var(--card-bg);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            margin: 0 auto;
            max-width: 400px;
            border: 2px solid var(--accent-color);
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: var(--text-color);
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid var(--hover-color);
            background-color: var(--bg-color);
            color: var(--text-color);
            border-radius: 4px;
        }

        input[type="submit"] {
            width: 100%;
            background-color: var(--accent-color);
            color: var(--text-color);
            border: none;
            padding: 12px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: var(--btn-hover-color);
        }

        .info {
            margin-top: 30px;
            text-align: center;
            color: var(--text-color);
        }

        .info p {
            margin-bottom: 10px;
        }

        .info a {
            color: var(--accent-color);
            text-decoration: none;
        }

        .info a:hover {
            text-decoration: underline;
        }

        /* Footer Styling */
        footer {
            background-color: var(--footer-bg);
            padding: 30px 0;
            text-align: center;
            color: var(--text-color);
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        .footer-links a {
            color: var(--text-color);
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }

        .footer-links a:hover {
            text-decoration: underline;
        }

        .social-icons a {
            margin: 0 10px;
            color: var(--text-color);
            font-size: 24px;
        }

        .copyright {
            margin-top: 20px;
            font-size: 14px;
            color: #ccc;
        }

        @media (max-width: 768px) {
            .header-content,
            .footer-content {
                flex-direction: column;
            }

            nav ul {
                flex-direction: column;
                gap: 10px;
            }
        }

    </style>

    <script>
        function validateForm() {
            let name = document.getElementById("txtName").value;
            let email = document.getElementById("txtEmail").value;
            let message = document.getElementById("txtMessage").value;

            // Check if Name is not empty
            if (name.trim() === "") {
                alert("Name is required.");
                return false;
            }

            // Check if Email is valid
            let emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            // Check if Message is not empty
            if (message.trim() === "") {
                alert("Message is required.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

    <!-- Header Section -->
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

    <div class="container">
        <h1>Contact Us</h1>
        <form action="ContactServlet" method="post" onsubmit="return validateForm()">
            <label for="txtName">Name:</label>
            <input type="text" id="txtName" name="txtName" required>

            <label for="txtEmail">Email:</label>
            <input type="email" id="txtEmail" name="txtEmail" required>
            
            <label for="txtMessage">Message:</label>
            <textarea id="txtMessage" name="txtMessage" rows="6" required></textarea>
            
            <input type="submit" value="Send Message">
        </form>

        <!-- Additional Text for Better Appearance -->
        <div class="info">
            <p>Thank you for reaching out to us! We value your feedback and will get back to you as soon as possible.</p>
            <p>For urgent inquiries, feel free to contact us directly at <a href="#">support@melodymart.com</a>.</p>
            <p>Our support team is available Monday through Friday, 9 AM to 5 PM.</p>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        <div class="container footer-content">
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
    </footer>