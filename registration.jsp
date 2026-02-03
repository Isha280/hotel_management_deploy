<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<style>
body {
    font-family: Arial, sans-serif;
    background-image: url('https://images.all-free-download.com/images/graphiclarge/abstract_light_pink_background_310518.jpg');
    background-size: cover;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.form-container {
    width: 320px;
    padding: 25px;
    background: white;
    border-radius: 8px;
    box-shadow: 0px 4px 10px rgba(0,0,0,0.15);
}

h2 {
    text-align: center;
    color: #ec407a;
}

input, button {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
}

button {
    background-color: #ec407a;
    color: white;
    border: none;
    cursor: pointer;
}

button:hover {
    background-color: #d81b60;
}

.message {
    text-align: center;
    margin-top: 10px;
    font-weight: bold;
}

.success { color: green; }
.error { color: red; }
</style>
</head>

<body>

<div class="form-container">
<h2>Register</h2>

<form method="post">
    <input type="text" name="name" placeholder="Username" required>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password" required>
    <button type="submit">Register</button>
</form>

<p>Already have an account? <a href="login.jsp">Login here</a></p>

<%
String message = "";
String cssClass = "";

if ("POST".equalsIgnoreCase(request.getMethod())) {

    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection con = null;
    PreparedStatement ps = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/hotel_management",
            "root",
            "1234"
        );

        // ✅ check duplicate email
        PreparedStatement check = con.prepareStatement(
            "SELECT id FROM users WHERE email=?"
        );
        check.setString(1, email);
        ResultSet rs = check.executeQuery();

        if (rs.next()) {
            message = "Email already registered!";
            cssClass = "error";
        } else {

            // ✅ use name column (NOT username)
            ps = con.prepareStatement(
                "INSERT INTO users(name,email,password) VALUES (?,?,?)"
            );

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                response.sendRedirect("login.jsp");
            }
        }

    } catch (Exception e) {
        message = "Error: " + e.getMessage();
        cssClass = "error";
    } finally {
        if (ps != null) ps.close();
        if (con != null) con.close();
    }
}
%>

<% if (!message.equals("")) { %>
    <div class="message <%=cssClass%>"><%=message%></div>
<% } %>

</div>
</body>
</html>
