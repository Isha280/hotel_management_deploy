<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booked Rooms List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            padding: 30px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        th {
            background: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background: #f2f2f2;
        }
        .no-records {
            text-align: center;
            font-size: 1.2em;
            color: #555;
        }
    </style>
</head>
<body>

<h2>📋 Booked Rooms List</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Room Type</th>
        <th>Check-In</th>
        <th>Check-Out</th>
        <th>Quantity</th>
    </tr>

<%
Connection con = null;
Statement st = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/hotel_management",
        "root",
        "1234"
    );

    st = con.createStatement();
    rs = st.executeQuery("SELECT * FROM room_bookings ORDER BY check_in_date DESC");

    boolean hasRecords = false;

    while (rs.next()) {
        hasRecords = true;
%>
    <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getString("phone") %></td>
        <td><%= rs.getString("room_type") %></td>
        <td><%= rs.getDate("check_in_date") %></td>
        <td><%= rs.getDate("check_out_date") %></td>
        <td><%= rs.getInt("quantity") %></td>
    </tr>
<%
    }

    if (!hasRecords) {
%>
    <tr>
        <td colspan="8" class="no-records">No bookings found.</td>
    </tr>
<%
    }

} catch (Exception e) {
%>
    <tr>
        <td colspan="8" class="no-records">Error: <%= e.getMessage() %></td>
    </tr>
<%
} finally {
    if (rs != null) rs.close();
    if (st != null) st.close();
    if (con != null) con.close();
}
%>

</table>

</body>
</html>
