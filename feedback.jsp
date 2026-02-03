<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback | Grand Luxe Hotel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Georgia', serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .header {
            background-color: #222;
            color: gold;
            text-align: center;
            padding: 40px 20px;
            font-size: 2.5em;
            font-weight: bold;
        }

        .feedback-section {
            width: 50%;
            margin: 40px auto;
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.2);
        }

        .feedback-section h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #222;
        }

        .feedback-section label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .feedback-section input,
        .feedback-section textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 1em;
        }

        .feedback-section button {
            background-color: gold;
            color: black;
            padding: 15px 30px;
            font-size: 1.2em;
            border-radius: 50px;
            border: none;
            cursor: pointer;
            width: 100%;
            transition: 0.3s;
        }

        .feedback-section button:hover {
            background-color: #ffd700;
        }

        .footer {
            background-color: rgba(0,0,51,0.9);
            color: gold;
            text-align: center;
            padding: 15px;
        }

        @media(max-width: 768px) {
            .feedback-section {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        Grand Luxe Hotel Feedback
    </div>

    <div class="feedback-section">
        <h2>We Value Your Feedback</h2>
        <form action="submitFeedback.jsp" method="post">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>

            <label for="comments">Comments / Suggestions</label>
            <textarea id="comments" name="comments" rows="5" placeholder="Write your feedback here..." required></textarea>

            <button type="submit">Submit Feedback</button>
        </form>
    </div>

    <div class="footer">
        © 2024 Grand Luxe Hotel | <a href="privacy_policy.jsp">Privacy Policy</a> | <a href="contactus.jsp">Contact Us</a>
    </div>

</body>
</html>
