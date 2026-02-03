<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table Reservation</title>
    <style>
        body { 
            font-family: Arial, sans-serif; 
            background-color: #f4f4f4; 
            text-align: center; 
            padding: 30px; 
        }
        
        form { 
            background: white; 
            padding: 20px; 
            border-radius: 10px; 
            display: inline-block; 
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); 
        }

        input { 
            width: 100%; 
            padding: 10px; 
            margin: 10px 0; 
            border: 1px solid #ccc; 
            border-radius: 5px; 
        }

        button { 
            padding: 10px 20px; 
            background: #28a745; 
            color: white; 
            border: none; 
            cursor: pointer; 
            border-radius: 5px; 
        }

        button:hover { 
            background: #218838; 
        }

        table { 
            width: 80%; 
            margin: 20px auto; 
            border-collapse: collapse; 
            background: white; 
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); 
        }

        th, td { 
            padding: 10px; 
            border: 1px solid #ccc; 
        }

        th { 
            background: #007bff; 
            color: white; 
        }
    </style>
</head>
<body>

    

    <% 
    if (request.getMethod().equals("POST")) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        int reservationId = -1;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_management", "root", "1234");

            // Call Stored Procedure
            CallableStatement stmt = conn.prepareCall("{CALL InsertReservation(?, ?)}");
            stmt.setString(1, name);
            stmt.setString(2, email);
            
            stmt.execute();
            out.println("<p style='color: green;'>Reservation Successful!</p>");

            stmt.close();
            conn.close();
        } catch (SQLException e) {
            out.println("<p style='color: red;'>Database Error: " + e.getMessage() + "</p>");
        } catch (Exception e) {
            out.println("<p style='color: red;'>Unexpected Error: " + e.getMessage() + "</p>");
        }
    }
    %>

    <h3>All Reservations</h3>
    
    <!-- Display Reservations -->
    <table>
        <tr>
            <th>Reservation ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Reservation Time</th>
        </tr>

        <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_management", "root", "1234");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM table_reservations");

            while (rs.next()) {
                int id = rs.getInt("reservation_id");
                String resName = rs.getString("name");
                String resEmail = rs.getString("email");
                Timestamp resTime = rs.getTimestamp("reservation_time");
        %>
                <tr>
                    <td><%= id %></td>
                    <td><%= resName %></td>
                    <td><%= resEmail %></td>
                    <td><%= resTime %></td>
                </tr>
        <%
            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            out.println("<p style='color: red;'>Database Error: " + e.getMessage() + "</p>");
        } catch (Exception e) {
            out.println("<p style='color: red;'>Unexpected Error: " + e.getMessage() + "</p>");
        }
        %>
    </table>

</body>
</html>
