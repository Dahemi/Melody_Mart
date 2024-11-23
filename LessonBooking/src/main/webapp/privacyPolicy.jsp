<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home.css">
    <title>Privacy Policy - Melody Mart</title>
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
        <section id="privacy-policy" class="section">
            <div class="container">
                <h1>Privacy Policy</h1>
                <p>Last updated: [Current Date]</p>
                
                <h2>1. Introduction</h2>
                <p>Welcome to Melody Mart. We respect your privacy and are committed to protecting your personal data. This privacy policy will inform you about how we look after your personal data when you visit our website and tell you about your privacy rights and how the law protects you.</p>

                <h2>2. The Data We Collect</h2>
                <p>We may collect, use, store and transfer different kinds of personal data about you, including:</p>
                <ul>
                    <li>Identity Data: first name, last name, username</li>
                    <li>Contact Data: email address, telephone number, billing address</li>
                    <li>Financial Data: payment card details (processed securely through our payment processor)</li>
                    <li>Transaction Data: details of products and services you have purchased from us</li>
                    <li>Technical Data: internet protocol (IP) address, login data, browser type and version</li>
                    <li>Profile Data: your username and password, purchases or orders made by you, your interests, preferences, feedback and survey responses</li>
                    <li>Usage Data: information about how you use our website, products and services</li>
                    <li>Marketing and Communications Data: your preferences in receiving marketing from us and our third parties and your communication preferences</li>
                </ul>

                <h2>3. How We Use Your Data</h2>
                <p>We use your data to provide you with the best possible experience when using Melody Mart. This includes:</p>
                <ul>
                    <li>Managing your account and providing our services (e.g., playlist management, music lessons)</li>
                    <li>Processing and delivering your orders</li>
                    <li>Personalizing your experience and delivering relevant content</li>
                    <li>Improving our website, products/services, marketing, and customer relationships</li>
                    <li>Communicating with you about products, services, and events</li>
                    <li>Administering and protecting our business and website</li>
                </ul>

                <h2>4. Data Sharing and Third Parties</h2>
                <p>We may share your personal data with:</p>
                <ul>
                    <li>Service providers who provide IT and system administration services</li>
                    <li>Professional advisers including lawyers, bankers, auditors and insurers</li>
                    <li>Revenue & Customs, regulators and other authorities</li>
                    <li>Third parties to whom we may choose to sell, transfer, or merge parts of our business or our assets</li>
                </ul>

                <h2>5. Data Security</h2>
                <p>We have put in place appropriate security measures to prevent your personal data from being accidentally lost, used or accessed in an unauthorized way, altered or disclosed. We limit access to your personal data to those employees, agents, contractors and other third parties who have a business need to know.</p>

                <h2>6. Your Legal Rights</h2>
                <p>Under certain circumstances, you have rights under data protection laws in relation to your personal data, including the right to:</p>
                <ul>
                    <li>Request access to your personal data</li>
                    <li>Request correction of your personal data</li>
                    <li>Request erasure of your personal data</li>
                    <li>Object to processing of your personal data</li>
                    <li>Request restriction of processing your personal data</li>
                    <li>Request transfer of your personal data</li>
                    <li>Right to withdraw consent</li>
                </ul>

                <h2>7. Cookies</h2>
                <p>We use cookies to distinguish you from other users of our website. This helps us to provide you with a good experience when you browse our website and also allows us to improve our site.</p>

                <h2>8. Changes to This Privacy Policy</h2>
                <p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page and updating the "Last updated" date at the top of this Privacy Policy.</p>

                <h2>9. Contact Us</h2>
                <p>If you have any questions about this Privacy Policy, please contact us at:</p>
                <p>Email: privacy@melodymart.com</p>
                <p>Address: [Your Company Address]</p>
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