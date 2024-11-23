<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home.css">
    <title>Terms and Conditions - Melody Mart</title>
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
                <a href="loginLandingPage.html" class="login-button">
                    <i class="fas fa-user"></i> Login
                </a>
            </div>
        </div>
    </header>

    <main>
        <section id="terms-and-conditions" class="section">
            <div class="container">
                <h1>Terms and Conditions</h1>
                <p>Welcome to Melody Mart! By accessing or using our website, you agree to the following terms and conditions. Please read them carefully.</p>

                <h2>1. General Use</h2>
                <p>1.1. By using this website, you agree to comply with and be bound by these terms and any applicable laws and regulations.  
                1.2. Melody Mart reserves the right to change or modify these terms at any time without prior notice. Continued use of the website implies acceptance of the updated terms.</p>

                <h2>2. User Accounts</h2>
                <p>2.1. To access certain features of the website (e.g., playlist management, event publishing), you must create an account. You are responsible for keeping your login credentials secure.  
                2.2. Users must provide accurate and up-to-date information when registering. Melody Mart reserves the right to suspend or terminate accounts with false information.  
                2.3. By creating an account, you consent to receive communications from Melody Mart related to account management, promotional offers, and updates.</p>

                <h2>3. Purchases and Payments</h2>
                <p>3.1. You can purchase music products, lessons, and other services via the website. All payments are securely processed through third-party payment gateways.  
                3.2. Prices listed on the website are subject to change at any time without notice.  
                3.3. Refunds and cancellations are governed by our <a href="#">Refund Policy</a>. You must review this policy before making any purchases.</p>

                <h2>4. Playlists and User Content</h2>
                <p>4.1. Registered users can create, edit, and share personal music playlists.  
                4.2. Any content uploaded by users (e.g., playlists, reviews, event details) must not violate copyright laws or infringe upon the rights of others.  
                4.3. Melody Mart reserves the right to remove any content deemed inappropriate or in violation of these terms.</p>

                <h2>5. Artist Event Publishing</h2>
                <p>5.1. Artists may upload event details and promote their performances on the website.  
                5.2. Melody Mart is not responsible for the accuracy or reliability of event information provided by artists.  
                5.3. Melody Mart reserves the right to approve, reject, or remove any event listings.</p>

                <h2>6. Studio Booking</h2>
                <p>6.1. Users may book studio sessions through the website. All bookings are subject to availability and confirmation.  
                6.2. Studio cancellations and rescheduling are subject to our <a href="#">Studio Booking Policy</a>.</p>

                <h2>7. Intellectual Property</h2>
                <p>7.1. All content on this website, including but not limited to text, graphics, logos, images, and software, is the property of Melody Mart or its licensors. You may not copy, distribute, or reproduce any part of this content without explicit permission.  
                7.2. Users retain ownership of their original content but grant Melody Mart a non-exclusive, royalty-free license to use, display, and distribute the content in connection with the services provided by the website.</p>

                <h2>8. Prohibited Activities</h2>
                <p>8.1. You may not use the website for unlawful purposes, such as engaging in fraud, violating intellectual property rights, or harming other users.  
                8.2. Any attempts to hack, disable, or interfere with the operation of the website will result in immediate suspension and potential legal action.</p>

                <h2>9. Limitation of Liability</h2>
                <p>9.1. Melody Mart is not liable for any direct or indirect damages arising from the use or inability to use the website, including, but not limited to, loss of data, profits, or business opportunities.  
                9.2. While we strive to keep the website secure and operational, we do not guarantee uninterrupted access, error-free operation, or immunity from cybersecurity threats.</p>

                <h2>10. Governing Law</h2>
                <p>10.1. These terms are governed by the laws of [Your Country/Region], without regard to conflict of law principles.  
                10.2. Any disputes arising from the use of the website will be subject to the exclusive jurisdiction of the courts in [Your City/Region].</p>

                <h2>11. Contact Information</h2>
                <p>If you have any questions or concerns about these Terms and Conditions, please contact us at [Contact Information] or through our <a href="#">Contact Page</a>.</p>
            </div>
        </section>
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
