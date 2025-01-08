<%-- 
    Document   : pin
    Created on : Jan 5, 2025, 7:08:44 AM
    Author     : mahno
--%>
<%@ page import="com.example.model.Pin" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add a Pin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('texture.jpg') repeat; /* Add your texture image */
            background-size: cover; /* Cover the entire background */
            color: #333;
            padding: 20px;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-in; /* Animation for the container */
        }

        h2 {
            text-align: center;
            color: #5e3a73; /* Primary color for headings */
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
        }

        input, textarea {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            width: 100%;
            margin-top: 5px;
            transition: border-color 0.3s; /* Smooth transition for border color */
        }

        input:focus, textarea:focus {
            border-color: #5e3a73; /* Change border color on focus */
            outline: none; /* Remove default outline */
        }

        button {
            background-color: #5e3a73; /* Button color */
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
            transition: background-color 0.3s; /* Smooth transition for button */
        }

        button:hover {
            background-color: #4a2a58; /* Darker shade on hover */
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2>Add a New Pin</h2>
        <form method="post" action="uploadpin.jsp?action=uploadPin" class="needs-validation" novalidate>
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required>

            <label for="imageUrl">Image URL:</label>
            <input type="text" name="imageUrl" id="imageUrl" required>

            <label for="title">Title:</label>
            <input type="text" name="title" id="title" required>

            <label for="description">Description:</label>
            <textarea name="description" id="description" required></textarea>

            <button type="submit">Upload Pin</button>
        </form>
    </div>
</body>
</html>