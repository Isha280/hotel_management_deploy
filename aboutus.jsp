<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us | Grand Luxe Hotel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* General Styles */
        body {
            font-family: 'Georgia', serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
            color: #333;
        }

        /* About Section */
        .about-section {
            padding: 60px 20px;
            text-align: center;
            background-color: #fff;
            color: #444;
        }

        .about-section h2 {
            font-size: 2.8em;
            color: #333;
            margin-bottom: 20px;
            position: relative;
        }

        .about-section h2::after {
            content: "";
            display: block;
            width: 100px;
            height: 5px;
            background: gold;
            margin: 10px auto;
            border-radius: 5px;
        }

        .about-section p {
            font-size: 1.2em;
            line-height: 1.6em;
            color: #555;
            margin: 0 auto;
            max-width: 900px;
            padding: 10px;
        }

        /* Team Section */
        .team-section {
            display: flex;
            justify-content: space-around;
            align-items: center;
            flex-wrap: wrap;
            padding: 50px 20px;
            background-color: #fafafa;
        }

        .team-member {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 250px;
            margin: 20px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
            position: relative;
        }

        .team-member:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .team-member img {
            width: 100%;
            height: 200px;
            border-radius: 15px 15px 0 0;
            object-fit: cover;
        }

        .team-member h3 {
            font-size: 1.5em;
            color: #333;
            margin: 10px 0;
        }

        .team-member p {
            font-size: 1.1em;
            color: #555;
            padding: 0 10px;
        }

        /* Footer Section */
        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
        }

        .footer a {
            color: gold;
            text-decoration: none;
            font-size: 1.2em;
            padding: 10px;
        }

        .footer a:hover {
            color: white;
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .team-section {
                flex-direction: column;
                align-items: center;
            }

            .about-section p {
                font-size: 1em;
                padding: 10px;
            }

            .about-section h2 {
                font-size: 2.5em;
            }

            .team-member {
                width: 80%;
            }
        }
    </style>
</head>
<body>

    <!-- About Us Section -->
    <section class="about-section">
        <h2>About Us</h2>
        <p>At Grand Luxe Hotel, we offer more than just a place to stay. Our mission is to create an unforgettable experience, where luxury meets comfort. Our stunning accommodations, world-class amenities, and exceptional service are designed to make every guest feel at home. Whether you're here for business or leisure, we aim to provide an oasis of peace and relaxation for all.</p>
    </section>

    <!-- Team Section -->
    <section class="team-section">
        <div class="team-member">
            <img src="https://randomuser.me/api/portraits/men/1.jpg" alt="Team Member 1">
            <h3>John Doe</h3>
            <p>General Manager</p>
        </div>

        <div class="team-member">
            <img src="https://randomuser.me/api/portraits/women/1.jpg" alt="Team Member 2">
            <h3>Jane Smith</h3>
            <p>Executive Chef</p>
        </div>

        <div class="team-member">
            <img src="https://randomuser.me/api/portraits/men/2.jpg" alt="Team Member 3">
            <h3>David Lee</h3>
            <p>Guest Relations</p>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="footer">
        <p>© 2024 Grand Luxe Hotel | <a href="#">Privacy Policy</a> | <a href="#">Contact Us</a></p>
    </footer>

</body>
</html>
