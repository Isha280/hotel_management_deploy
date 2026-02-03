<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
    /* ================= BACKEND DATA ================= */

    class Product {
        String title, description, duration, age;
        double rating;
        int reviews, discount;

        Product(String title, String description, double rating,
                int reviews, String duration, String age, int discount) {
            this.title = title;
            this.description = description;
            this.rating = rating;
            this.reviews = reviews;
            this.duration = duration;
            this.age = age;
            this.discount = discount;
        }
    }

    List<Product> products = new ArrayList<>();

    products.add(new Product(
        "Swimming for man",
        "Swimming doller dolor sit aet odu tur ading elitse",
        4.5, 432, "2 Hours", "18+ years", 30
    ));

    products.add(new Product(
        "Swimming for man",
        "Swimming doller dolor sit aet odu tur ading elitse",
        4.5, 432, "2 Hours", "18+ years", 30
    ));

    products.add(new Product(
        "Swimming for man",
        "Swimming doller dolor sit aet odu tur ading elitse",
        4.5, 432, "2 Hours", "18+ years", 30
    ));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop Offers</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- Owl Carousel CSS -->
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

<!-- jQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Owl Carousel JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>


<style>
html {
    scroll-behavior: smooth;
}

body {
    margin: 0;
    font-family: 'Poppins', sans-serif;
    background: #d18f17;
}

/* ===== NAVBAR ===== */
nav {
    background: white;
    padding: 15px;
    text-align: center;
}

nav a {
    margin: 0 20px;
    text-decoration: none;
    font-weight: bold;
    color: #1f3b6f;
}

nav a:hover {
    color: #d18f17;
}

/* ===== HEADER ===== */
.shop-header {
    text-align: center;
    padding: 60px 20px 40px;
    color: white;
}

.shop-header small {
    letter-spacing: 4px;
    opacity: 0.9;
}

.shop-header h1 {
    font-size: 42px;
    margin-top: 10px;
}

/* ===== SHOP CONTAINER ===== */
.shop-container {
    background: white;
    padding: 60px;
    display: flex;
    justify-content: center;
    gap: 30px;
    flex-wrap: wrap;
    border-top-left-radius: 40px;
    border-top-right-radius: 40px;
}

/* ===== CARD ===== */
.shop-card {
    width: 320px;
    background: white;
    padding: 30px;
    border-radius: 18px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.15);
    transition: box-shadow 0.3s ease;
}

.shop-card:hover {
    box-shadow: 0 18px 35px rgba(0,0,0,0.25);
}

.shop-card small {
    color: #d18f17;
    font-weight: bold;
    letter-spacing: 2px;
}

.shop-card h2 {
    margin: 15px 0 10px;
    color: #1f3b6f;
}

.rating span {
    color: #d18f17;
    font-weight: bold;
}

.shop-card p {
    color: #777;
    line-height: 1.6;
}

/* ===== INFO ===== */
.info {
    display: flex;
    justify-content: space-between;
    margin: 20px 0;
    font-size: 15px;
}

.info i {
    color: #d18f17;
    margin-right: 6px;
}

/* ===== BUTTON ===== */
.shop-btn {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    padding: 12px 26px;
    background: #d18f17;
    color: white;
    text-decoration: none;
    border-radius: 30px;
    font-weight: bold;
}

.shop-btn:hover {
    background: #b97a10;
}

/* CARD HOVER EFFECT */
.shop-card {
    transition: transform 0.35s ease, box-shadow 0.35s ease;
}

.shop-card:hover {
    transform: translateY(-12px);
    box-shadow: 0 22px 45px rgba(0, 0, 0, 0.25);
}
.shop-card:hover {
    transform: translateY(-12px);
    box-shadow: 0 22px 45px rgba(209, 143, 23, 0.4);
    border: 1px solid #d18f17;
}
/* ===== TESTIMONIALS ===== */
.testimonials {
    background: #ffffff;
    padding: 90px 20px;
    text-align: center;
}

.testimonials small {
    letter-spacing: 4px;
    color: #d18f17;
    font-weight: 600;
}

.testimonials h2 {
    font-size: 40px;
    color: #1f3b6f;
    margin: 15px 0 50px;
}

.testimonial-card {
    max-width: 900px;
    margin: auto;
    background: #fff;
    padding: 60px;
    border-radius: 18px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.08);
}

.stars i {
    color: #d18f17;
    font-size: 18px;
    margin: 0 2px;
}

.testimonial-card h3 {
    color: #1f3b6f;
    margin: 20px 0;
}

.testimonial-card p {
    color: #777;
    font-size: 17px;
    line-height: 1.8;
    margin-bottom: 40px;
}

.customer {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 15px;
}

.customer img {
    width: 70px;
    height: 70px;
    border-radius: 50%;
    object-fit: cover;
}

.customer h4 {
    margin: 0;
    color: #1f3b6f;
}

.customer span {
    font-size: 14px;
    color: #999;
}



/* ===== IMAGE SECTION ===== */
.gallary {
    background: #fff;
    padding: 70px 50px;
}

