<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/home.css">
    <title>View Booking</title>
    <style>
        
        form {
            background-color: white;
            padding:  40px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-bottom: 60px; /* Add space below the form */
		    min-height: 200px; /* Set a minimum height for the form */
		    display: flex;
		    flex-direction: column;
		    justify-content: center;
        }
        .input-group {
   			 display: flex;
    		gap: 10px;
    		margin-bottom: 20px;
		}
		
        input[type="text"] {
            width: 200px;
            padding: 10px;
            margin-right: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #7b3aa0;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #333;
        }
        
        .input-group {
    		display: flex;
    		gap: 10px;
    		margin-bottom: 20px;
		}
		form input {
    		padding: 12px;
		    border-radius: 4px;
		    border: 1px solid #ccc;
		}

		form button {
		    padding: 12px 20px;
		    border-radius: 4px;
		    border: none;
		    background-color: #8c52ff;
		    color: white;
		    cursor: pointer;
		    transition: background-color 0.3s ease;
		    white-space: nowrap;
		}
		
		form button:hover {
		    background-color: #7040d9;
		}
		
		/* Optional: Add some explanatory text */
		.form-text {
		    
		    margin-bottom: 20px;
		    color: #333;
		}
		        
        
    </style>
</head>
<body>
	<!--HEADER STARTS-->
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
    <!--HEADER ENDS-->
    
    
	<h1>want to check your booking ?</h1>
    <form action="searchBooking" method="post">
        <p class="form-text">Enter your booking ID below to view your reservation details.</p>
    <div class="input-group">
        <input type="text" name="bookingId" placeholder="Enter Booking ID" required>
        <button type="submit">View</button>
    </div>
    
    </form>
    
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
        <!--FOOTER ENDS -->
</body>
</html>