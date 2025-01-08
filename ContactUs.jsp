<%-- 
    Document   : ContactUs
    Created on : Jan 7, 2025, 6:35:18 PM
    Author     : mahno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <style>
            /* styles.css */

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Arial', sans-serif;
    line-height: 1.6;
    background: url('texture.jpg') repeat; /* Add your texture image */
    color: #333;
    padding: 20px;
}

header {
    background-color: #5e3a73;
    color: white;
    padding: 20px 0;
    text-align: center;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}

nav ul {
    list-style-type: none;
    padding: 0;
}

nav ul li {
    display: inline;
    margin: 0 15px;
}

nav ul li a {
    color: white;
    text-decoration: none;
    transition: color 0.3s;
}

nav ul li a:hover {
    color: #f0e68c; /* Change color on hover */
}
form {
    background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    max-width: 500px; /* Set a max width for the form */
    margin: 0 auto; /* Center the form */
}

.form-group {
    margin-bottom: 15px; /* Space between form groups */
}

label {
    display: block; /* Make labels block elements */
    margin-bottom: 5px; /* Space between label and input */
    font-weight: bold; /* Make labels bold */
    color: #5e3a73; /* Use the primary color */
}

input[type="text"],
input[type="email"],
textarea {
    width: 100%; /* Full width */
    padding: 10px; /* Padding inside inputs */
    border: 1px solid #ccc; /* Light border */
    border-radius: 5px; /* Rounded corners */
    transition: border-color 0.3s; /* Smooth transition for border color */
}

input[type="text"]:focus,
input[type="email"]:focus,
textarea:focus {
    border-color: #5e3a73; /* Change border color on focus */
    outline: none; /* Remove default outline */
}

button {
    background-color: #5e3a73; /* Primary color */
    color: white; /* Text color */
    border: none; /* Remove border */
    padding: 10px 20px; /* Padding */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor on hover */
    transition: background-color 0.3s, transform 0.3s; /* Smooth transition */
}

button:hover {
    background-color: #4a2a5e; /* Darker shade on hover */
    transform: scale(1.05); /* Slightly enlarge on hover */
}

.section {
    padding: 40px;
    margin: 20px 0;
    background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
    border-radius: 10px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    transform: perspective(1000px);
    transition: transform 0.3s;
}

.section:hover {
    transform: translateY(-10px) scale(1.02); /* 3D effect on hover */
}

h2 {
    color: #5e3a73;
    margin-bottom: 20px;
}

button {
    background-color: #5e3a73;
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s;
}

button:hover {
    background-color: #4a2a5e; /* Darker shade on hover */
    transform: scale(1.05); /* Slightly enlarge on hover */
}

footer {
    text-align: center;
    padding: 20px 0;
    background-color: #5e3a73;
    color: white;
    position: relative;
    bottom: 0;
    width: 100%;
}

/* Animations */
.fade-in {
    animation: fadeIn 1s ease-in;
}

.slide-in {
    animation: slideIn 1s ease-in;
}

.zoom-in {
    animation: zoomIn 1s ease-in;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

@keyframes slideIn {
    from { transform: translateX(-100%); opacity: 0; }
    to { transform: translateX(0); opacity: 1; }
}

@keyframes zoomIn {
    from { transform: scale(0.5); opacity: 0; }
    to { transform: scale(1); opacity: 1; }
}
            
        </style>
        <body>

    <header>

        <div class="container">

            <h1>My Pinterest Inspired Site</h1>

            <nav>

                <ul>

                    <li><a href="AboutUs.jsp">About Us</a></li>

                    <li><a href="COntactUs.jsp">Contact Us</a></li>

                    <li><a href="privacy.html">Privacy Policy</a></li>

                </ul>

            </nav>

        </div>

    </header>


    <main>

        <section class="section slide-in">

            <h2>Contact Us</h2>

            <p>If you have any questions, feedback, or suggestions, we would love to hear from you! Please feel free to reach out to us using the contact form below or through our social media channels.</p>


            <form id="contactForm" onsubmit="showSuccessMessage(); return false;">

                <label for="name">Name:</label>

                <input type="text" id="name" name="name" required>

                

                <label for="email">Email:</label>

                <input type="email" id="email" name="email" required>

                

                <label for="message">Message:</label>

                <textarea id="message" name="message" rows="5" required></textarea>

                

                <button type="submit">Send Message</button>

            </form>


            <div id="successMessage" style="display: none; color: green; margin-top: 10px;">

                Your message was sent!

            </div>


            <h3>Follow Us</h3>

            <p>Stay connected with us on social media:</p>

            <ul>

                <li><a href="https://www.facebook.com" target="_blank">Facebook</a></li>

                <li><a href="https://www.twitter.com" target="_blank">Twitter</a></li>

                <li><a href="https://www.instagram.com" target="_blank">Instagram</a></li>

            </ul>

        </section>

    </main>


    <script>

        function showSuccessMessage() {

            // Show success message

            document.getElementById('successMessage').style.display = 'block';


            // Optionally, reset the form

            document.getElementById('contactForm').reset();

        }

    </script>

</body>

</html>