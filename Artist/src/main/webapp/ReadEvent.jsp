<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upcoming Events</title>
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
            border: 2px solid var(--accent-color); /* Adding border */
            padding: 20px; /* Adding padding inside the frame */
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

        .btn {
            background-color: var(--accent-color);
            color: var(--text-color);
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #7040d9;
        }

        .message {
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            text-align: center;
        }

        .success {
            background-color: var(--success-color);
            color: var(--text-color);
        }

        .error {
            background-color: var(--error-color);
            color: var(--text-color);
        }
    </style>

</head>
<body>
    <div class="container">
        <h1>Enter Event Details</h1>
        <form action="ReadEventServlet" method="post" onsubmit = "return validateForm()" >
            <label for="txtID">Enter ID:</label>
            <input type="text" id="txtID" name="txtID">

            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </div>
    
    <script >function validateForm() {
        // Validate ID
        let id = document.getElementById("txtID").value.trim();
        if (id === "") {
            alert("Error: ID field cannot be empty.");
            return false;
        }</script>
</body>
</html>
