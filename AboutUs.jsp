<%-- 
    Document   : AboutUs
    Created on : Jan 7, 2025, 6:17:03 PM
    Author     : mahno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
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

h1 {
    
    margin-bottom: 30px;
    align-content: center;
    padding: 20px;
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
.image-container {
    display: flex; /* Use flexbox for layout */
    justify-content: center; /* Center align images */
    flex-wrap: wrap; /* Allow wrapping */
    margin: 20px 0; /* Add some margin around the image container */
}

.animated-image {
    max-width: 30%; /* Set a max width for images */
    height: auto; /* Maintain aspect ratio */
    border-radius: 10px; /* Optional: Add rounded corners */
    margin: 10px; /* Add some space between images */
    opacity: 0; /* Start with opacity 0 for animation */
    transform: translateY(20px); /* Start slightly below */
    transition: opacity 0.5s ease, transform 0.5s ease; /* Smooth transition */
}

.zoom-in {
    animation: zoomIn 1s forwards; /* Animation for zoom-in effect */
}

.slide-in {
    animation: slideIn 1s forwards; /* Animation for slide-in effect */
}

.fade-in {
    animation: fadeIn 1s forwards; /* Animation for fade-in effect */
}

@keyframes zoomIn {
    from {
        transform: scale(0.5);
        opacity: 0;
    }
    to {
        transform: scale(1);
        opacity: 1;
    }
}

@keyframes slideIn {
    from {
        transform: translateX(-100%);
        opacity: 0;
    }
    to {
        transform: translateX(0);
        opacity: 1;
    }
}

@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

@keyframes zoomIn {
    from { transform: scale(0.5); opacity: 0; }
    to { transform: scale(1); opacity: 1; }
}
</style>
<body><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="styles.css">

<body>
    <header>
        <div class="container">
         
            <nav>
                   <h1>My Pinterest Inspired Site</h1>
            </nav>
        </div>
    </header>

    <main>
        <section class="section fade-in">
           
            <h2>About Us</h2>
            <p>Welcome to My Pinterest Inspired Site! We are a community-driven platform that allows users to share and discover creative ideas. Our mission is to inspire and empower individuals to express their creativity through visual storytelling.</p>
            <h3>Our Story</h3>
            <p>Founded in 2023, our platform was born out of a passion for creativity and community. We believe that everyone has a unique story to tell, and we provide the tools to help you share your ideas with the world. From DIY projects to fashion inspiration, our users contribute a diverse range of content that reflects their individuality.</p>
            <div class="image-container">

                <img src="https://avatars.mds.yandex.net/i?id=ba83c359c06a2e7419744f9466ec5c0e1f490ef9-12830450-images-thumbs&n=13" alt="Our Team" class="animated-image zoom-in">

                <img src="https://avatars.mds.yandex.net/i?id=5b1343208599757cb34d695d64fd59b4b11d0189-9269645-images-thumbs&n=13" alt="Our Team" class="animated-image slide-in">

                <img src="https://avatars.mds.yandex.net/i?id=63da1bb63c0bfd755d3f1bbcbd1a839caf51864c-5306350-images-thumbs&n=13" alt="Our Team" class="animated-image fade-in">

            </div>
            
            
            <h3>Our Values</h3>
            <ul>
                <li><strong>Creativity:</strong> We celebrate creativity in all its forms and encourage our users to think outside the box.</li>
                <li><strong>Community:</strong> We foster a supportive community where everyone can share their ideas and inspire one another.</li>
                <li><strong>Inclusivity:</strong> We believe in inclusivity and strive to create a platform that welcomes everyone, regardless of background or experience.</li>
            </ul>
            <h4>Join Us</h4>
            <p>We invite you to join our community! Sign up today to start sharing your ideas and connecting with other creative individuals. Together, we can inspire each other and make the world a more beautiful place.</p>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2023 My Pinterest Inspired Site. All rights reserved.</p>
        </div>
    </footer>

</body>

</html>