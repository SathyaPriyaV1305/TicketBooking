<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <style>
        /* General styles */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #1e1e1e, #333333); /* Dark theme gradient */
            margin: 0;
            overflow: hidden;
        }

        /* Container for the login form */
        .container {
            width: 100%;
            max-width: 450px;
            padding: 40px;
            background-color: #1e1e1e; /* Dark container background */
            border: 1px solid #555; /* Subtle border */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
            border-radius: 12px;
            text-align: center;
            animation: fadeIn 1s ease-out;
        }

        /* Fade in animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            font-size: 32px;
            color: #fdd835; /* Bright yellow for title */
            margin-bottom: 25px;
            font-weight: 600;
        }

        /* Label styling */
        label {
            font-size: 14px;
            color: #bbbbbb; /* Light gray for labels */
            text-align: left;
            margin-bottom: 5px;
            display: block;
        }

        /* Input fields styling */
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 14px;
            margin: 10px 0 20px;
            border: 1px solid #555;
            border-radius: 8px;
            font-size: 16px;
            color: #e0e0e0;
            background-color: #333333; /* Dark input background */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        /* Input fields focus effect */
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #fdd835; /* Yellow border on focus */
            outline: none;
            box-shadow: 0 0 8px rgba(253, 216, 53, 0.5);
        }

        /* Button styles */
        button {
            width: 100%;
            padding: 14px;
            background-color: #fdd835; /* Bright yellow button */
            color: #1e1e1e; /* Dark text for button */
            border: none;
            border-radius: 8px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        /* Button hover effect */
        button:hover {
            background-color: #ffc107; /* Slightly lighter yellow */
            transform: scale(1.05);
        }

        /* Error message styling */
        .error-message {
            color: #ff5555; /* Red for error messages */
            font-size: 14px;
            margin-top: 10px;
            font-weight: 600;
        }

        /* Footer styling */
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #bbbbbb;
        }

        .footer a {
            color: #fdd835; /* Yellow for links */
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer a:hover {
            color: #ffc107; /* Lighter yellow on hover */
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Login</h2>

        <!-- Error message display -->
        <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>

        <!-- User Login Form -->
        <form action="userMovieBooking" method="get">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required />

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required />

            <button type="submit">Login</button>
        </form>

        <!-- Sign up and Forgot password links -->
        <div class="footer">
            <p>Don't have an account? <a href="signup">Sign Up</a></p>
            <p><a href="forgotPassword">Forgot Password?</a></p>
        </div>
    </div>
</body>
</html>
