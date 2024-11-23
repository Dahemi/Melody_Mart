<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Managing Homepage</title>
    <style>
        :root {
            --bg-color: #121212;
            --text-color: #ffffff;
            --accent-color: #8c52ff;
            --btn-hover-color: #7040d9;
            --card-bg: #1e1e1e;
            --hover-color: #2c2c2c;
            --footer-bg: #101010;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            margin: 0;
            padding: 0;
        }

        h1 {
            font-size: 2.5rem;
            color: var(--accent-color);
            margin-bottom: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }

        .main-content {
            background-color: var(--card-bg);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.3);
            margin-top: 40px;
        }

        .btn {
            display: inline-block;
            padding: 15px 30px;
            margin: 10px;
            background-color: var(--accent-color);
            color: var(--text-color);
            border: none;
            border-radius: 8px;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: var(--btn-hover-color);
            box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.3);
        }

        footer {
            background-color: var(--footer-bg);
            padding: 30px 0;
            text-align: center;
            color: var(--text-color);
        }

        footer a {
            color: var(--text-color);
            margin: 0 15px;
            text-decoration: none;
        }

        .header-content, .footer-content {
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
            padding: 0;
            margin: 0;
            display: flex;
        }

        nav ul li {
            margin-left: 15px;
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

        .social-icons a {
            margin: 0 10px;
            color: var(--text-color);
            font-size: 24px;
        }

        .footer-links a {
            color: var(--text-color);
            margin: 0 10px;
            font-weight: bold;
        }

        .footer-links a:hover {
            text-decoration: underline;
        }

        .copyright {
            margin-top: 20px;
            font-size: 14px;
            color: #ccc;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <div class="header-content">
                <a href="#" class="logo">
                    <img src="https://www.shutterstock.com/image-vector/guitar-music-logo-design-brand-260nw-2249431635.jpg" alt="Melody Mart Logo" />
                    Melody Mart
                </a>
                <nav>
                    <ul>
                        <li><a href="/LessonManage/homePage.jsp">Home</a></li>
                        <li><a href="/lessonManage/productHome.jsp">Products</a></li>
                        <li><a href="/LessonManage/lessonPage.jsp">Lessons</a></li>
                        <li><a href="/booking/BookingFront.jsp">Audio Rooms</a></li>
                        <li><a href="/LessonManage/artistHome.jsp">Artists</a></li>
                    </ul>
                </nav>
                <a href="/LessonManage/loginLandingPage.jsp" class="login-button">
                    <i class="fas fa-user"></i> Login
                </a>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container main-content">
        <h1>Product Management</h1>
        <p>Welcome to the Product Management Page. Please select an option to manage Products:</p>
        <a href="InsertProduct.jsp" class="btn">Add new Product</a>
        <a href="UpdateProduct.jsp" class="btn">Update Products</a>
        <a href="ReadProduct.jsp" class="btn">View Available Products</a>
        <a href="DeleteProduct.jsp" class="btn">Remove Products</a>
    </div>

    <!-- Footer Section -->
    <footer>
        <div class="container footer-content">
            <div class="footer-links">
                <a href="/LessonManage/AboutUs.jsp">About Us</a>
                <a href="/LessonManage/ContactUs.jsp">Contact</a>
                <a href="/LessonManage/Terms&C.jsp">Terms of Service</a>
                <a href="/LessonManage/privacyPolicy.jsp">Privacy Policy</a>
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