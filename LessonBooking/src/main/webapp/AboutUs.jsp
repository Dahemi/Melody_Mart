<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="CSS/home.css">
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

        .about-content {
            background-color: var(--card-bg);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            margin: 0 auto;
            max-width: 800px;
            border: 2px solid var(--accent-color);
            text-align: center;
        }

        p {
            margin-bottom: 20px;
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
        <h1>About Us</h1>
        <div class="about-content">
            <p>Welcome to Melody Mart, where music and passion collide. Our journey started with a vision to create a hub for musicians, artists, and music lovers worldwide. Whether you're looking for musical instruments, renting audio rooms, or exploring lessons from top-tier artists, we’ve got you covered.</p>
            <p>At Melody Mart, we pride ourselves on providing high-quality services and products, ensuring that every customer finds exactly what they need. Our commitment is not only to offer you the best in music, but also to inspire creativity and foster talent.</p>
            <p>Join us and become a part of our growing community of musicians, where the beat never stops, and the music never fades!</p>
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

</body>
</html>