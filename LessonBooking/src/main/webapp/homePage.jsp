<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/home.css">
    <title>Melody Mart - Your One-Stop Music Shop</title>
    
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
	                <form method="post" action="/products/SearchProductServlet">
		   			     <input type="text" id="search-input" name="searchQuery" placeholder="Search for products...">
		   			     <button type="submit">Search</button>
	  			  	</form>
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
        <section id="home" class="hero">
            <div class="container">
                <h1>Welcome to Melody Mart</h1>
                <h2><i>Your one-stop shop for all things music</i></h2>
                <a href="#products" class="cta-button">Explore Our Products</a>
            </div>

            <div class="musical-note note-1">♪</div>
            <div class="musical-note note-2">♫</div>
            <div class="musical-note note-3">♩</div>
            <div class="musical-note note-4">♬</div>
            
        </section>

        <section id="products" class="section">
            <div class="container">
                <div class="section-content">
                    <div class="section-text">
                        <h2>Music Instruments</h2>
                        <p>Explore our vast selection of musical instruments designed to meet the needs of every musician, from beginners to seasoned professionals. Our collection features top-of-the-line instruments from renowned brands, ensuring you get the best quality for your music.</p>
                        <a href="productHome.jsp" class="cta-button">Explore Products</a>
                    </div>
                    <div class="section-image">
                        <img src="https://thumbs.dreamstime.com/b/set-musical-instruments-stage-concert-drum-kit-bass-cymbal-drumstick-snare-tom-percussion-black-white-metal-equipment-333869141.jpg" alt="Various musical instruments"" alt="Various musical instruments" />
                    </div>
                </div>
            </div>
        </section>

        <section id="artists" class="section">
            <div class="container">
                <div class="section-content">
                    <div class="section-image">
                        <img src="https://media.istockphoto.com/id/2148659774/photo/large-group-of-people-enjoying-at-music-festival.webp?a=1&b=1&s=612x612&w=0&k=20&c=wYp50JNICG_ssdAFcJRHCO6XjM_-qhuKnKYZ8SncxD4=" alt="Artist performing on stage"" alt="Artist performing on stage" />
                    </div>
                    <div class="section-text">
                        <h2>Listen to Artists</h2>
                        <p>Discover an incredible range of music from artists spanning across all genres. Whether you're a fan of pop, rock, jazz, classical, electronic, or indie, we have something for every taste. Start exploring today and immerse yourself in the vibrant world of diverse musical talent!</p>
                        <a href="artistHome.jsp" class="cta-button">Listen Now</a>
                    </div>
                </div>
            </div>
        </section>

        <section id="lessons" class="section">
            <div class="container">
                <div class="section-content">
                    <div class="section-text">
                        <h2>Online Music Lessons</h2>
                        <p>Learn from world-class, talented tutors and take your musical skills to the next level! Our expert instructors provide personalized lessons tailored to your needs. With flexible schedules and a wide variety of instruments, you'll receive hands-on guidance to achieve your musical goals.</p>
                        <a href="lessonPage.jsp" class="cta-button">Book a Lesson</a>
                    </div>
                    <div class="section-image">
                        <img src="https://media.istockphoto.com/id/1293058709/photo/girl-playing-piano-at-home.jpg?s=612x612&w=0&k=20&c=QeVvAX-bcynkhSlFVQSiNsDiSPSVOW2B6ZQ3F5FgxtQ="" alt="Online music lesson" />
                    </div>
                </div>
            </div>
        </section>

        <section id="audio-rooms" class="section">
            <div class="container">
                <div class="section-content">
                    <div class="section-image">
                        <img src="https://img.freepik.com/premium-photo/recording-studio-soundproofed-room-equipped-ai-generated_866663-6411.jpg" alt="Professional recording studio"" alt="Professional recording studio" />
                    </div>
                    <div class="section-text">
                        <h2>Studio Booking</h2>
                        <p>Reserve a top-notch professional studio for your next practice session or recording project. Our state-of-the-art facilities offer perfect acoustics, advanced recording equipment, and comfortable spaces for both solo musicians and full bands. Bring your musical vision to life!</p>
                        <a href="/booking/BookingFront.jsp" class="cta-button">Book a Studio</a>
                    </div>
                </div>
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