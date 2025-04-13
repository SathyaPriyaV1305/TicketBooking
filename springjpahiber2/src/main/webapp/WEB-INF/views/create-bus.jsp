<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Movie Show</title>
    <style>
        /* Page styling */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background-image: url("https://cdn.pixabay.com/photo/2014/06/16/23/39/black-370118_1280.png");
            background-size: cover;
            background-position: center;
            color: #ffffff;
        }

        /* Form container styling */
        .container {
            width: 400px;
            padding: 30px;
            background: rgba(255, 255, 255, 0.2); /* Glass effect */
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px); /* Blur background behind container */
            text-align: center;
            color: #ffffff;
        }

        /* Title styling */
        h1 {
            font-size: 1.8em;
            color: #ffffff;
            margin-bottom: 20px;
            font-weight: 600;
        }

        /* Label styling */
        label {
            display: block;
            font-size: 0.9em;
            color: #e0e0e0;
            margin-top: 15px;
            text-align: left;
        }

        /* Input fields styling */
        input[type="text"],
        input[type="date"],
        input[type="time"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border-radius: 8px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            background: rgba(255, 255, 255, 0.1);
            color: #ffffff;
            font-size: 1em;
        }

        input[type="text"]::placeholder,
        input[type="date"]::placeholder,
        input[type="time"]::placeholder,
        input[type="number"]::placeholder {
            color: #e0e0e0;
        }

        /* Button styling */
        button {
            margin-top: 20px;
            padding: 12px 25px;
            border: none;
            border-radius: 25px;
            background: #ff5722;
            color: #ffffff;
            font-size: 1em;
            font-weight: 500;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        /* Button hover effect */
        button:hover {
            background: #e64a19;
        }

        /* Link to view show list */
        .view-link {
            display: block;
            margin-top: 15px;
            color: #00bcd4;
            text-decoration: none;
            font-size: 0.9em;
            transition: color 0.2s;
        }

        /* Link hover effect */
        .view-link:hover {
            color: #008c9e;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Add New Movie Show</h1>
        <form action="save" method="post">
            <label for="movieName">Movie Name:</label>
            <input type="text" name="movieName" id="movieName" placeholder="Enter movie name" required>

            <label for="showTime">Show Time:</label>
            <input type="time" name="showTime" id="showTime" required>

            <label for="screenNumber">Screen Number:</label>
            <input type="text" name="screenNumber" id="screenNumber" placeholder="Enter screen number" required>

            <label for="showDate">Show Date:</label>
            <input type="date" name="showDate" id="showDate" required>

            <label for="availableSeats">Available Seats:</label>
            <input type="number" name="availableSeats" id="availableSeats" placeholder="Enter seat count" required>

            <button type="submit">Add Show</button>
        </form>
        <a href="list" class="view-link">View Show List</a>
    </div>
</body>
</html>

