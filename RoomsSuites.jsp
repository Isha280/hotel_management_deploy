<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rooms & Suites</title>
    <!-- Correct Font Awesome Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        body {
            font-family: 'Georgia', serif;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        /* Parallax Effect for Background */
        .rooms-section {
            background-image: url('https://www.travelplusstyle.com/wp-content/uploads/2016/01/sonevajani-1880.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
            position: relative;
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.5); 
            /* Dark overlay */
        }

        .rooms-section h1 {
            font-size: 3.5em;
            color: gold;
            margin-bottom: 20px;
            animation: fadeIn 3s ease-out;
            
        }

        /* Scroll Down Arrow */
        .scroll-down {
            position: absolute;
            bottom: 30px;
            font-size: 2.5em;
            color: white;
            cursor: pointer;
            animation: bounce 2s infinite;
        }

        @keyframes bounce {
            0% { transform: translateY(0); }
            50% { transform: translateY(15px); }
            100% { transform: translateY(0); }
        }

        /* Room Container Section */
.room-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 30px;
    padding: 50px 20px;
    width: 80%;
    margin: auto;
    background-image: url('https://ae01.alicdn.com/kf/Sc7c9b97615e042bc8423a1e04c1be9f1H.jpg'); /* Add your background image URL here */
    background-size: cover; /* Ensure the image covers the container */
    background-position: center; /* Centers the image */
    background-attachment: fixed; /* Keeps the background fixed while scrolling */
    color: white; /* Ensures text stands out against the background */
}


        .room-card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease;
        }

        .room-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
        }

        .room-card img {
            border-radius: 15px 15px 0 0;
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .room-card .room-info {
            padding: 15px;
            text-align: left;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .room-card .room-info h3 {
            color: #333;
            font-size: 1.8em;
            margin-bottom: 10px;
        }

        .room-card .room-info p {
            color: #666;
            font-size: 1em;
            margin-bottom: 15px;
        }

        .room-card .room-info .price {
            font-size: 1.4em;
            color: gold;
            font-weight: bold;
        }

        /* Button Styling */
        .view-btn {
            align-self: flex-end; /* Align button to the right */
            background-color: gold;
            color: black;
            padding: 10px 20px;
            border: none;
            font-size: 1em;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s;
            text-decoration: none;
        }

        .view-btn:hover {
            background-color: #ffd700;
            color: black;
        }

        /* Animations */
        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        /* Footer */
        .footer {
            background-color: rgba(0, 0, 51, 0.9);
            color: gold;
            padding: 10px;
            text-align: center;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .room-container {
                grid-template-columns: 1fr;
            }

            .rooms-section h1 {
                font-size: 2.5em;
            }

            .room-card {
                margin: 10px 0;
            }
        }
    </style>
</head>
<body>

    <!-- Parallax Section (Background Image) -->
    <section class="rooms-section">
        <h1>Our Luxurious Rooms & Suites</h1>
        <!-- Scroll Down Indicator -->
        <div class="scroll-down" onclick="scrollToContent()">
            <i class="fas fa-chevron-down"></i>
        </div>
    </section>

    <!-- Rooms Display Grid -->
    <div class="room-container">
        <!-- Room 1 -->
        <div class="room-card">
           <img src="Assets/images/image1.jpg" alt="Logo">
            <div class="room-info">
                <h3>Deluxe Suite</h3>
                <p>A spacious and elegant suite offering the best comfort for your stay.</p>
                <!--<div class="price">$250/night</div>-->
               <a href="room-details.jsp?room=deluxe" class="view-btn">View Details</a>
            </div>
        </div>

        <!-- Room 2 -->
        <div class="room-card">
             <img src="Assets/images/image2.jpg" alt="Logo">
            <div class="room-info">
                <h3>Ocean View Room</h3>
                <p>Enjoy a beautiful ocean view in this modern and luxurious room.</p>
                <!--<div class="price">$350/night</div>-->
             <a href="room-details.jsp?room=ocean-view" class="view-btn">View Details</a>
            </div>
        </div>

        <!-- Room 3 -->
        <div class="room-card">
          <img src="Assets/images/image3.jpg" alt="Logo">
            <div class="room-info">
                <h3>Presidential Suite</h3>
                <p>Experience the highest luxury with panoramic views and exclusive amenities.</p>
                <!--<div class="price">$500/night</div>-->
                <a href="room-details.jsp?room=presidential" class="view-btn">View Details</a>
            </div>
        </div>
   <div class="room-card">
            
            <div class="room-info">
                 <img src="Assets/images/im.jpg" alt="Logo">
                <h3>Garden Suite</h3>
                <p>A peaceful retreat with views of the lush hotel gardens, offering a relaxing ambiance and luxurious amenities.</p>
                <div class="price">$650/night</div>
               <a href="room-details.jsp?room=garden-suite" class="view-btn">View Details</a>
            </div>
        </div>
         <div class="room-card">
              <img src="Assets/images/image5.jpg" alt="Logo">
         
            <div class="room-info">
                <h3>Mountain Suite</h3>
                <p>A spacious room with panoramic mountain views, designed for ultimate relaxation and comfort.</p>
                <div class="price">$390/night</div>
               <a href="room-details.jsp?room=mountain-suite" class="view-btn">View Details</a>
            </div>
        </div>
        <div class="room-card">
            <img src="Assets/images/image6.jpg" alt="Logo">
            <div class="room-info">
                <h3>Luxury Penthouse</h3>
                <p>Indulge in the finest luxury with a private terrace, hot tub, and breathtaking views of the city skyline.</p>
                <div class="price">$390/night</div>
               <a href="room-details.jsp?room=luxury-penthouse" class="view-btn">View Details</a>
            </div>
        </div>
        
    </div>

  
   <footer class="footer">
    <p>© 2024 Grand Luxe Hotel | <a href="privacy_policy.jsp">Privacy Policy</a> | <a href="contactus.jsp">Contact Us</a></p>
</footer>

    <!-- Smooth Scroll Function -->
    <script>
        function scrollToContent() {
            document.querySelector('.room-container').scrollIntoView({
                behavior: 'smooth'
            });
        }
    </script>

</body>
</html>
