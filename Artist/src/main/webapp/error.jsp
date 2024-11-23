<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
// Check if the "error" attribute exists in the request object (set in the servlet)
if (request.getAttribute("error") != null) { 
%>
    <!-- If an error exists, display the error message in red -->
    <p style="color: red;"><%= request.getAttribute("error") %></p>
<% 
} 
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">  <!-- Specifies the character encoding for the HTML page -->
    <title>Insert title here</title>  <!-- Placeholder for the title of the page -->
</head>
<body>
    <!-- A link that allows the user to go back to the login page to retry the login -->
    <a href="DeleteEvent.jsp">Try Again</a>
</body>
</html>