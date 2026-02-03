<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation | Grand Luxe Hotel</title>
    <style>
        body {
            font-family: 'Georgia', serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .confirmation-container {
            width: 50%;
            background-color: white;
            margin: 100px auto;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.2);
            text-align: center;
        }

        h1 {
            color: gold;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.2em;
            margin-bottom: 15px;
        }

        a {
            text-decoration: none;
            color: white;
            background-color: gold;
            padding: 12px 25px;
            border-radius: 30px;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #ffd700;
        }

        @media (max-width: 768px) {
            .confirmation-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <div class="confirmation-container">
        <h1>Booking Confirmed!</h1>
        <p>Thank you, <strong><%= request.getParameter("name") %></strong>, for booking with us.</p>
        <p>Email: <strong><%= request.getParameter("email") %></strong></p>
        <p>Phone: <strong><%= request.getParameter("phone") %></strong></p>
        <p>Room Type: <strong><%= request.getParameter("roomType") %></strong></p>
        <p>Check-In: <strong><%= request.getParameter("checkin") %></strong></p>
        <p>Check-Out: <strong><%= request.getParameter("checkout") %></strong></p>

        <br>
        <a href="booking.jsp">Book Another Room</a>
    </div>

</body>
</html>