.gallery-title {
    text-align: center;
    font-size: 32px;
    color: #1f3b6f;
    margin-bottom: 40px;
}

.gallary .item {
    position: relative;
    overflow: hidden;
    border-radius: 15px;
}

.gallary img {
    width: 100%;
    height: 300px;
    object-fit: cover;
    border-radius: 15px;
}

/* Overlay */
.gallary .overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(209,143,23,0.8);
    display: flex;
    align-items: center;
    justify-content: center;
    opacity: 0;
    transition: 0.4s;
}

.gallary .overlay i {
    font-size: 40px;
    color: white;
}

.gallary .item:hover .overlay {
    opacity: 1;
}
.gallery-title {
    text-align: center;
    color: white;
    font-family: 'Poppins', sans-serif;
}



</style>
</head>

<body>



<!-- ===== HEADER ===== -->
<div class="shop-header">
    <small>EXCLUSIVE OFFERS</small>
    <h1>You can get an exclusive offer</h1>
</div>

<!-- ===== SHOP CARDS ===== -->
<div class="shop-container">

<% for(Product p : products) { %>

    <div class="shop-card">
        <small>UP TO <%= p.discount %>% OFF</small>

        <h2><%= p.title %></h2>

        <div class="rating">
            <strong><%= p.rating %></strong>
            <span>(<%= p.reviews %> Reviews)</span>
        </div>

        <p><%= p.description %></p>

        <div class="info">
            <div><i class="fa-regular fa-clock"></i> <%= p.duration %></div>
            <div><i class="fa-regular fa-user"></i> <%= p.age %></div>
        </div>

        <a href="room-details.jsp?room=ocean-view" class="shop-btn">
            Check Availability <i class="fa-solid fa-arrow-right"></i>
        </a>
    </div>

<% } %>

</div>
<!-- ===== TESTIMONIALS ===== -->
<section class="testimonials">
    <small>TESTIMONIALS</small>
    <h2>What customers say</h2>

    <div class="testimonial-card">
        <div class="stars">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
        </div>

        <h3>Excellent Swimming</h3>

        <p>
            I recently had the pleasure of staying and it exceeded all my expectations.
            The hotel's beautiful location, luxurious rooms, attentive staff, and
            top-notch amenities make it an ideal choice for a relaxing getaway.
            Highly recommended!
        </p>

        <div class="customer">
            <img src="https://i.pravatar.cc/150?img=12" alt="Customer">
            <div>
                <h4>Aryan Kandam</h4>
                <span>Customer</span>
            </div>
        </div>
    </div>
</section>



<!-- ===== IMAGE CONTAINER (TARGET) ===== -->
<div id="gallery" class="image-section">
    <h2 class="gallery-title">Gallery</h2>
</div>


   <section class="gallary top" id="gallery">
  <!--<h2 class="gallery-title">Shop Gallery</h2>-->

  <div class="owl-carousel owl-theme">
      <div class="item">
   <img src="Assets/images/Gallery/1.jpg" alt="Logo">
  <div class="overlay">
    <i class="fab fa-instagram"></i>
  </div>
</div>
      <div class="item">
 <img src="Assets/images/Gallery/10.jpg" alt="Logo">
  <div class="overlay">
    <i class="fab fa-instagram"></i>
  </div>
</div>

<div class="item">
   <img src="Assets/images/Gallery/2.jpg" alt="Logo">
  <div class="overlay">
    <i class="fab fa-instagram"></i>
  </div>
</div>

<div class="item">
  <img src="Assets/images/Gallery/3" alt="Logo">
  <div class="overlay">
    <i class="fab fa-instagram"></i>
  </div>
</div>



    <div class="item">
      <img src="Assets/images/Gallery/4" alt="Logo">
      <div class="overlay">
        <i class="fab fa-instagram"></i>
      </div>
    </div>

    <div class="item">
      <img src="Assets/images/Gallery/5.jpg" alt="Logo">
      <div class="overlay">
        <i class="fab fa-instagram"></i>
      </div>
    </div>

    <div class="item">
  <img src="Assets/images/Gallery/6.jpg" alt="Logo">
      <div class="overlay">
        <i class="fab fa-instagram"></i>
      </div>
    </div>

    <div class="item">
      <img src="Assets/images/Gallery/7.jpg" alt="Logo">
      <div class="overlay">
        <i class="fab fa-instagram"></i>
      </div>
    </div>

    <div class="item">
       <img src="Assets/images/Gallery/8.jpg" alt="Logo">
      <div class="overlay">
        <i class="fab fa-instagram"></i>
      </div>
       
       
    </div>

  </div>
</section>

</div>

</body>
<script>
$(document).ready(function(){
  $(".owl-carousel").owlCarousel({
    loop: true,
    margin: 20,
    nav: false,
    dots: true,
    autoplay: true,

    autoplayTimeout: 1500,   // ⏱ time between slides (LOW = FAST)
    smartSpeed: 600,         // ⚡ animation speed
    autoplaySpeed: 600,      // ⚡ autoplay speed

    responsive:{
      0:{ items:1 },
      600:{ items:2 },
      1000:{ items:4 }
    }
  });
});
</script>


</html>
