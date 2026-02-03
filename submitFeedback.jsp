<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Submitted | Grand Luxe Hotel</title>
    <style>
        body {
            font-family: 'Georgia', serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #222;
            color: gold;
            text-align: center;
            padding: 40px 20px;
            font-size: 2.5em;
            font-weight: bold;
        }

        .confirmation {
            width: 50%;
            margin: 50px auto;
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.2);
            text-align: center;
        }

        .confirmation h2 {
            color: #222;
            margin-bottom: 20px;
        }

        .confirmation p {
            font-size: 1.2em;
            margin-bottom: 20px;
        }

        .confirmation a {
            display: inline-block;
            padding: 10px 20px;
            background-color: gold;
            color: black;
            text-decoration: none;
            border-radius: 50px;
            transition: 0.3s;
        }

        .confirmation a:hover {
            background-color: #ffd700;
        }

        @media(max-width: 768px) {
            .confirmation {
                width: 90%;
            }
        }
    </style>
</head>
<body>

<div class="header">Grand Luxe Hotel Feedback</div>

<div class="confirmation">
<%
    // Read form parameters
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String comments = request.getParameter("comments");

    if(name != null && email != null && comments != null) {
%>
    <h2>Thank You, <%= name %>!</h2>
    <p>Your feedback has been submitted successfully.</p>
    <p>We really appreciate your comments and suggestions:</p>
    <blockquote><%= comments %></blockquote>
<%
    } else {
%>
    <h2>Oops!</h2>
    <p>It looks like your feedback could not be submitted. Please try again.</p>
<%
    }
%>
    <a href="feedback.jsp">Back to Feedback Page</a>
</div>

</body>
</html>
