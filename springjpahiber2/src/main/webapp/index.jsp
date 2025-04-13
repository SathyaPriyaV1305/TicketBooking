<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login - Ticket Booking</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&display=swap');

body {
    height: 100vh;
    font-family: "Poppins", sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0;
    overflow: hidden;
}

video {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    z-index: -1; /* Ensures the video stays behind the content */
}

.container {
    width: 600px;
    background-color: rgba(31, 31, 31, 0.8); /* Slight transparency */
    border-radius: 15px;
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.5);
    padding: 40px;
    text-align: center;
    color: #f0f0f0;
    justify-content: center;

    display: flex;
    flex-direction: column;
    align-items: center;
    animation: fadeIn 0.5s ease;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

/* Logo styling */
.logo {
    font-size: 48px;
    color: #f7b731;
    font-weight: 700;
    margin-bottom: 15px;
}

h2 {
    font-size: 28px;
    color: #e0e0e0;
    margin-bottom: 30px;
    font-weight: 600;
}

button {
    text-decoration: none;
    color: #121212;
    background-color: #f7b731;
    margin-top: 15px;
    height: 50px;
    width: 250px;
    border-radius: 25px;
    border: none;
    cursor: pointer;
    font-size: 18px;
    font-weight: 600;
    transition: all 0.3s ease;
    box-shadow: 0 8px 16px rgba(247, 183, 49, 0.3);
}

button:hover {
    background-color: #ffdd59;
    box-shadow: 0 12px 24px rgba(247, 183, 49, 0.4);
    transform: translateY(-3px);
}

button:active {
    transform: translateY(0);
    box-shadow: 0 6px 12px rgba(247, 183, 49, 0.3);
}

button:focus {
    outline: none;
}

/* Divider line between buttons */
.divider {
    height: 1px;
    width: 80%;
    background-color: #444;
    margin: 30px 0;
}
</style>
</head>
<body>

<!-- Video Background -->
<video autoplay loop muted>
    <source src="lcu.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>

<div class="container">

    <div class="logo">🎫 Ticket Hub</div>
    <h2>Welcome to Ticket Booking</h2>
    <button onclick="location.href='student/authenticateAdmin'">Admin Login</button>
    <div class="divider"></div>
    <button onclick="location.href='student/login'">User Login</button>
</div>

</body>
</html>