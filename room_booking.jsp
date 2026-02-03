<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Room Booking</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>
body {
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
    margin: 0;
    padding: 40px 20px;
    text-align: center;
}

/* FACILITIES */
.facilities-section {
    width: 90%;
    margin: auto;
    margin-bottom: 50px;
}

.facilities-section h2 {
    font-family: 'Georgia', serif;
    font-size: 2.6em;
    color: #1a1a4f;
    margin-bottom: 35px;
}

.facilities-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 25px;
}

.facility-card {
    background: #fff;
    padding: 35px 20px;
    border-radius: 12px;
    box-shadow: 0 6px 18px rgba(0,0,0,0.12);
}

.facility-card i {
    font-size: 40px;
    color: #d19a22;
    margin-bottom: 15px;
}

.facility-card small {
    display: block;
    color: #777;
}

.facility-card h4 {
    color: #1a1a4f;
}

/* FORM */
form {
    background: #fff;
    padding: 35px;
    border-radius: 12px;
    display: inline-block;
    box-shadow: 0 5px 20px rgba(0,0,0,0.15);
    max-width: 500px;
    width: 100%;
}

input {
    width: 100%;
    padding: 14px;
    margin: 10px 0;
    border-radius: 8px;
    border: 2px solid #ddd;
}

button {
    padding: 14px 30px;
    background: #28a745;
    color: white;
    border: none;
    border-radius: 8px;
    cursor: pointer;
}

.payment-section {
    display: none;
    margin-top: 50px;
}

.payment-row {
    display: flex;
    gap: 10px;
}
</style>
</head>

<body>

<!-- ================= FACILITIES (AS-IS) ================= -->

<div class="facilities-section">
    <h2>Fascinating Rooms & Suites</h2>

    <div class="facilities-grid">
        <div class="facility-card">
            <i class="fas fa-laptop"></i>
            <small>Free Cost</small>
            <h4>No booking fee</h4>
        </div>
        <div class="facility-card">
            <i class="fas fa-dollar-sign"></i>
            <small>Free Cost</small>
            <h4>Best rate guarantee</h4>
        </div>
        <div class="facility-card">
            <i class="fas fa-headset"></i>
            <small>Free Cost</small>
            <h4>Reservations 24/7</h4>
        </div>
        <div class="facility-card">
            <i class="fas fa-wifi"></i>
            <small>Free Cost</small>
            <h4>High-speed Wi-Fi</h4>
        </div>
        <div class="facility-card">
            <i class="fas fa-mug-hot"></i>
            <small>Free Cost</small>
            <h4>Free breakfast</h4>
        </div>
        <div class="facility-card">
            <i class="fas fa-user"></i>
            <small>Free Cost</small>
            <h4>One person free</h4>
        </div>
    </div>
</div>

<!-- ================= BOOKING ================= -->
<h3>Room Booking</h3>

<!-- ================= BOOKING FORM (UI ONLY) ================= -->
<form id="bookingForm">
    <input type="text" id="name" placeholder="Full Name" required>
    <input type="email" id="email" placeholder="Email" required>
    <input type="text" id="phone" placeholder="Phone Number" required>
    <input type="date" id="checkin" required>
    <input type="date" id="checkout" required>
    <input type="number" id="rooms" placeholder="Number of Rooms" required>
    <button type="submit">Book Now</button>
</form>

<!-- ================= PAYMENT FORM (ACTUAL POST) ================= -->
<div class="payment-section" id="paymentSection">
    <h3>Payment Details</h3>

    <form method="post">

        <!-- 🔒 Hidden booking fields -->
        <input type="hidden" name="name" id="h_name">
        <input type="hidden" name="email" id="h_email">
        <input type="hidden" name="phone" id="h_phone">
        <input type="hidden" name="checkin" id="h_checkin">
        <input type="hidden" name="checkout" id="h_checkout">
        <input type="hidden" name="rooms" id="h_rooms">
        <input type="hidden" name="room_type" value="Deluxe Room">

        <input type="text" name="card_name" placeholder="Card Holder Name" required>
        <input type="text" name="card_number" placeholder="Card Number" maxlength="16" required>

        <div class="payment-row">
            <input type="month" name="expiry_date" required>
            <input type="password" name="cvv" placeholder="CVV" maxlength="3" required>
        </div>

        <input type="number" name="amount" placeholder="Total Amount" required>
        <button type="submit">Pay Now</button>
    </form>
</div>

<!-- ================= JS ================= -->
<script>
document.getElementById("bookingForm").addEventListener("submit", function(e) {
    e.preventDefault();

    document.getElementById("h_name").value = document.getElementById("name").value;
    document.getElementById("h_email").value = document.getElementById("email").value;
    document.getElementById("h_phone").value = document.getElementById("phone").value;
    document.getElementById("h_checkin").value = document.getElementById("checkin").value;
    document.getElementById("h_checkout").value = document.getElementById("checkout").value;
    document.getElementById("h_rooms").value = document.getElementById("rooms").value;

    document.getElementById("paymentSection").style.display = "block";
    document.getElementById("paymentSection").scrollIntoView({ behavior: "smooth" });
});
</script>

<!-- ================= DATABASE LOGIC ================= -->
<%
if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("card_name") != null) {

    Connection con = null;
    PreparedStatement psBooking = null;
    PreparedStatement psPayment = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/hotel_management",
            "root",
            "1234"
        );

        psBooking = con.prepareStatement(
            "INSERT INTO room_booking(name,email,phone,room_type,checkin,checkout,rooms) VALUES (?,?,?,?,?,?,?)"
        );

        psBooking.setString(1, request.getParameter("name"));
        psBooking.setString(2, request.getParameter("email"));
        psBooking.setString(3, request.getParameter("phone"));
        psBooking.setString(4, request.getParameter("room_type"));
        psBooking.setString(5, request.getParameter("checkin"));
        psBooking.setString(6, request.getParameter("checkout"));
        psBooking.setInt(7, Integer.parseInt(request.getParameter("rooms")));
        psBooking.executeUpdate();

        psPayment = con.prepareStatement(
            "INSERT INTO payment(card_name,card_number,expiry_date,cvv,amount) VALUES (?,?,?,?,?)"
        );

        psPayment.setString(1, request.getParameter("card_name"));
        psPayment.setString(2, request.getParameter("card_number"));
        psPayment.setString(3, request.getParameter("expiry_date"));
        psPayment.setString(4, request.getParameter("cvv"));
        psPayment.setDouble(5, Double.parseDouble(request.getParameter("amount")));
        psPayment.executeUpdate();
%>
<script>alert("✅ Room Booked & Payment Successful!");</script>
<%
    } catch(Exception e) {
        e.printStackTrace();
%>
<p style="color:red;">Error: <%= e %></p>
<%
    } finally {
        if(psBooking!=null) psBooking.close();
        if(psPayment!=null) psPayment.close();
        if(con!=null) con.close();
    }
}
%>

</body>
</html>