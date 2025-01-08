<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PinAura</title>
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background-color: #f3ecec;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative;
        }

        .container {
            width: 70%;
            max-width: 1100px;
            background-color: white;
            border-radius: 15px;
            overflow: hidden;
            display: flex;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .text-section {
            flex: 1;
            padding: 60px;
            background-color: #f4e3f9;
        }

        .text-section h1 {
            font-size: 36px;
            color: #5e3a73;
            margin-bottom: 20px;
        }

        .text-section p {
            font-size: 16px;
            color: #5e3a73;
            margin-bottom: 30px;
            line-height: 1.8;
        }

        .text-section .learn-more {
            display: inline-block;
            padding: 12px 25px;
            font-size: 16px;
            font-weight: bold;
            color: #5e3a73;
            text-decoration: none;
            border: 2px solid #5e3a73;
            border-radius: 25px;
            transition: all 0.3s ease;
        }

        .text-section .learn-more:hover {
            background-color: #5e3a73;
            color: white;
        }

        .image-section {
            flex: 1;
            background-color: #e3d5eb;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .image-section img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        nav {
            position: absolute;
            top: 10px;
            left: 20px;  /* Adjusted left spacing */
            right: 20px; /* Adjusted right spacing */
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        nav h1 {
            font-size: 24px;
            color: #5e3a73;
            margin: 0;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 20px;
            margin: 0;
            padding: 0;
        }

        nav ul li a {
            text-decoration: none;
            font-size: 16px;
            color: #5e3a73;
            font-weight: bold;
            cursor: pointer;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }

        /* Popup Modal Styling */
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }

        .modal-content {
            background: white;
            padding: 20px;
            border-radius: 10px;
            width: 400px;
            max-width: 90%;
            text-align: center;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .modal-content h2 {
            margin-bottom: 20px;
            color: #5e3a73;
        }

        .modal-content input, .modal-content button {
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .modal-content button {
            background-color: #5e3a73;
            color: white;
            border: none;
            cursor: pointer;
        }

        .modal-content button:hover {
            background-color: #462754;
        }

        .modal-close {
            cursor: pointer;
            background: none;
            border: none;
            font-size: 20px;
            position: absolute;
            top: 10px;
            right: 10px;
        }
         .fade-in {
            opacity: 0;
            transform: translateY(20px);
            transition: opacity 2s ease, transform 2s ease;
        }

        .fade-in.visible {
            opacity: 1;
            transform: translateY(0);
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Navigation Bar -->
    <nav>
        <h1>PinAura</h1>
        <ul>
            <li><a onclick="openModal('signinModal')">Sign In</a></li>
            <li><a onclick="openModal('signupModal')">Sign Up</a></li>
        </ul>
    </nav>

    <!-- Main Container -->
    <div class="container">
        <div class="text-section">
            <h1>Welcome to PinAura</h1>
            <p>I brought you the world of Aesthetic,If you live in a delulu world just like me this app is best for you.</p>
            <a href="login.jsp" class="learn-more">Register Now</a>
        </div>
        <div class="image-section">
            <img src="https://avatars.mds.yandex.net/i?id=40eb47842dc33b9a71e9d40973ab8b265743279b-8191391-images-thumbs&n=13" class="fade-in" alt="Image">
        </div>
    </div>

    <!-- Sign In Modal -->
    <div action ="Home.jsp" class="modal" id="signinModal">
        <div class="modal-content">
            <button class="modal-close" onclick="closeModal('signinModal')">&times;</button>
            <form action="Home.jsp" method="POST" onsubmit="return validateSignIn()">
                <h2>Sign In</h2>
                <input type="hidden" name="action" value="signin">
                <input type="email" name="signin-email" placeholder="Enter Email" required>
                <input type="password" name="signin-password" placeholder="Enter Password" required>
                <button type="submit" onclick="redirectToHome()">Login</button>
                <p>Don't have an account? <a onclick="openModal('signupModal')">Sign Up</a></p>
            </form>
        </div>
      

    </div>
   

    <!-- Sign Up Modal -->
<div action="Home.jsp" class="modal" id="signupModal">
    <div class="modal-content">
        <button class="modal-close" onclick="closeModal('signupModal')">&times;</button>
        <form id="signupForm" action="login.jsp" method="POST" onsubmit="return handleSubmit()">
            <h2>Sign Up</h2>
            <input type="hidden" name="action" value="signup">
            <input type="text" name="signup-username" placeholder="Enter Username" required>
            <input type="email" name="signup-email" placeholder="Enter Email" required>   
            <input type="number" name="signup-age" placeholder="Enter Age" required>
            <input type="password" name="signup-password" placeholder="Enter Password" required>
            <input type="password" name="confirm-password" placeholder="Confirm Password" required>
            <button type="submit">Sign Up</button>
        </form>
    </div>

    <% 
        // Process form submission and user registration
        if ("signup".equals(request.getParameter("action"))) {
            String username = request.getParameter("signup-username");
            String email = request.getParameter("signup-email");

            // Handle user registration logic
            com.example.controller.UserController userController = new com.example.controller.UserController();
            userController.handleUserRegistration(username, email);  // Trigger registration and email sending
        }
    %>

</div>



    <script>
         function handleSubmit() {
        // You can add your validation logic here if needed
        if (validateSignUp()) {
            // If validation is successful, redirect to Home.jsp
            window.location.href = "Home.jsp"; // Redirect to Home.jsp
            return false; // Prevent default form submission
        }
        return false; // If validation fails, prevent submission
    }

    function validateSignUp() {
        var password = document.querySelector("input[name='signup-password']").value;
        var confirmPassword = document.querySelector("input[name='confirm-password']").value;
        
        if (password !== confirmPassword) {
            alert("Passwords do not match!");
            return false; // Prevent form submission
        }

        return true; // Proceed with form submission
    }
        function openModal(id) {
            document.getElementById(id).style.display = 'flex';
        }

        function closeModal(id) {
            document.getElementById(id).style.display = 'none';
        }

        function validateSignUp() {
            const username = document.querySelector('[name="signup-username"]').value;
            const age = document.querySelector('[name="signup-age"]').value;
            const password = document.querySelector('[name="signup-password"]').value;
            const confirmPassword = document.querySelector('[name="confirm-password"]').value;

            if (!/^[a-zA-Z]+$/.test(username)) {
                alert('Username must not contain numbers or special characters.');
                return false;
            }

            if (age < 0 || age > 100) {
                alert('Age must be between 0 and 100.');
                return false;
            }

            if (password.length < 8 || !/\d/.test(password)) {
                alert('Password must be at least 8 characters long and include a number.');
                return false;
            }

            if (password !== confirmPassword) {
                alert('Passwords do not match.');
                return false;
            }

            return true;
        }

        function validateSignIn() {
            return true;
        }
           window.onload = function() {
            var image = document.querySelector('.fade-in');
            setTimeout(() => {
                image.classList.add('visible'); // Add 'visible' class after delay
            }, 200);
        }
    
    </script>
</body>
</html>

