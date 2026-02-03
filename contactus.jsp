<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | Grand Luxe Hotel</title>
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

        /* Parallax Header */
        .contact-header {
            background-image: url('https://images.trvl-media.com/lodging/71000000/70580000/70572500/70572444/8e4e4037.jpg?impolicy=resizecrop&rw=575&rh=575&ra=fill');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
            font-size: 3em;
            font-weight: bold;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
        }

        /* Contact Form Section */
        .contact-section {
            padding: 80px 20px;
            text-align: center;
            background-color: white;
        }

        .contact-section h2 {
            font-size: 3em;
            color: #333;
            margin-bottom: 20px;
            position: relative;
        }

        .contact-section h2::after {
            content: "";
            display: block;
            width: 100px;
            height: 5px;
            background: gold;
            margin: 10px auto;
            border-radius: 5px;
        }

        .contact-form {
            max-width: 800px;
            margin: auto;
            background-color: #fafafa;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 12px;
            margin: 15px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 1.1em;
        }

        .contact-form textarea {
            height: 150px;
            resize: vertical;
        }

        .contact-form button {
            background-color: gold;
            color: black;
            padding: 12px 25px;
            font-size: 1.2em;
            border-radius: 50px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .contact-form button:hover {
            background-color: #ffd700;
        }

        /* Footer */
        .footer {
            background-color: #222;
            color: gold;
            padding: 20px;
            text-align: center;
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
            .contact-form {
                width: 90%;
            }

            .contact-section h2 {
                font-size: 2.5em;
            }
        }
    </style>
</head>
<body>

    <!-- Parallax Header -->
    <section class="contact-header">
        Contact Us at Grand Luxe Hotel
    </section>

    <!-- Contact Form Section -->
   <section class="contact-section">
        <h2>Get in Touch</h2>
        <div class="contact-form">
            <form method="POST">
                <!-- Name -->
                <input type="text" name="name" placeholder="Your Name" required>

                <!-- Email -->
                <input type="email" name="email" placeholder="Your Email" required>

                <!-- Subject -->
                <input type="text" name="subject" placeholder="Subject" required>

                <!-- Message -->
                <textarea name="message" placeholder="Your Message" required></textarea>

                <!-- Submit Button -->
                <button type="submit">Send Message</button>
            </form>
        </div>
    </section>

    <% 
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String dbURL = "jdbc:mysql://localhost:3306/hotel_management"; // Database URL
            String dbUser = "root"; // Database Username
            String dbPassword = "1234"; // Database Password

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String subject = request.getParameter("subject");
            String message = request.getParameter("message");

            Connection conn = null;
            PreparedStatement stmt = null;
            CallableStatement cs = null; // For calling the stored procedure

            try {
                // Load MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish connection to the database
                conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                // Call the stored procedure to process previous messages using cursor
                cs = conn.prepareCall("{CALL process_messages()}");
                cs.execute(); // This will call the procedure and process messages

                // SQL query to insert the data
                String sql = "INSERT INTO contact_messages (name, email, subject, message) VALUES (?, ?, ?, ?)";

                // Create a PreparedStatement for the INSERT operation
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, name);
                stmt.setString(2, email);
                stmt.setString(3, subject);
                stmt.setString(4, message);

                // Execute the insert query
                int rowsAffected = stmt.executeUpdate();

                if (rowsAffected > 0) {
                    out.println("<p>Thank you for your message. We will get back to you soon.</p>");
                } else {
                    out.println("<p>Sorry, there was an error submitting your message. Please try again.</p>");
                }

            } catch (SQLException e) {
                out.println("<p>Database error: " + e.getMessage() + "</p>");
            } catch (ClassNotFoundException e) {
                out.println("<p>JDBC Driver error: " + e.getMessage() + "</p>");
            } finally {
                try {
                    if (stmt != null) stmt.close();
                    if (cs != null) cs.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    out.println("<p>Error closing database resources: " + e.getMessage() + "</p>");
                }
            }
        }
    %>

   <footer class="footer">
    <p>© 2024 Grand Luxe Hotel | <a href="privacy_policy.jsp">Privacy Policy</a> | <a href="#">Contact Us</a></p>
</footer>

</body>
</html>
