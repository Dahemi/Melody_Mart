<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Registration</title>
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
        <form action="/Artist/InsertEventServlet" method="post" onsubmit="return validateForm()">
            <label for="txtID">Enter ID:</label>
            <input type="text" id="txtID" name="txtID">

           <label for="txtaname">Enter artist name:</label>
            <input type="text" id="txtaname" name="txtaname">
            
            <label for="txtname">Enter event name:</label>
            <input type="text" id="txtname" name="txtname">
            
            <label for="txtdate">Enter event date:</label>
            <input type="date" id="txtdate" name="txtdate">
            
            <label for="txtvenue">Enter event venue:</label>
            <input type="text" id="txtvenue" name="txtvenue">
            
            
              <label for="txtcap">Enter event capacity:</label>
            <input type="text" id="txtcap" name="txtcap">
            
            
            
            
             <label for="txtprice">Ticket price:</label>
            <input type="text" id="txtprice" name="txtprice">
            
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </div>
    
    
    <script>
    // List of existing event names (You can update this based on your backend)
    const existingEventNames = ["The Show", "Born pink", "Monster show"];
    const existingEventIDs = ["1", "2", "3", "4", "5"]; // Sample existing event IDs (numbers only)

    function validateForm() {
        // Validate ID (Unique and numeric only)
        let id = document.getElementById("txtID").value.trim();
        if (id === "") {
            alert("Error: ID field cannot be empty.");
            return false;
        }
        if (!/^\d+$/.test(id)) { // Check if ID contains only numbers
            alert("Error: Event ID must contain numbers only.");
            return false;
        }
        if (existingEventIDs.includes(id)) {
            alert("Error: The Event ID has already been used. Please enter a unique numeric ID.");
            return false;
        }

        // Validate Artist Name
        let artistName = document.getElementById("txtaname").value.trim();
        if (artistName === "") {
            alert("Error: Artist name cannot be empty.");
            return false;
        }
        if (!/^[a-zA-Z\s]+$/.test(artistName)) {
            alert("Error: Artist name can only contain letters and spaces.");
            return false;
        }

        // Validate Event Name
        let eventName = document.getElementById("txtname").value.trim();
        if (eventName === "") {
            alert("Error: Event name cannot be empty.");
            return false;
        }
        if (!/^[a-zA-Z0-9\s]+$/.test(eventName)) {
            alert("Error: Event name can only contain alphanumeric characters and spaces.");
            return false;
        }
        if (existingEventNames.includes(eventName)) {
            alert("Error: The event name has already been used. Please choose a different name.");
            return false;
        }

        // Validate Event Date
        let eventDate = document.getElementById("txtdate").value;
        let today = new Date().toISOString().split('T')[0]; // Get today's date in 'YYYY-MM-DD' format
        if (eventDate === "" || eventDate < today) {
            alert("Error: Please select a valid date (today or a future date).");
            return false;
        }

        // Validate Venue
        let venue = document.getElementById("txtvenue").value.trim();
        if (venue === "") {
            alert("Error: Venue name cannot be empty.");
            return false;
        }
        if (!/^[a-zA-Z0-9\s]+$/.test(venue)) {
            alert("Error: Venue name can only contain alphanumeric characters and spaces.");
            return false;
        }

        // Validate Event Capacity
        let capacity = document.getElementById("txtcap").value.trim();
        if (capacity === "" || isNaN(capacity) || parseInt(capacity) <= 0) {
            alert("Error: Please enter a valid capacity (positive number).");
            return false;
        }

        // Validate Ticket Price
        let price = document.getElementById("txtprice").value.trim();
        if (price === "" || isNaN(price) || parseFloat(price) <= 10000) {
            alert("Error: Ticket price must be greater than 10,000.");
            return false;
        }

        return true; // Allow form submission if all validations pass
    }
</script>
</body>
</html>
