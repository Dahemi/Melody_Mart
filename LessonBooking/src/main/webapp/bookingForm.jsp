<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book a Lesson - Melody Mart</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        :root {
            --primary-color: #2D1A4A;
            --secondary-color: #1A0E2E;
            --accent-color: #9B4DCA;
            --text-color: #FFFFFF;
            --background-color: #120A1F;
        }

        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
        }

        header {
            background-color: var(--primary-color);
            padding: 15px 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
            color: var(--text-color);
            text-decoration: none;
            font-size: 24px;
            font-weight: 700;
        }

        .logo img {
            height: 40px;
            margin-right: 10px;
        }

        nav ul {
            display: flex;
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: var(--text-color);
            text-decoration: none;
            font-weight: 600;
        }

        .search-container {
            display: flex;
            align-items: center;
        }

        .search-container input {
            padding: 8px;
            border: none;
            border-radius: 4px 0 0 4px;
        }

        .search-container button {
            padding: 8px 12px;
            background-color: var(--accent-color);
            color: white;
            border: none;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
        }

        .login-button {
            background-color: var(--accent-color);
            color: white;
            padding: 8px 15px;
            border-radius: 4px;
            text-decoration: none;
            font-weight: 600;
        }

        main {
            padding: 40px 0;
        }

        .form-container {
            background-color: var(--secondary-color);
            max-width: 500px;
            margin: 0 auto;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: var(--accent-color);
            margin-bottom: 30px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            margin-bottom: 5px;
        }

        input, select {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid var(--accent-color);
            border-radius: 4px;
            background-color: var(--primary-color);
            color: var(--text-color);
        }

        button {
            background-color: var(--accent-color);
            color: white;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 600;
            margin-top: 20px;
        }

        button:hover {
            background-color: #7b3aa0;
        }

        .back-button {
            background-color: transparent;
            color: var(--accent-color);
            border: 1px solid var(--accent-color);
            padding: 8px 15px;
            text-decoration: none;
            display: inline-block;
            margin-bottom: 20px;
        }

        .back-button:hover {
            background-color: var(--accent-color);
            color: white;
        }

        footer {
            background-color: var(--primary-color);
            padding: 20px 0;
            margin-top: 40px;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .footer-links a {
            color: var(--text-color);
            text-decoration: none;
            margin-right: 20px;
        }

        .social-icons a {
            color: var(--text-color);
            font-size: 20px;
            margin-left: 15px;
        }

        .error {
            color: #ff6b6b;
            font-size: 0.9em;
            margin-top: -10px;
            margin-bottom: 10px;
        }
    </style>
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
                    <input type="text" placeholder="Search...">
                    <button type="submit">Search</button>
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
            <div class="form-container">
                <a href="lessonPage.jsp" class="back-button">← Back to Lessons</a>
                <h1>Book a Lesson</h1>
                <form action="InsertServlet" method="post" id="bookingForm">
                    <label for="lesson">Lesson:</label>
                    <select id="lesson" name="lesson" required>
                        <option value="">Select a lesson</option>
                        <option value="Piano for Beginners">Piano for Beginners</option>
                        <option value="Advanced Piano Techniques">Advanced Piano Techniques</option>
                        <option value="Guitar Fundamentals">Guitar Fundamentals</option>
                        <option value="Rock Guitar Mastery">Rock Guitar Mastery</option>
                        <option value="Vocal Training Basics">Vocal Training Basics</option>
                        <option value="Advanced Vocal Techniques">Advanced Vocal Techniques</option>
                    </select>
                    <div id="lessonError" class="error"></div>

                    <label for="name">Your Name:</label>
                    <input type="text" id="name" name="name" required>
                    <div id="nameError" class="error"></div>

                    <label for="date">Date:</label>
                    <input type="date" id="date" name="date" required>
                    <div id="dateError" class="error"></div>

                    <label for="time">Time:</label>
                    <input type="time" id="time" name="time" required>
                    <div id="timeError" class="error"></div>

                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phone" required>
                    <div id="phoneError" class="error"></div>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    <div id="emailError" class="error"></div>

                    <button type="submit">Submit Booking</button>
                </form>
            </div>
        </div>
    </main>

    <footer>
        <div class="container">
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
    </footer>

    <script>
        // Set minimum date for the date input
        const dateInput = document.getElementById('date');
        const today = new Date().toISOString().split('T')[0];
        dateInput.setAttribute('min', today);

        function validateForm() {
            let isValid = true;
            const lesson = document.getElementById('lesson');
            const name = document.getElementById('name');
            const date = document.getElementById('date');
            const time = document.getElementById('time');
            const phone = document.getElementById('phone');
            const email = document.getElementById('email');

            // Clear previous error messages
            document.querySelectorAll('.error').forEach(el => el.textContent = '');

            // ... (other validations remain unchanged) ...

            // Phone validation
            const phoneRegex = /^\d{10}$/;
            if (!phoneRegex.test(phone.value)) {
                document.getElementById('phoneError').textContent = "Please enter a valid 10-digit phone number";
                isValid = false;
            }

            // ... (other validations remain unchanged) ...

            return isValid;
        }

        // Add event listener for real-time phone number validation
        document.getElementById('phone').addEventListener('input', function(e) {
            this.value = this.value.replace(/\D/g, '').slice(0, 10);
            if (this.value.length < 10) {
                document.getElementById('phoneError').textContent = "Please enter a 10-digit phone number";
            } else {
                document.getElementById('phoneError').textContent = "";
            }
        });
    </script>

</body>
</html>