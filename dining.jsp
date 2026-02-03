<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dining - Luxury Hotel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <style>
        /* General Body Styles */
        body {
            font-family: 'Georgia', serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f4f4f4;
            color: #333;
        }

        /* Parallax Background for Dining Page */
        .dining-header {
            background-image: url('https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2021/08/11133120/man-wah-1.jpeg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
            font-size: 2.5em;
            font-weight: bold;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
        }

        /* Restaurant Info Section */
        .restaurant-info {
            padding: 80px 20px;
            background-color: #fff;
            text-align: center;
            color: #444;
        }

        .restaurant-info h2 {
            font-size: 3em;
            margin-bottom: 20px;
            color: #333;
        }

        .restaurant-info p {
            font-size: 1.2em;
            max-width: 900px;
            margin: auto;
            line-height: 1.6em;
            color: #666;
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

        /* Menu Section */
        /* Menu Section */
.menu-section {
    display: flex;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
    padding: 40px 20px;
    background-image: url('https://t3.ftcdn.net/jpg/02/02/77/24/360_F_202772433_NabmmrAQzHDEsfVT8IlEkHxTvnr9fVks.jpg');  /* Add your background image here */
    background-size: cover;  /* Ensures the image covers the section */
    background-position: center;  /* Keeps the image centered */
    background-attachment: fixed;  /* Keeps the background image fixed during scrolling */
    color: white;  /* Adjust the text color for readability against the image */
}


        .menu-item {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 15%; /* Decreased width */
            margin: 15px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
            height:400 px; /* Decreased height */
            position: relative; /* Position for the like button */
        }

        .menu-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .menu-item img {
            width: 100%;
            height: 180px; /* Decreased image height */
            border-radius: 15px 15px 0 0;
            object-fit: cover;
        }

        .menu-item .item-info {
            padding: 15px;
        }

        .menu-item h3 {
            font-size: 1.3em; /* Decreased font size */
            margin-bottom: 10px;
            color: #333;
        }

        .menu-item p {
            font-size: 0.9em; /* Decreased font size */
            color: #555;
        }

        .menu-item .price {
            font-size: 1.1em; /* Decreased font size */
            color: gold;
            margin-top: 10px;
        }

        /* Like Button */
        .menu-item .like-btn {
            position: absolute;
            top: 15px;
            right: 15px;
            background-color: transparent;
            border: none;
            color: #f44336; /* Red color for the heart */
            font-size: 1.5em;
            cursor: pointer;
            transition: color 0.3s;
        }

        .menu-item .like-btn:hover {
            color: white; /* Light red color when hovering */
        }

        .menu-header {
            width: 100%;
            text-align: center; /* Centers the text */
            font-size: 2.5em;
            font-weight: bold;
            color: white;
            text-transform: uppercase;
            border-bottom: 3px solid gold;
            padding-bottom: 10px;
            margin-top: 50px; /* Adds space above */
            margin-bottom: 20px; /* Adds space below */
        }

        /* Reservation Section */
        .reservation-section {
            padding: 60px 20px;
            text-align: center;
            background-color: #333;
            color: white;
        }

        .reservation-section h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        .reservation-form {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }

        .reservation-form input,
        .reservation-form button {
            padding: 12px;
            margin: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1em;
        }

        .reservation-form input {
            width: 200px;
            margin-right: 10px;
        }

        .reservation-form button {
            background-color: gold;
            color: black;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .reservation-form button:hover {
            background-color: #ffd700;
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
            .menu-item {
                width: 90%;
            }

            .restaurant-info p {
                font-size: 1em;
                padding: 10px;
            }

            .reservation-form input {
                width: 100%;
            }

            .reservation-form button {
                width: 100%;
            }
        }
        /* Buy Now Button */
.buy-now-btn {
    background-color: #28a745;  /* Green background for the button */
    color: white;
    padding: 10px 20px;
    font-size: 1em;
    border: none;
    border-radius: 25px;
    cursor: pointer;
    margin-top: 10px;
    transition: background-color 0.3s ease;
}

.buy-now-btn:hover {
    background-color: #218838;  /* Darker green on hover */
}

    </style>
</head>
<body>

    <!-- Parallax Section -->
    <section class="dining-header">
        Dining Experience at Grand Luxe Hotel
        <div class="scroll-down" onclick="scrollToContent()">
            <i class="fas fa-chevron-down"></i>
        </div>
    </section>

    <!-- Restaurant Info Section -->
    <section class="restaurant-info">
        <h2>Welcome to Our World-Class Dining</h2>
        <p>At Grand Luxe Hotel, we offer a variety of dining experiences, from gourmet fine dining to casual meals. Whether you are in the mood for a five-course meal or a relaxed afternoon snack, our talented chefs are here to provide you with the most exquisite dining experience. Enjoy the best flavors from around the world, all served with impeccable style and elegance.</p>
    </section>

   

    <!-- Menu Section -->
    <section class="menu-section">
        <h2 class="menu-header">Delicious Food Selection</h2><br>
        
        <!-- Menu Item 1 -->
        <div class="menu-item">
              <img src="Assets/images/Dinning/image2.webp" alt="Dish1"> 
            <div class="item-info">
                <h3>Gourmet Steak</h3>
                <p>Perfectly seared steak with a choice of sauces and sides.</p>
                 <button class="like-btn">
        <i class="fas fa-heart"></i>
    </button>
                <div class="price">$50</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Gourmet Steak%20Steak&price=75'">Buy Now</button>

            </div>
            <!-- Like Button -->
    <button class="like-btn">
        <i class="fas fa-heart"></i>
    </button>
        </div>
        
        <!-- Menu Item 2 -->
        <div class="menu-item">
             <img src="Assets/images/Dinning/image3" alt="Dish2"> 
            <div class="item-info">
                <h3>Seafood Platter</h3>
                <p>A premium selection of fresh seafood including lobster, shrimp, and more.</p>
                <div class="price">$80</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Seafood Platter%20Steak&price=80'">Buy Now</button>

            </div>
        </div>
          <div class="menu-item">
            <img src="Assets/images/Dinning/image4.webp" alt="Dish1"> 
            <div class="item-info">
                <h3>Paneer Tikka</h3>
                <p>Marinated cottage cheese cubes grilled to perfection, infused with smoky flavors and served with mint chutney..</p>
                <div class="price">$130</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Paneer Tikka%20Steak&price=130'">Buy Now</button>

            </div>
        </div>
        <div class="menu-item">

            <img src="Assets/images/Dinning/image5" alt="Dish5"> 
            <div class="item-info">
                <h3>Hyderabadi Biryani</h3>
                <p>A fragrant and spiced rice dish cooked with marinated chicken or lamb, saffron, and caramelized onions, served with raita.</p>
                <div class="price">200</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Hyderabadi Biryani%20Steak&price=200'">Buy Now</button>

            </div>
        </div>
         <div class="menu-item">
           
            <img src="Assets/images/Dinning/image6" alt="Dish1"> 
            <div class="item-info">
                <h3>Chole Bhature</h3>
                <p>A hearty dish of spicy chickpea curry served with deep-fried, fluffy bread called bhature.</p>
                <div class="price">$110</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Chole Bhature%20Steak&price=110'">Buy Now</button>

            </div>
        </div>
         <div class="menu-item">
            <img src="Assets/images/Dinning/image7" alt="Dish2"> 
            <div class="item-info">
                <h3>Rogan Josh</h3>
                <p>A flavorful Kashmiri curry made with slow-cooked tender lamb, yogurt, and a blend of rich spices.</p>
                <div class="price">$140</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Rogan Josh%20Steak&price=140'">Buy Now</button>

            </div>
        </div>

        <!-- Menu Item 3 -->
        <div class="menu-item">
            <img src="Assets/images/Dinning/image8" alt="Dish2"> 
            <div class="item-info">
                <h3>Vegetarian food </h3>
                <p>Deliciously creamy pasta with a mix of fresh vegetables and herbs.</p>
                <div class="price">$400</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Vegetarian food%20Steak&price=400'">Buy Now</button>

            </div>
        </div>
        <div class="menu-item">
           <img src="Assets/images/Dinning/image9" alt="Dish2"> 
            <div class="item-info">
                <h3>Grilled Salmon </h3>
                <p>Fresh, wild-caught salmon grilled to perfection and served with a citrus glaze, alongside a side of steamed asparagus and wild rice.</p>
                
                  <div class="price">$85</div>
         <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Grilled Salmon%20Steak&price=85'">Buy Now</button>

            </div>
        </div>
        <div class="menu-item">
           <img src="Assets/images/Dinning/image10" alt="Dish2"> 
            <div class="item-info">
                <h3>Classic Caesar Salad </h3>
                <p>Crisp romaine lettuce tossed in a rich Caesar dressing, topped with crunchy croutons, shaved Parmesan, and a drizzle of olive oil.</p>
                <div class="price">$50</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Classic Caesar Salad%20Steak&price=50'">Buy Now</button>


            </div>
        </div>
        
        <div class="menu-item">
            <img src="Assets/images/Dinning/image11" alt="Dish2"> 
         
            <div class="item-info">
                <h3>Beef Wellington </h3>
                <p> A tender beef fillet coated with mushroom duxelles and wrapped in puff pastry, baked to perfection, and served with a rich red wine reduction.</p>
                <div class="price">$65</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Beef Wellington%20Steak&price=65'">Buy Now</button>

            </div>
        </div>
        <h2 class="menu-header">Refreshing Drinks</h2>
        <div class="menu-item">
           <img src="Assets/images/Dinning/image12" alt="Dish2"> 
            <div class="item-info">
                <h3>Signature Mojito </h3>
                <p> A refreshing cocktail made with fresh mint, lime, rum, and a touch of sugar, topped with sparkling soda water. Perfect for a summer day.</p>
                <div class="price">$75</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Signature Mojito%20Steak&price=75'">Buy Now</button>

            </div>
        </div>
        <div class="menu-item">
            <img src="Assets/images/Dinning/image13" alt="Dish2"> 
            <div class="item-info">
                <h3>Classic Martini </h3>
                <p>A sophisticated blend of gin and dry vermouth, garnished with a lemon twist or olive. A timeless drink for those who appreciate elegance.</p>
                <div class="price">$40</div>
                      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Classic Martini %20Steak&price=40'">Buy Now</button>

            </div>
        </div>
         <div class="menu-item">
            <img src="Assets/images/Dinning/image14" alt="Dish2"> 
            <div class="item-info">
                <h3>Mango Smoothie </h3>
                <p> A tropical blend of ripe mangoes, yogurt, and a hint of honey, pureed to a creamy perfection. A deliciously healthy treat.</p>
                <div class="price">$30</div>
         <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Mango Smoothie %20Steak&price=30'">Buy Now</button>

            </div>
        </div>
        <div class="menu-item">
            <img src="Assets/images/Dinning/image15" alt="Dish2"> 
            <div class="item-info">
                <h3>Strawberry Daiquiri </h3>
                <p> A sweet, tangy cocktail made with rum, fresh strawberries, lime juice, and sugar, blended to a refreshing slush.</p>
                <div class="price">$45</div>
       <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Strawberry Daiquiri %20Steak&price=45'">Buy Now</button>

            </div>
        </div>
        <div class="menu-item">
            <img src="Assets/images/Dinning/image16" alt="Dish2"> 
            <div class="item-info">
                <h3>Café Mocha </h3>
                <p>A rich blend of espresso, hot chocolate, and steamed milk, topped with whipped cream. A perfect choice for coffee lovers with a sweet tooth.</p>
                <div class="price">$35</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Café Mocha%20Steak&price=35'">Buy Now</button>


            </div>
        </div>
        <div class="menu-item">
            <img src="Assets/images/Dinning/image17" alt="Dish2"> 
            <div class="item-info">
                <h3>Berry Lemonade</h3>
                <p>A deliciously tangy lemonade made with fresh berries, a splash of lemon juice, and sweetened to perfection. A fruity and refreshing drink for all ages..</p>
                <div class="price">$85</div>
             <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Berry Lemonade%20Steak&price=85'">Buy Now</button>

            </div>
        </div>
        <div class="menu-item">
           <img src="Assets/images/Dinning/image18" alt="Dish2"> 
            <div class="item-info">
                <h3>blue lagoon cocktail</h3>
                <p>A vibrant blue cocktail made with vodka, blue curaçao, and lemonade, served over ice for a refreshing citrus burst.</p>
                <div class="price">$25</div>
                <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=blue lagoon cocktail%20Steak&price=25'">Buy Now</button>

            </div>
        </div>
        <div class="menu-item">
           <img src="Assets/images/Dinning/image19" alt="Dish2"> 
            <div class="item-info">
                <h3>Coconut Fizz</h3>
                <p>A creamy coconut mocktail with a hint of vanilla, topped with sparkling soda for a fizzy, tropical twist..</p>
                <div class="price">$35</div>
      <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Coconut Fizz%20Steak&price=75'">Buy Now</button>

            </div>
        </div>
        <div class="menu-item">
           <img src="Assets/images/Dinning/image29" alt="Dish2"> 
            <div class="item-info">
                <h3>fresh lavender</h3>
                <p>A soothing and floral lemonade infused with fresh lavender and sweetened with pure honey, served over ice.</p>
                <div class="price">$75</div>
                           <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=fresh lavender%20Steak&price=75'">Buy Now</button>

            </div>
        </div>
        <div class="menu-item">
            <img src="Assets/images/Dinning/image21" alt="Dish2"> 
            <div class="item-info">
                <h3>Watermelon Cooler</h3>
                <p>A light and refreshing drink made with fresh watermelon juice, a splash of lime, and mint leaves for a cooling effect.</p>
                <div class="price">50</div>
              <button class="cta-button" onclick="location.href='menu_order.jsp?menu_name=Watermelon Cooler%20Steak&price=50'">Buy Now</button>


            </div>
        </div>
        
        
    </section>


    <section class="reservation-section">
    <h2>Reserve Your Table Now</h2>
    <form class="reservation-form" method="post" action="reservation.jsp">
        <input type="text" name="name" placeholder="Enter your name" required>
        <input type="email" name="email" placeholder="Enter your email" required>
        <button type="submit">Book Now</button>
    </form>
</section>

   
   <footer class="footer">
    <p>© 2024 Grand Luxe Hotel | <a href="privacy_policy.jsp">Privacy Policy</a> | <a href="contactus.jsp">Contact Us</a></p>
</footer>

    <!-- Smooth Scroll Function -->
    <script>
        function scrollToContent() {
            document.querySelector('.menu-section').scrollIntoView({
                behavior: 'smooth'
            });
        }
    </script>

</body>
</html>
