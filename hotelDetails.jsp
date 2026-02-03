<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Details | Grand Luxe Hotel</title>
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

        .hotel-section {
            width: 80%;
            margin: 40px auto;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.2);
            overflow: hidden;
        }

        .hotel-image {
            width: 100%;
            height: 400px;
            object-fit: cover;
        }

        .hotel-content {
            padding: 30px;
        }

        .hotel-content h2 {
            color: #222;
            margin-bottom: 20px;
        }

        .hotel-content p {
            font-size: 1.1em;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .facilities, .room-types, .amenities, .events, .attractions {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 30px;
        }

        .card {
            flex: 1 1 200px;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        .card i {
            font-size: 2.5em;
            color: gold;
            margin-bottom: 10px;
        }

        .card h3 {
            font-size: 1.2em;
            margin-bottom: 5px;
        }

        .footer {
            background-color: rgba(0, 0, 51, 0.9);
            color: gold;
            padding: 10px;
            text-align: center;
        }

        @media(max-width: 768px) {
            .facilities, .room-types, .amenities, .events, .attractions {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        Grand Luxe Hotel
    </div>

    <!-- Hotel Overview -->
    <div class="hotel-section">
        <img src="https://www.travelplusstyle.com/wp-content/uploads/2016/01/sonevajani-1880.jpg" alt="Grand Luxe Hotel" class="hotel-image">
        <div class="hotel-content">
            <h2>About Our Hotel</h2>
            <p>Welcome to <strong>Grand Luxe Hotel</strong>, a world-class luxury retreat where elegance meets comfort. Established in 1995, we have been providing unforgettable experiences with stunning architecture, luxurious rooms, and exquisite services.</p>

            <h2>Our History</h2>
            <p>From a boutique city hotel to a 5-star luxury destination, Grand Luxe Hotel has hosted international guests, dignitaries, and celebrities. We pride ourselves on exceptional service and attention to detail.</p>

            <h2>Room Types & Highlights</h2>
            <div class="room-types">
                <div class="card">
                    <i class="fas fa-bed"></i>
                    <h3>Standard Room</h3>
                    <p>Comfortable and modern with city views, perfect for business travelers.</p>
                </div>
                <div class="card">
                    <i class="fas fa-bed"></i>
                    <h3>Deluxe Room</h3>
                    <p>Spacious with elegant furnishings and luxury amenities for relaxation.</p>
                </div>
                <div class="card">
                    <i class="fas fa-couch"></i>
                    <h3>Suite</h3>
                    <p>Lavish suites with private lounge areas, ideal for extended stays.</p>
                </div>
                <div class="card">
                    <i class="fas fa-star"></i>
                    <h3>Presidential Suite</h3>
                    <p>Exclusive and grand with panoramic views, private terrace, and concierge service.</p>
                </div>
            </div>

            <h2>Facilities & Amenities</h2>
            <div class="facilities">
                <div class="card">
                    <i class="fas fa-swimming-pool"></i>
                    <h3>Infinity Pool</h3>
                    <p>Relax in our rooftop pool with panoramic city views.</p>
                </div>
                <div class="card">
                    <i class="fas fa-dumbbell"></i>
                    <h3>Fitness Center</h3>
                    <p>State-of-the-art gym with personal trainers available.</p>
                </div>
                <div class="card">
                    <i class="fas fa-spa"></i>
                    <h3>Spa & Wellness</h3>
                    <p>Luxury spa offering massages, facials, and wellness therapies.</p>
                </div>
                <div class="card">
                    <i class="fas fa-utensils"></i>
                    <h3>Fine Dining</h3>
                    <p>Multi-cuisine restaurant with indoor and rooftop seating.</p>
                </div>
                <div class="card">
                    <i class="fas fa-shuttle-van"></i>
                    <h3>Airport Transport</h3>
                    <p>Complimentary shuttle service for hotel guests.</p>
                </div>
                <div class="card">
                    <i class="fas fa-concierge-bell"></i>
                    <h3>24/7 Concierge</h3>
                    <p>Assistance for bookings, tours, and personal requests.</p>
                </div>
            </div>

            <h2>Events & Meetings</h2>
            <div class="events">
                <div class="card">
                    <i class="fas fa-users"></i>
                    <h3>Conference Rooms</h3>
                    <p>Modern spaces equipped with projectors and Wi-Fi for business events.</p>
                </div>
                <div class="card">
                    <i class="fas fa-glass-cheers"></i>
                    <h3>Banquet Halls</h3>
                    <p>Elegant halls for weddings, parties, and celebrations.</p>
                </div>
            </div>

            <h2>Nearby Attractions</h2>
            <div class="attractions">
                <div class="card">
                    <i class="fas fa-landmark"></i>
                    <h3>City Museum</h3>
                    <p>Just 5 minutes away, explore history and art.</p>
                </div>
                <div class="card">
                    <i class="fas fa-umbrella-beach"></i>
                    <h3>Beach</h3>
                    <p>Relax by the serene beach located 10 minutes from the hotel.</p>
                </div>
            </div>

            <h2>Contact & Location</h2>
            <p>123 Luxury Street, Downtown City, Country.<br>
            Phone: +123-456-7890<br>
            Email: info@grandluxehotel.com</p>
        </div>
    </div>

    <footer class="footer">
        © 2024 Grand Luxe Hotel | <a href="privacy_policy.jsp">Privacy Policy</a> | <a href="contactus.jsp">Contact Us</a>
    </footer>

</body>
</html>
