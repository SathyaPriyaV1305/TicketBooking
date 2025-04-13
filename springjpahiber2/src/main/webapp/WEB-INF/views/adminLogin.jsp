<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #333, #f7b731); /* Black and yellow gradient */
            background-size: cover;
        }

        .container {
            width: 100%;
            max-width: 400px;
            padding: 30px;
            background-color: #000; /* Black background for the form */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            text-align: center;
            color: #fff; /* White text color */
        }

        h2 {
            font-size: 32px;
            color: #f7b731; /* Yellow text for header */
            margin-bottom: 20px;
            font-weight: 600;
        }

        label {
            font-size: 14px;
            color: #f7b731; /* Yellow labels */
            text-align: left;
            margin-bottom: 5px;
            display: block;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            background-color: #333; /* Dark input background */
            color: #fff; /* White text inside the input fields */
        }

        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #f7b731; /* Yellow focus border */
            outline: none;
            box-shadow: 0 0 8px rgba(247, 183, 49, 0.5); /* Yellow glow effect */
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #f7b731; /* Yellow button */
            color: #000; /* Black text on the button */
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        button:hover {
            background-color: #f39c12; /* Darker yellow on hover */
            transform: scale(1.05);
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }

        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #f7b731; /* Yellow footer text */
        }

        .footer a {
            color: #f7b731;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        /* Responsive Styles */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }

            h2 {
                font-size: 28px;
            }

            button {
                font-size: 14px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Login</h2>

        <!-- Error message display -->
        <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>

        <!-- Login Form -->
        <form action="authenticateAdmin" method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required />

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required />

            <button type="submit">Login</button>
        </form>

        <!-- Optional Footer -->
        <div class="footer">
            <p>Forgot your password? <a href="#">Reset here</a></p>
        </div>
    </div>
</body>
</html>
