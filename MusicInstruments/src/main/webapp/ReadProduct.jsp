<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Read Product</title>
    <style>
        :root {
            --bg-color: #121212;
            --text-color: #ffffff;
            --accent-color: #8c52ff;
            --card-bg: #1e1e1e;
            --hover-color: #2c2c2c;
            --success-color: #4CAF50;
            --error-color: #ff4d4d;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: var(--accent-color);
        }
        form {
            background-color: var(--card-bg);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            margin: 0 auto;
            max-width: 400px;
            border: 2px solid var(--accent-color);
            padding: 20px;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: var(--text-color);
        }
        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid var(--hover-color);
            background-color: var(--bg-color);
            color: var(--text-color);
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            background-color: var(--accent-color);
            color: var(--text-color);
            border: none;
            padding: 12px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #7040d9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>View Product Details</h1>
        <form action="ReadServlet" method="post">
            <label for="productId">Enter Product ID:</label>
            <input type="text" id="productId" name="productId" required>
            <input type="submit" value="View Product">
        </form>
    </div>
</body>
</html>