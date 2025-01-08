<%-- 
    Document   : PrivacyPolicy
    Created on : Jan 7, 2025, 6:56:38 PM
    Author     : mahno
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Policy</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* styles.css */

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            background: url('texture.jpg') repeat; /* Background texture */
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

        .section {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            margin: 20px auto; /* Center the section */
            max-width: 800px; /* Max width for the section */
        }

        h2 {
            color: #5e3a73; /* Primary color for headings */
            margin-bottom: 20px;
        }

        h3 {
            color: #4a2a5e; /* Darker shade for subheadings */
            margin-top: 20px;
            margin-bottom: 10px;
        }

        ul {
            margin-left: 20px; /* Indent for list items */
            margin-bottom: 20px; /* Space below lists */
        }

        li {
            margin-bottom: 10px; /* Space between list items */
        }

        a {
            color: #5e3a73; /* Link color */
            text-decoration: none; /* Remove underline */
        }

        a:hover {
            text-decoration: underline; /* Underline on hover */
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
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>My Pinterest Inspired Site</h1>
            <nav>
                <ul>
                    <li><a href="AboutUs.jsp">About Us</a></li>
                    <li><a href="ContactUs.jsp">Contact Us</a></li>
                    <li><a href="PrivacyPolicy.jsp">Privacy Policy</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <section class="section fade-in">
            <h2>Privacy Policy</h2>
            <p>Your privacy is important to us. This Privacy Policy outlines how we collect, use, and protect your information when you use our website.</p>
            
            <h3>Information We Collect</h3>
            <p>We may collect personal information from you when you register on our site, subscribe to our newsletter, or fill out a form. The types of information we may collect include:</p>
            <ul>
                <li>Name</li>
                <li>Email address</li>
                <li>Phone number</li>
                <li>Mailing address</li>
            </ul>

            <h3>How We Use Your Information</h3>
            <p>We use the information we collect for various purposes, including:</p>
            <ul>
                <li>To provide and maintain our service</li>
                <li>To notify you about changes to our service</li>
                <li>To allow you to participate in interactive features of our service when you choose to do so</li>
                <li>To provide customer support</li>
                <li>To gather analysis or valuable information so that we can improve our service</li>
                <li>To monitor the usage of our service</li>
                <li>To detect, prevent, and address technical issues</li>
            </ul>

            <h3>Data Security</h3>
            <p>The security of your data is important to us, but remember that no method of transmission over the Internet or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your personal information, we cannot guarantee its absolute security.</p>

            <h3>Changes to This Privacy Policy</h3>
            <p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>

            <h3>Contact Us</h3>
            <p>If you have any questions about this Privacy Policy, please contact us:</p>
            <ul>
                <li>Email: <a href="mailto:mahnooriqbal444@gmail.com">mahnooriqbal444@gmail.com</a></li>
            </ul>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2023 My Pinterest Inspired Site. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>