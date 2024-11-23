<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>
    
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
    
	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="nic" value="${cus.nic}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="date" value="${cus.date}"/>
	<c:set var="time" value="${cus.time}"/>
	<c:set var="members" value="${cus.members}"/>

	<tr>
		<td>ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>NIC</td>
		<td>${cus.nic}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Phone</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Date</td>
		<td>${cus.date}</td>
	</tr>
	<tr>
		<td>Time</td>
		<td>${cus.time}</td>
	</tr>
	<tr>
		<td>Members</td>
		<td>${cus.members}</td>
	</tr>
	 </c:forEach>
</table>


<c:url value = "BookingUpdate.jsp" var="bupdate">
<c:param name= "id" value ="${id}"/>
<c:param name= "name" value ="${name}"/>
<c:param name= "nic" value ="${nic}"/>
<c:param name= "email" value ="${email}"/>
<c:param name= "phone" value ="${phone}"/>
<c:param name= "date" value ="${date}"/>
<c:param name= "time" value ="${time}"/>
<c:param name= "members" value ="${members}"/>
</c:url>
<a href ="${bupdate}">
<button type="submit">Update booking</button>

</a>


<c:url value = "BookingDelete.jsp" var = "bdelete">
<c:param name= "id" value ="${id}"/>
<c:param name= "name" value ="${name}"/>
<c:param name= "nic" value ="${nic}"/>
<c:param name= "email" value ="${email}"/>
<c:param name= "phone" value ="${phone}"/>
<c:param name= "date" value ="${date}"/>
<c:param name= "time" value ="${time}"/>
<c:param name= "members" value ="${members}"/>

</c:url>
<a href = "${bdelete }">
<button type="submit">Delete booking</button>
</a>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

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
