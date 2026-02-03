<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body { font-family: Arial; background: #f4f4f9; display: flex; justify-content: center; align-items: center; height: 100vh; }
        .form-container { width: 300px; padding: 20px; background: white; border-radius: 5px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        h2 { text-align: center; color: #ec407a; }
        input, button { width: 100%; padding: 10px; margin-top: 10px; }
        button { background: #ec407a; color: white; border: none; border-radius: 5px; cursor: pointer; }
        .error { color: red; text-align: center; margin-top: 10px; }
    </style>
</head>
<body>

<div class="form-container">
   <h2>Login</h2>

   <form method="post">
       <input type="email" name="username" placeholder="Enter Email" required><br><br>
       <input type="password" name="password" placeholder="Enter Password" required><br><br>
       <button type="submit">Login</button>
   </form>

<%
if ("POST".equalsIgnoreCase(request.getMethod())) {

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/hotel_management",
            "root",
            "1234"
        );

        // Use the login function
        String sql = "SELECT login_user(?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            int result = rs.getInt(1); // INT returned by MySQL function

            if (result == 1) {
                // ✅ Successful login → store username in session and redirect
                session.setAttribute("username", username);
                response.sendRedirect("Home.jsp");
            } else {
                out.println("<p class='error'>Invalid email or password!</p>");
            }
        }

        rs.close();
        ps.close();
        con.close();

    } catch (Exception e) {
        out.println("<p class='error'>Error: " + e.getMessage() + "</p>");
    }
}
%>
</div>
</body>
</html>
