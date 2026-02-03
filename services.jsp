<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Manager Dashboard | Grand Luxe Hotel</title>
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
            font-size: 2em;
            font-weight: bold;
        }

        .dashboard {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 30px;
            gap: 20px;
        }

        .card {
            background-color: white;
            width: 250px;
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0 6px 15px rgba(0,0,0,0.2);
            text-align: center;
            transition: transform 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card i {
            font-size: 3em;
            color: gold;
            margin-bottom: 15px;
        }

        .card h3 {
            margin-bottom: 10px;
        }

        .card p {
            font-size: 0.9em;
            color: #666;
        }

        .card a {
            display: inline-block;
            margin-top: 10px;
            text-decoration: none;
            color: white;
            background-color: gold;
            padding: 10px 20px;
            border-radius: 50px;
            transition: background-color 0.3s;
        }

        .card a:hover {
            background-color: #ffd700;
        }

        @media (max-width: 768px) {
            .dashboard {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        Grand Luxe Hotel Manager Dashboard
    </div>

    <div class="dashboard">
        <div class="card">
            <i class="fas fa-bed"></i>
            <h3>Room Management</h3>
            <p>View and update room availability, prices, and types.</p>
            <a href="RoomsSuites.jsp">Explore</a>
        </div>

        <div class="card">
            <i class="fas fa-shuttle-van"></i>
            <h3>Transport Services</h3>
            <p>Manage hotel transport options for guests.</p>
            <a href="transport.jsp">Explore</a>
        </div>

        <div class="card">
            <i class="fas fa-tags"></i>
            <h3>Offers & Discounts</h3>
            <p>Add or update seasonal offers and special discounts.</p>
            <a href="offers.jsp">Explore</a>
        </div>

        <div class="card">
            <i class="fas fa-info-circle"></i>
            <h3>Hotel Details</h3>
            <p>Edit hotel description, facilities, and services info.</p>
            <a href="hotelDetails.jsp">Explore</a>
        </div>

        <div class="card">
            <i class="fas fa-users"></i>
            <h3>Guest Feedback</h3>
            <p>View guest reviews and feedback to improve services.</p>
            <a href="feedback.jsp">Explore</a>
        </div>
    </div>

</body>
</html>
