<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
    <link rel="stylesheet" href ="css/home.css">
    <link rel="stylesheet" href ="css/Form.css">
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
    
    
   <%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String members = request.getParameter("members");
	%>
<div class="cont">
<form action="DeleteServlet" method ="POST">
<table>
	<tr>
		<td><label for="id">ID:</label></td>
		<td><input Type = "text" name ="id" value ="<%=id%>" readonly></td>
	</tr>
	
		<tr>
		<td><label for="name">Name:</label></td>
		<td><input Type = "text" name ="name" value ="<%=name%>" ></td>
	</tr>
	
		<tr>
		<td><label for="nic">NIC:</label></td>
		<td><input Type = "text" name ="nic" value ="<%=nic%>"></td>
	</tr>
	
		<tr>
		<td><label for="email">Email:</label></td>
		<td><input Type = "text" name ="email" value ="<%=email%>"></td>
	</tr>
	
	<tr>
		<td><label for="phone">Phone Number:</label></td>
		<td><input Type = "text" name ="phone" value ="<%=phone%>"></td>
	</tr>
	
	
	<tr>
		<td><label for="date">Date:</label></td>
		<td><input Type = "text" name ="Date" value ="<%=date%>"></td>
	</tr>
	
	<tr>
		<td><label for="time">Time:</label></td>
		<td><input Type = "text" name ="time" value ="<%=time%>"></td>
	</tr>
	
	<tr>
		<td><label for="members">Members:</label></td>
		<td><input Type = "text" name ="members" value ="<%=members%>"></td>
	</tr>
	</table>
	<br>
	<button type="submit">Delete booking</button>
	</form>
	</div>
	
	<footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-links">
                <a href="/LessonPage/AboutUs.jsp">About Us</a>
                <a href="/LessonPage/ContactUs.jsp">Contact</a>
                <a href="/LessonManage/Terms&C.jsp">Terms of Service</a>
                <a href="/LessonManage/provacyPolicy.jsp">Privacy Policy</a>
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
</body>
</html>