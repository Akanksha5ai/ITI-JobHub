 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>WebPage</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            html,
            body {
                height: 100%;
                font-family: Arial, sans-serif;
                scroll-behavior: smooth;
                /* Smooth scrolling effect */
            }

            .main {
                width: 100%;
                height: 60px;


                /* background-image: url('/2webproject/Industrial-training.png'); 
            background-position: center;
            background-size: cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center; */

            }

            .navbar {
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                width: 100%;
                height: 70px;
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 10px 20px;
                background-color: white;
                position: fixed;
                /* Keep navbar at the top */
                top: 0;
                z-index: 1000;
            }

            .navbar.logo {
                display: flex;
                /* Use flexbox for logo and text */
                align-items: center;
                /* Vertically align logo and text */
            }


            .adesh {

                color: rgb(159, 67, 67);
                /* Set color for ADesh */
            }

            .services {
                letter-spacing: 1px;
                color: rgb(88, 77, 77);
                /* Set color for services */
            }

            .navbar {
                display: flex;
                /* Use flexbox to align items in the header */
                align-items: center;
                /* Vertically center items */
            }

            .logo {
                display: flex;
                /* Use flexbox for logo and text */
                align-items: center;
                /* Vertically align logo and text */
            }

            .logo img {
                height: 50px;
                /* Set a specific height for the logo image */
                width: auto;
                height: 115px;
                object-fit: contain;
                left: 0;
                /* Maintain aspect ratio */
            }

            .logo-text {
                line-height: 2;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                letter-spacing: 2px;
                word-spacing: 30px;
                display: flex;
                /* Keep text inline */
                margin-left: 10px;
                /* Add space between logo and text */
                vertical-align: middle;

                font-size: 25px;
                font-weight: bold;
            }

            .menu {
                display: flex;
                align-items: center;
            }

            .menu ul {
                display: flex;
                list-style-type: none;
            }

            .menu ul li {
                margin: 0 15px;
            }

            .menu ul li a {
                text-decoration: none;
                color: black;
                font-family: Arial;
                font-weight: bold;
                transition: 0.3s ease;
            }

            .menu ul li a:hover {
                color: blue;
            }

            .auth-buttons {
                display: flex;
                gap: 10px;
            }

            .login-btn,
            .register-btn {
                display: inline-block;
                /* Allows padding and margin */
                padding: 10px 20px;
                /* Add some padding */
                background-color: #007bff;
                /* Button background color */
                color: white;
                /* Text color */
                text-align: center;
                /* Center the text */
                text-decoration: none;
                /* Remove underline */
                border-radius: 5px;
                /* Rounded corners */
                border: none;
                /* Remove border */
                cursor: pointer;
                /* Change cursor to pointer */
            }

            .register-btn:hover {
                background-color: #0056b3;
                /* Darker background on hover */
            }

            .login-btn:hover {
                background-color: darkblue;
            }

            section {
                padding-top: 100px;
                /* Increased padding to make space for the navbar */
                padding-bottom: 50px;
                /* Optional: Extra space at the bottom */
                min-height: 100vh;
                /* Full viewport height */
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;

            }

            /* Home Section Styling */
            #home {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: left;
                text-align: left;
                height: 100vh;
                background-image: url('finalbg.jpg');
                /* Replace with the path to your background image */
                background-size: cover;
                background-position: center;
                color: #fffdfe;
                position: relative;
                padding: 20px;
                overflow: hidden;
            }

            #home::before {
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.6);
                /* Dark overlay with opacity */
                backdrop-filter: blur(100px);
                /* Adjust the blur radius */
                z-index: -1;
            }

            /* #home h1 {
            font-size: 3em;
            font-weight: bold;
            letter-spacing: 2px;
            margin-bottom: 20px;
            animation: fadeIn 1.5s ease;
        } */

            #home p {
               font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                font-size: 1.2em;
                font-weight: 300;
                max-width: 800px;
                color: #091c43;
                line-height: 1.8;
                margin-bottom: 30px;
                animation: fadeIn 2s ease;
            }

            #home h3{
                margin-top: 80px;
           color: #fefefe; /* Base neon color */
          
    text-shadow: 
        0 0 5px #1f5bd1,   /* Outer glow */
        0 0 10px #9fb3da, 
        0 0 20px #1f5bd1, 
        0 0 30px rgb(11, 78, 140),     /* Brighter inner glow */
        0 0 40px rgb(11, 78, 140),
        0 0 50px rgb(11, 78, 140);

                font-size: 25px;
                color: #e4e4e9;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            }

            .get-started-btn {
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                margin-top: 240px;
              
                font-size: 1.2em;
                padding: 10px 20px;
                background-color: rgb(68, 79, 202);
                color: rgb(227, 231, 236);
                border: none;
                border-radius: 30px;
                cursor: pointer;
                font-weight: bold;
                transition: all 0.3s ease;
                animation: fadeIn 2.5s ease;
            }

            .get-started-btn:hover {

                background-color: #76a5d8;
                transform: scale(1.05);
            }

            /* Rotating Tagline */
            .rotating-text {
           
                font-size: 1.2em;
                color: #fdfdfd;
                
                margin-top: 10px;
                font-size: 19px;
                font-style: oblique;
                
                border-radius: 30px;
                animation: rotateText 2s linear infinite;
            }

            /* Key Features */
            .features {
                display: flex;
                gap: 15px;
                margin-top: 100px;
                flex-wrap: wrap;
                justify-content: space-around;
            }

            .feature {
                background: rgba(180, 179, 213, 0.536);
                border: 1px solid rgba(14, 62, 174, 0.2);
                padding: 15px;
                border-radius: 10px;
                width: 30%;
                max-width: 300px;
                text-align: center;
            }
            .feature strong{
                font-size: 20px;
                color:#164980;
                text-shadow: #222;
                   font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                }

                to {
                    opacity: 1;
                }
            }

            /* Rotating Text Animation */
            @keyframes rotateText {

                0%,
                20%,
                /* 100% {
                    content: "Empowering ITI Workers";
                } */

                33%,
                53% {
                    content: "Transforming Skills into Success";
                }

                66%,
                86% {
                    content: "Building Careers, One Skill at a Time";
                }
            }

            #about {
                padding: 30px 10px;
                background-color: #f9f9f9;
                font-family: Arial, sans-serif;
                text-align: center;
            }

            .about {
                padding-top: 100px;
                padding-bottom: 50px;
                min-height: auto;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                background-color: #f9f9f9;
                /* Set a background color if desired */

            }

            #about h1 {
                font-size: 36px;
                color: #333;
                margin-bottom: 20px;
                text-transform: uppercase;
                letter-spacing: 2px;
                position: relative;
                font-weight: bold;
            }

            #about h3 {
                font-size: 24px;
                color: #007bff;
                margin-top: 40px;
                margin-bottom: 10px;
            }

            #about h4 {
                font-size: 22px;
                color: #ff5733;
                font-weight: bold;
                margin-top: 30px;
                text-decoration: underline;
            }

            #about p {
                font-size: 16px;
                line-height: 1.6;
                color: #666;
                max-width: 800px;
                margin: 0 auto 20px;
            }

            .about-section {
                padding: 20px;
                background-color: #fff;
                margin: 20px auto;
                max-width: 800px;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
                text-align: left;
            }



            .about-section:hover {
                background-color: #f0f8ff;
                box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.15);
                transition: background-color 0.3s ease, box-shadow 0.3s ease;
            }

            #about h1::after {
                content: "";
                display: block;
                width: 50px;
                height: 4px;
                background-color: #007bff;
                margin: 8px auto 20px;
                border-radius: 2px;
            }

            .slider {
                position: relative;
                width: 100%;
                max-width: 800px;
                margin: 20px auto;
                overflow: hidden;
                border: 2px solid #ccc;
                border-radius: 10px;
            }

            .slides {
                display: flex;
                transition: transform 0.5s ease-in-out;
            }

            .slide {
                min-width: 100%;
            }

            .slide img {
                width: 100%;
                height: 100%;
                /* Ensures image fills the slider container */
                object-fit: cover;
                border-radius: 10px;
            }

            .prev,
            .next {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                background-color: rgba(255, 255, 255, 0.7);
                border: none;
                padding: 10px;
                cursor: pointer;
                border-radius: 5px;
                z-index: 10;
            }

            .prev {
                left: 10px;
            }

            .next {
                right: 10px;
            }

            .prev:hover,
            .next:hover {
                background-color: #ddd;
                /* Highlight on hover */
            }

            #contact a {
                transition: color 0.3s;
            }

            #contact a:hover {
                color: lightblue;
            }

            .contact-info p {
                margin: 10px 0;
            }
        </style>
    </head>

    <body>
        <div class="main">
            <div class="navbar">
                <div class="logo">
                    <img src="./logo.png" alt="Logo" />
                    <span class="logo-text">
                        <span class="adesh">ADESH</span>
                        <span class="services"> Services</span>
                    </span>
                </div>
                <div class="menu">
                    <ul>
                        <li><a href="#home">Home</a></li>
                        <li><a href="#about">About Us</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#contact">Contact Us</a></li>
                    </ul>
                    <div class="auth-buttons">
                        <a href="register.jsp" class="register-btn">Register</a>
                        <a href="login.jsp" class="login-btn">Login</a>

                    </div>

                </div>
            </div>

            <section id="home">
                <!-- <h1>Welcome!!</h1> -->
                <h3>Transforming Skills into Success Stories – The Platform for ITI Workers </h3>
                <a href="register.jsp" class="get-started-btn">Get Started</a>
                <div class="rotating-text">Empowering ITI Workers</div>
                <div class="features">
                    <div class="feature">
                        <strong>Easy Applications</strong>
                        <p>Quick job applications for ITI graduates</p>
                    </div>
                    <div class="feature">
                        <strong>Skill Enhancement</strong>
                        <p>Training resources for growth and success</p>
                    </div>
                    <div class="feature">
                        <strong>Career Guidance</strong>
                        <p>Personalized guidance and support</p>
                    </div>
                    <div class="feature">
                        <strong>Job Matching</strong>
                        <p>Connecting you to the right opportunities</p>
                    </div>
                </div>
            </section>


            <div class="about" id="about">
                <h1>About Us</h1>
                <h3>Welcome to Adesh Services!</h3>
                <p>At Adesh Services, we believe that every graduate deserves a chance to shine in their career. Founded
                    with a mission to bridge the gap between education and employment, we are dedicated to connecting
                    talented individuals with meaningful job opportunities.</p>

                <div class="about-section">
                    <h3>Our Vision</h3>
                    <p>We envision a world where every graduate can leverage their skills and education to find
                        fulfilling
                        employment. We strive to empower young professionals by providing them with the resources and
                        support they need to launch their careers.</p>
                </div>

                <div class="about-section">
                    <h3>What We Do</h3>
                    <p>Adesh Services specializes in facilitating job placements for recent graduates across various
                        industries. Our platform not only lists job openings but also offers personalized career
                        guidance,
                        resume building assistance, and interview preparation. We work closely with employers to
                        understand
                        their needs and ensure that we match them with the right candidates.</p>
                </div>

                <div class="about-section">
                    <h3>Our Values</h3>
                    <p><strong>Integrity:</strong> We believe in honest and transparent communication with both our job
                        seekers and employers.<br>
                        <strong>Empowerment:</strong> We are committed to empowering graduates by providing them with
                        the
                        tools they need to succeed.<br>
                        <strong>Collaboration:</strong> We foster partnerships with businesses and educational
                        institutions
                        to create a robust job market for graduates.
                    </p>
                </div>

                <div class="about-section">
                    <h4>Join Us</h4>
                    <p>Whether you’re a recent graduate looking to kickstart your career or an employer seeking fresh
                        talent, Adesh Services is here to support you every step of the way. Together, let’s build a
                        brighter future!<br>
                        For more information or to get started, contact us today!</p>
                </div>
            </div>




            <section id="services">
                <h1>Our Services</h1>
                <p>Details about the services we offer.</p>
                <div class="slider">
                    <button class="prev" onclick="changeSlide(-1)">&#10094;</button>
                    <div class="slides">
                        <div class="slide"><img src="1.jpg" alt="Image 1"></div>
                        <div class="slide"><img src="2.jpg" alt="Image 2"></div>
                        <div class="slide"><img src="3.jpg" alt="Image 3"></div>
                        <div class="slide"><img src="4.jpg" alt="Image 4"></div>
                    </div>
                    <button class="next" onclick="changeSlide(1)">&#10095;</button>
                </div>

            </section>

            <section id="contact"
                style="background-color: #222; color: white; padding: 60px 20px; text-align: center; font-family: Arial, sans-serif;">
                <h1 style="font-size: 2.5em; margin-bottom: 10px;">Contact Us</h1>
                <p style="font-size: 1.2em; margin-bottom: 30px;">We’re here to answer any questions you may have!</p>

                <!-- Contact Information -->
                <div class="contact-info" style="margin: 30px 0;">
                    <p style="font-size: 1.1em;">
                        <strong>Contact Number:</strong>
                        <a href="tel:+91 8767564587" style="color: #1e90ff; text-decoration: none;">+91 8767564587</a>
                    </p>
                    <p style="font-size: 1.1em;">
                        <strong>Email:</strong>
                        <a href="mailto:company@adeshservices.com"
                            style="color: #1e90ff; text-decoration: none;">company@adeshservices.com</a>
                    </p>
                    <p style="font-size: 1.1em;">
                        <strong>Address:</strong> 143 Vishnamak Street, Nagpur-440034, India
                    </p>
                </div>

                <!-- Icons Section -->
                <div class="creative-section"
                    style="margin: 40px 0; font-size: 1.2em; display: flex; justify-content: center; gap: 40px;">
                    <p>🌟 Dedicated to your success!</p>
                    <p>📞 Reach us anytime!</p>
                    <p>📧 Quick responses guaranteed!</p>
                </div>

                <!-- Social Media Links with Icons -->
                <div class="social-media" style="margin-top: 40px;">
                    <h3 style="font-size: 1.8em; margin-bottom: 20px;">Follow Us</h3>
                    <a href="#" style="color: #1e90ff; margin: 0 15px; font-size: 1.5em;">
                        <i class="fa fa-facebook"></i> Facebook
                    </a>
                    <a href="#" style="color: #1e90ff; margin: 0 15px; font-size: 1.5em;">
                        <i class="fa fa-twitter"></i> Instagram
                    </a>
                    <a href="#" style="color: #1e90ff; margin: 0 15px; font-size: 1.5em;">
                        <i class="fa fa-linkedin"></i> LinkedIn
                    </a>
                </div>
            </section>




        </div>

        <script>

            let currentSlide = 0;

            function changeSlide(direction) {
                const slides = document.querySelectorAll('.slide');
                const totalSlides = slides.length;

                currentSlide += direction;

                // Loop through slides
                if (currentSlide < 0) currentSlide = totalSlides - 1; // If currentSlide goes below 0, go to last slide
                if (currentSlide >= totalSlides) currentSlide = 0; // If currentSlide exceeds totalSlides, go to first slide

                updateSlides();
            }

            function updateSlides() {
                const slidesContainer = document.querySelector('.slides');
                // Translate the slides based on the currentSlide index
                slidesContainer.style.transform = translateX(-${ currentSlide * 100} %);
            }

        </script>

    </body>

    </html>
