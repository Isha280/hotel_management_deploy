<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transport Services | Grand Luxe Hotel</title>
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

        .transport-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            padding: 50px 20px;
            width: 80%;
            margin: auto;
        }

        .transport-card {
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.2);
            padding: 15px;
            transition: transform 0.3s;
        }

        .transport-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.3);
        }

        .transport-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 15px 15px 0 0;
        }

        .transport-info {
            padding: 15px;
            text-align: left;
        }

        .transport-info h3 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .transport-info p {
            color: #666;
            margin-bottom: 10px;
        }

        .price {
            font-size: 1.2em;
            font-weight: bold;
            color: gold;
        }

      

        .view-btn:hover {
            background-color: #ffd700;
            color: black;
        }

        @media (max-width: 768px) {
            .transport-container {
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
        Hotel Transport Services
    </div>

    <div class="transport-container">
        <!-- Transport 1 -->
        <div class="transport-card">
            <img src="Assets\images\transportye.jpg" alt="Airport Shuttle">
            <div class="transport-info">
                <h3>Airport Shuttle</h3>
                <p>Pick-up and drop service from the airport to the hotel.</p>
                <div class="price">$30 per trip</div>
                
            </div>
        </div>

        <!-- Transport 2 -->
        <div class="transport-card">
            <img src="Assets\images\transport3.jpg" alt="Luxury Car Service">
            <div class="transport-info">
                <h3>Luxury Car Service</h3>
                <p>High-end cars available for city tours and transfers.</p>
                <div class="price">$80 per hour</div>
                
            </div>
        </div>

        <!-- Transport 3 -->
        <div class="transport-card">
            <img src="Assets\images\motorbike.jpg" alt="Bike Rental">
            <div class="transport-info">
                <h3>Bike Rental</h3>
                <p>Rent bikes to explore the city or nearby attractions.</p>
                <div class="price">$20 per day</div>
                
            </div>
        </div>

        <!-- Transport 4 -->
        <div class="transport-card">
            <img src="Assets\images\taxi.jpg" alt="City Taxi Service">
            <div class="transport-info">
                <h3>City Taxi Service</h3>
                <p>On-demand taxi service for hotel guests.</p>
                <div class="price">$25 per ride</div>
             
            </div>
        </div>

    </div>

    <footer class="footer">
        <p>© 2024 Grand Luxe Hotel | <a href="privacy_policy.jsp">Privacy Policy</a> | <a href="contactus.jsp">Contact Us</a></p>
    </footer>

</body> 
</html>
