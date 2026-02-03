<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Order</title>
    <style>
        /* Styling for the order form */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }

        form {
            background: white;
            padding: 20px;
            border-radius: 10px;
            display: inline-block;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 1em;
        }

        button {
            padding: 10px 20px;
            background: #28a745;
            color: white;
            font-size: 1.2em;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        button:hover {
            background: #218838;
        }

        .error-message, .success-message {
            font-size: 1.2em;
            font-weight: bold;
            margin-top: 20px;
        }

        .error-message {
            color: red;
        }

        .success-message {
            color: green;
        }
    </style>
</head>
<body>

    <h2>Place Your Menu Order</h2>

    <% 
        String menuName = request.getParameter("menu_name");
        String priceStr = request.getParameter("price");

        // Check if price is a valid number
        double price = 0.0;
        try {
            if (priceStr != null) {
                price = Double.parseDouble(priceStr);
            }
        } catch (NumberFormatException e) {
            price = 0.0;
        }

        // If the menu name or price is not set, show an error message
        if (menuName == null || menuName.isEmpty()) {
    %>
        <p class="error-message">No menu item selected.</p>
    <% 
        } else {
    %>
    <form method="post" action="menu_order.jsp">
        <input type="text" name="name" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="text" name="phone" placeholder="Phone Number" required>
        
        <!-- Menu Item Name and Price -->
        <input type="text" name="menu_name" value="<%= menuName %>" readonly>
        <input type="number" name="price" value="<%= price %>" readonly>
        
        <button type="submit">Place Order</button>
    </form>

    <% 
        }
    %>

    <% 
        if (request.getMethod().equals("POST")) {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            menuName = request.getParameter("menu_name");
            price = Double.parseDouble(request.getParameter("price"));

            Connection conn = null;
            PreparedStatement stmt = null;

            try {
                // Database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_management", "root", "1234");

                // Insert data into menu_orders table
                String sql = "INSERT INTO menu_orders (name, email, phone, menu_name, price) VALUES (?, ?, ?, ?, ?)";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, name);
                stmt.setString(2, email);
                stmt.setString(3, phone);
                stmt.setString(4, menuName);
                stmt.setDouble(5, price);

                int rowsInserted = stmt.executeUpdate();
                if (rowsInserted > 0) {
                    out.println("<p class='success-message'>Order placed successfully!</p>");
                }
            } catch (Exception e) {
                out.println("<p class='error-message'>Error: " + e.getMessage() + "</p>");
            } finally {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            }
        }
    %>

</body>
</html>
