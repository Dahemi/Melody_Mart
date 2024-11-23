<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Landing Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #2a2a40;
        }
        .container {
            text-align: center;
            background-color: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            margin-bottom: 2rem;
        }
        .button {
            display: block;
            width: 200px;
            padding: 10px;
            margin: 10px auto;
            background-color:#8c52ff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
        }
        .button.outline {
            background-color: white;
            color: #8c52ff;
            border: 1px solid #8c52ff;
        }
    </style>
</head>
<body>
	
    <div class="container">
        <h1>Welcome to Our Platform</h1>
        <a href="UserLogin.jsp" class="button">Log in as User</a>
        <a href="AdminLogin.jsp" class="button outline">Log in as Admin</a>
    </div>
</body>
</html>