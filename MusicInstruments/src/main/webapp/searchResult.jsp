<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
<%@ page import="com.products.model.SearchProduct" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/LessonManage/CSS/home.css">
<link rel="stylesheet" href="/LessonManage/CSS/search.css">
</head>
<body>
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
                    <form method="post" action="SearchProductServlet">
                        <input type="text" id="search-input" name="searchQuery" placeholder="Search for products...">
                        <button type="submit">Search</button>
                    </form>
                </div>

                <nav>
                    <ul>
                        <li><a href="homePage.jsp">Home</a></li>
                        <li><a href="productHome.jsp">Products</a></li>
                        <li><a href="lessonPage.jsp">Lessons</a></li>
                        <li><a href="BookingFront.jsp">Audio Rooms</a></li>
                        <li><a href="/Artist/home.jsp">Artists</a></li>
                    </ul>
                </nav>
                <a href="loginLandingPage.html" class="login-button">
                    <i class="fas fa-user"></i> Login
                </a>
            </div>
        </div>
    </header>

    <div class="results-container">
        <%
            ArrayList<SearchProduct> products = (ArrayList<SearchProduct>) request.getAttribute("products");

            if (products != null && !products.isEmpty()) {
        %>
            <div>
                <h3>Search Results</h3>
                <ul class="product-list">
                <%
                    for (SearchProduct product : products) {
                %>
                    <li>
                        <strong><%= product.getName() %></strong><br>
                        <p>Price: $<%= product.getPrice() %></p>
                        <p>Status: <%= product.getstatus() %></p>
                        <p>Description: <%= product.getdescription() %></p>
                        <img src="<%= product.getimage_url() %>" alt="Image of <%= product.getName() %>" width="150"><br>
                    </li>
                <%
                    }
                %>
                </ul>
            </div>
        <%
            } else {
        %>
            <p>No products found matching your search.</p>
        <%
            }
        %>
    </div>

    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-links">
                    <a href="#">About Us</a>
                    <a href="#">Contact</a>
                    <a href="#">Terms of Service</a>
                    <a href="#">Privacy Policy</a>
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