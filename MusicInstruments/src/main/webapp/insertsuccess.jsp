<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Inserted Successfully</title>
    <style>
        :root {
            --bg-color: #121212;
            --text-color: #ffffff;
            --accent-color: #8c52ff;
            --card-bg: #1e1e1e;
            --success-color: #4CAF50;
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
        .success-message {
            background-color: var(--success-color);
            color: var(--text-color);
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            margin-bottom: 20px;
        }
        .product-details {
            background-color: var(--card-bg);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
        }
        .product-details p {
            margin: 10px 0;
        }
        .product-details strong {
            color: var(--accent-color);
        }
        .btn {
            display: inline-block;
            background-color: var(--accent-color);
            color: var(--text-color);
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 5px;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #7040d9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Product Inserted Successfully</h1>
        <div class="success-message">
            <p>The product has been successfully added to the database.</p>
        </div>
        <div class="product-details">
            <h2>Product Details:</h2>
            <p><strong>Product ID:</strong> ${productId}</p>
            <p><strong>Product Name:</strong> ${productName}</p>
            <p><strong>Description:</strong> ${productDescription}</p>
            <p><strong>Price:</strong> $${productPrice}</p>
            <p><strong>Quantity:</strong> ${productQuantity}</p>
            <p><strong>Category:</strong> ${productCategory}</p>
        </div>
        <a href="product_home.jsp" class="btn">Back to home</a>
    </div>
</body>
</html>