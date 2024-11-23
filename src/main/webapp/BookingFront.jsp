<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music Studio Booking</title>
   
    <link rel="stylesheet" href ="css/home.css">
    <link rel="stylesheet" href ="css/AudioPage.css">
    
    
   
</head>
<body>
    <header>
        <div class="container">
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

    <div class="container">
        <div class="studio-types">
            <div class="studio-card">
                <img src="images/studio.jpg" alt="Solo Studio">
                <h3>Solo Studio</h3>
                <p>Perfect for individual practice, recording, or private music lessons. Our solo studios provide an intimate space with professional equipment.</p>
                <ul class="features-list">
                    <li>Professional acoustic treatment</li>
                    <li>Digital audio workstation</li>
                    <li>MIDI keyboard</li>
                    <li>Studio monitors</li>
                    <li>Microphone setup</li>
                </ul>
                <div class="price">From $30/hour</div>
                <a href="BookingInsert.jsp" class="book-btn">Book Solo Studio</a>
            </div>

            <div class="studio-card">
                <img src="images/collab.jpg" alt="Collaborative Studio">
                <h3>Collaborative Studio</h3>
                <p>Designed for bands, ensembles, and group sessions. Spacious environment with complete band setup and recording capabilities.</p>
                <ul class="features-list">
                    <li>Full band equipment setup</li>
                    <li>Multiple microphones</li>
                    <li>Mixing console</li>
                    <li>Large practice space</li>
                    <li>Recording booth</li>
                </ul>
                <div class="price">From $50/hour</div>
                <a href="BookingInsert.jsp" class="book-btn">Book Collaborative Studio</a>
            </div>
        </div>
    </div>
</body>
</html>