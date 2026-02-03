<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>

<%
    // Room details data
    Map<String, String[]> roomDetails = new HashMap<>();

    roomDetails.put("deluxe", new String[]{
        "Deluxe Room",
        "https://www.bellustartokyo.jp/assets/images/guestrooms/deluxe-suite_im01_01.jpg",
        "A spacious and elegant suite offering the best comfort.",
        "₹7500/night",
        "★★★★★",
        "6 Guests",
        "Smart TV, Complimentary Breakfast, Highspeed Wifi, Individually AC"
    });

    roomDetails.put("ocean-view", new String[]{
        "Ocean View Room",
        "https://www.sripanwa.com/images/villas/two-bedroom-pool-villa-ocean-sunset-view-phuket-sri-panwa-luxury-resort.jpg",
        "Enjoy a beautiful ocean view in this modern and luxurious room.",
        "₹5500/night",
        "★★★★★",
        "4 Guests",
        "Smart TV, Complimentary Breakfast, Highspeed Wifi, Individually AC"
    });

    roomDetails.put("presidential", new String[]{
        "Presidential Suite",
        "https://assets.sandsresortsmacao.cn/content/venetianmacao/hotel/suite/2020/presidential-suite/vm_presidential-suite_banner_750x510.jpg",
        "Experience the highest luxury with panoramic views and exclusive amenities.",
        "₹12000/night",
        "★★★★★",
        "6 Guests",
        "Smart TV, Complimentary Breakfast, Highspeed Wifi, Individually AC"
    });

    roomDetails.put("garden-suite", new String[]{
        "Garden Suite",
        "https://images.squarespace-cdn.com/content/v1/5c9e66e1d7819e21e09450be/1567657493791-IO96RX2YOTAR2D8NN2MM/The+Anam_Balcony+Garden+View001.jpg",
        "A peaceful retreat with views of lush gardens and premium comfort.",
        "₹6500/night",
        "★★★★★",
        "4 Guests",
        "Smart TV, Complimentary Breakfast, Highspeed Wifi, Individually AC"
    });

    roomDetails.put("mountain-suite", new String[]{
        "Mountain Suite",
        "https://static.wixstatic.com/media/193fe3_dd1de890022f4887ba16a1f849e49020~mv2.jpg",
        "A spacious room with breathtaking mountain views.",
        "₹3900/night",
        "★★★★☆",
        "4 Guests",
        "Smart TV, Complimentary Breakfast, Highspeed Wifi, Individually AC"
    });

    roomDetails.put("luxury-penthouse", new String[]{
        "Luxury Penthouse",
        "https://www.bocadolobo.com/en/inspiration-and-ideas/wp-content/uploads/2020/01/feature-7.jpg",
        "Ultimate luxury with private terrace and skyline views.",
        "₹15000/night",
        "★★★★★",
        "6 Guests",
        "Smart TV, Complimentary Breakfast, Highspeed Wifi, Individually AC"
    });

    // Get selected room
    String roomType = request.getParameter("room");
    String[] details = roomDetails.getOrDefault(roomType, new String[]{
        "Room Not Found",
        "https://www.hotelieracademy.org/wp-content/uploads/2021/07/rooms-hotel.jpg",
        "Room details unavailable.",
        "N/A",
        "",
        "",
        ""
    });
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= details[0] %> - Room Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            margin: 0;
            padding: 0;
        }

        .room-container {
            max-width: 850px;
            margin: 50px auto;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
            overflow: hidden;
        }

        .room-image {
            width: 100%;
            height: 420px;
            object-fit: cover;
        }

        .room-info {
            padding: 30px;
            text-align: center;
        }

        .room-info h1 {
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .rating {
            color: #f5a623;
            font-size: 1.3em;
            margin-bottom: 10px;
        }

        .room-features {
            list-style: none;
            padding: 0;
            margin: 20px auto;
            max-width: 350px;
            text-align: left;
        }

        .room-features li {
            margin-bottom: 10px;
            font-size: 1.05em;
            color: #555;
        }

        .room-features i {
            color: #f5a623;
            margin-right: 8px;
        }

        .price {
            font-size: 1.5em;
            font-weight: bold;
            color: #2c3e50;
            margin: 20px 0;
        }

        .buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 12px 28px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.1em;
            transition: 0.3s;
        }

        .book-now {
            background: #d18f17;
            color: white;
        }

        .book-now:hover {
            background: #b97a10;
        }

        .back {
            background: #3498db;
            color: white;
        }

        .back:hover {
            background: #2980b9;
        }

        footer {
            text-align: center;
            background: rgba(0,0,51,0.9);
            color: gold;
            padding: 15px;
            margin-top: 50px;
        }
    </style>
</head>

<body>

<div class="room-container">
    <img src="<%= details[1] %>" alt="<%= details[0] %>" class="room-image">

    <div class="room-info">
        <h1><%= details[0] %></h1>

        <div class="rating"><%= details[4] %></div>

        <p><strong><%= details[5] %></strong></p>

        <ul class="room-features">
            <li><i class="fas fa-tv"></i> Smart TV</li>
            <li><i class="fas fa-coffee"></i> Complimentary Breakfast</li>
            <li><i class="fas fa-wifi"></i> Highspeed Wifi</li>
            <li><i class="fas fa-snowflake"></i> Individually AC</li>
        </ul>

        <p><%= details[2] %></p>

        <div class="price">From <%= details[3] %></div>

        <div class="buttons">
            <a href="room_booking.jsp?room=<%= roomType %>" class="btn book-now">
                Check Availability
            </a>
            <a href="RoomsSuites.jsp" class="btn back">
                Back to Rooms
            </a>
        </div>
    </div>
</div>

<footer>
    © Grand Luxe Hotel. All Rights Reserved.
</footer>

</body>
</html>
