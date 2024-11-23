<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Registration</title>
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
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid var(--hover-color);
            background-color: var(--bg-color);
            color: var(--text-color);
            border-radius: 4px;
        }
        input[type="submit"], input[type="reset"] {
            width: 100%;
            background-color: var(--accent-color);
            color: var(--text-color);
            border: none;
            padding: 12px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #7040d9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Enter Product Details</h1>
        <form action="InsertServlet" method="post">
            <label for="txtID">Product ID:</label>
            <input type="text" id="txtID" name="txtID" required>

            <label for="txtName">Product Name:</label>
            <input type="text" id="txtName" name="txtName" required>
            
            <label for="txtDescription">Status:</label>
            <textarea id="txtDescription" name="txtstatus" rows="4" required></textarea>
            
            <label for="txtPrice">Price:</label>
            <input type="number" id="txtPrice" name="txtPrice" step="0.01" required>
            
            <label for="txtQuantity">Quantity:</label>
            <input type="number" id="txtQuantity" name="txtQuantity" required>
            
            <label for="txtCategory">Category:</label>
            <input type="text" id="txtCategory" name="txtCategory" required>
            
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </div>
</body>
</html>