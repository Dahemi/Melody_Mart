<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <style>
        :root {
            --bg-color: #121212;
            --text-color: #ffffff;
            --accent-color: #8c52ff;
            --card-bg: #1e1e1e;
            --hover-color: #2c2c2c;
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
        .product-details {
            background-color: var(--card-bg);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            margin: 0 auto;
            max-width: 400px;
            border: 2px solid var(--accent-color);
        }
        .product-details p {
            margin-bottom: 10px;
        }
        .success-message {
            background-color: var(--success-color);
            color: var(--text-color);
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Product Details</h1>
        <div class="success-message">Product found successfully!</div>
        <div class="product-details">
            <p><strong>Product ID:</strong> ${product.id}</p>
            <p><strong>Product Name:</strong> ${product.name}</p>
            <p><strong>Status:</strong> ${product.status}</p>
            <p><strong>Price:</strong> $${product.price}</p>
            <p><strong>Quantity:</strong> ${product.quantity}</p>
        </div>
    </div>
</body>
</html>
</html>