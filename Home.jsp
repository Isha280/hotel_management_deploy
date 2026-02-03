<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    // Check if user is logged in
    String user = (String) session.getAttribute("username");
    if (user == null) {
        response.sendRedirect("login.jsp"); // redirect if not logged in
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luxury Hotel Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        body {
            font-family: 'Georgia', serif;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
            box-sizing: border-box;
        }

        .parallax {
            background-image: url('https://loyaltylobby.com/wp-content/uploads/2024/02/cropped-Conrad-Bora-Bora-Nui-Pier.png');
            height: 100vh;
            background-position: center;
            background-attachment: fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
        }

        .parallax h1 {
            font-size: 3.5em;
            margin: 0;
        }

        .navbar {
            background-color: rgba(0, 0, 51, 0.8);
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 100;
            padding: 10px 20px;
        }

        .logo {
            width: 70px;
            height: auto;
            margin-right: 20px;
        }

        .navbar-menu {
            display: flex;
            justify-content: center;
            flex-grow: 1;
        }

        .navbar a {
            text-decoration: none;
            color: gold;
            padding: 10px 10px;
            font-family: 'Georgia', serif;
            display: block;
            text-align: center;
            transition: background-color 0.3s ease;
            font-size: 18px;
        }

        .navbar a:hover {
            background-color: #ffd700;
            color: black;
        }

        .search-container {
            display: flex;
            align-items: center;
        }

        .search-input {
            padding: 8px;
            font-size: 16px;
            border: 1px solid gold;
            border-radius: 20px;
            outline: none;
            width: 200px;
            background-color: white;
        }

        .search-button {
            background-color: gold;
            border: none;
            padding: 8px 12px;
            border-radius: 50%;
            cursor: pointer;
            margin-left: 5px;
        }

        .search-button i { font-size: 16px; color: black; }

        .search-button:hover {
            background-color: white;
            color: gold;
        }

        .container {
            color: white;
            font-family: 'Georgia', serif;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.7);
            margin-top: 120px;
            padding: 50px;
            text-align: center;
        }

        h1 { color: gold; font-size: 3.5em; margin-bottom: 10px; }
        p { font-size: 1.5em; max-width: 800px; margin: auto; }

        .footer {
            background-color: rgba(0, 0, 51, 0.9);
            color: gold;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            text-align: center;
        }

        .cta-section {
            background-color: #333;
            color: white;
            padding: 50px 20px;
            text-align: center;
        }

        .cta-section h2 { font-size: 2.5em; margin-bottom: 20px; }

        .cta-button {
            background-color: gold;
            color: black;
            padding: 15px 30px;
            font-size: 1.2em;
            border-radius: 50px;
            border: none;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .cta-button:hover { background-color: #ffd700; color: black; }

        @media (max-width: 768px) {
            .navbar-menu { display: block; text-align: center; }
            .navbar a { padding: 12px 0; }
            .parallax h1 { font-size: 2.5em; }
            .search-input { width: 100%; }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <img src="https://d1csarkz8obe9u.cloudfront.net/posterpreviews/luxury-hotel-logo-design-template-ac37aa5c02927f6720bc68c71247b69c_screen.jpg?ts=1660122253" 
             alt="Hotel Logo" class="logo">
        
        <div class="navbar-menu">
            <a href="Home.jsp">Home</a>
            <a href="RoomsSuites.jsp">Rooms & Suites</a>
            <a href="services.jsp">Services</a>
            <a href="dining.jsp">Dining</a>
            <a href="shop.jsp">Shop</a>
            <a href="shop.jsp#testimonials">Testimonials</a>
            <a href="shop.jsp#gallery">Gallery</a>
            <a href="contactus.jsp">Contact Us</a>
            <a href="aboutus.jsp">About Us</a>
        </div>

        <div class="search-container">
            <input type="text" placeholder="Search..." class="search-input">
            <button class="search-button"><i class="fas fa-search"></i></button>
        </div>
    </div>

    <!-- Parallax Section -->
    <div class="parallax">
        <h1>Welcome, <%= user %>!</h1>
    </div>

    <!-- Main Content Section -->
    <div class="container">
        <p>Your luxury escape awaits. Book your stay with us today!</p>
        <h1>Experience unmatched luxury and comfort</h1>
        <p>Book a suite, enjoy fine dining, and relax with world-class services.</p>
    </div>

    <!-- Call to Action Section -->
    <div class="cta-section">
        <h2>Ready to Book Your Stay?</h2>
        <a href="RoomsSuites.jsp" class="cta-button">Book Now</a>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>© Grand Luxe Hotel. All Rights Reserved.</p>
        <div class="social-icons">
            <a href="https://www.facebook.com/theluxurycollection/" target="_blank"><i class="fab fa-facebook-f"></i></a>
            <a href="https://x.com/TajHotels/" target="_blank"><i class="fab fa-twitter"></i></a>
            <a href="https://www.instagram.com/luxuryhotelsworld/" target="_blank"><i class="fab fa-instagram"></i></a>
            <a href="https://www.anantara.com/en/contact-us" target="_blank"><i class="fab fa-whatsapp"></i></a>
        </div>
    </footer>

</body>
</html>
a
