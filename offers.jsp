<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Special Offers | Grand Luxe Hotel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Georgia', serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .header {
            background-color: #222;
            color: gold;
            text-align: center;
            padding: 40px 20px;
            font-size: 2.5em;
            font-weight: bold;
        }

        .offers-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            padding: 50px 20px;
            width: 80%;
            margin: auto;
        }

        .offer-card {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.2);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s;
        }

        .offer-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.3);
        }

        .offer-card i {
            font-size: 3em;
            color: gold;
            margin-bottom: 15px;
        }

        .offer-card h3 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .offer-card p {
            color: #666;
            font-size: 1em;
            margin-bottom: 15px;
        }

        .offer-card .action-btn {
            display: inline-block;
            background-color: gold;
            color: black;
            padding: 10px 20px;
            border-radius: 50px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .offer-card .action-btn:hover {
            background-color: #ffd700;
        }

        @media (max-width: 768px) {
            .offers-container {
                grid-template-columns: 1fr;
            }
        }

        .footer {
            background-color: rgba(0, 0, 51, 0.9);
            color: gold;
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>

    <div class="header">
        Hotel Special Offers
    </div>

    <div class="offers-container">
        <!-- Offer 1 -->
        <div class="offer-card">
            <i class="fas fa-gift"></i>
            <h3>Book 2 Rooms, Get Transport Free</h3>
            <p>Book any 2 rooms and enjoy complimentary airport shuttle or city transport service during your stay.</p>
            <a href="RoomsSuites.jsp" class="action-btn">Book Now</a>
        </div>

        <!-- Offer 2 -->
        <div class="offer-card">
            <i class="fas fa-percentage"></i>
            <h3>10% Off for Weekend Stays</h3>
            <p>Stay with us on Friday and Saturday nights and get 10% discount on your booking.</p>
            <a href="RoomsSuites.jsp" class="action-btn">Book Now</a>
        </div>

        <!-- Offer 3 -->
        <div class="offer-card">
            <i class="fas fa-spa"></i>
            <h3>Free Spa with Suite Booking</h3>
            <p>Book any suite and enjoy one complimentary spa session for ultimate relaxation.</p>
            <a href="RoomsSuites.jsp" class="action-btn">Book Now</a>
        </div>

        <!-- Offer 4 -->
        <div class="offer-card">
            <i class="fas fa-wine-glass-alt"></i>
            <h3>Romantic Dinner Package</h3>
            <p>Book a deluxe or suite room and get a complimentary romantic dinner for two in our rooftop restaurant.</p>
            <a href="RoomsSuites.jsp" class="action-btn">Book Now</a>
        </div>
    </div>

    <footer class="footer">
        <p>© 2024 Grand Luxe Hotel | <a href="privacy_policy.jsp">Privacy Policy</a> | <a href="contactus.jsp">Contact Us</a></p>
    </footer>

</body>
</html>
