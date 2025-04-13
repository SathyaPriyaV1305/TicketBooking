<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Movie Show List</title>
    <style>
        /* General body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #333; /* Black background */
            padding: 20px;
            color: #fff; /* White text */
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            color: #f7b731; /* Yellow header */
            font-size: 1.8em;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Filter form styling */
        .filter-form {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .filter-form label {
            font-size: 0.9em;
            color: #f7b731; /* Yellow label */
            margin-right: 10px;
        }

        .filter-form input {
            padding: 8px;
            font-size: 1em;
            border: 1px solid #f7b731; /* Yellow border */
            border-radius: 5px;
            margin-right: 10px;
            background-color: #444; /* Dark background */
            color: #fff; /* White text */
        }

        .filter-form button {
            padding: 8px 12px;
            font-size: 1em;
            color: white;
            background-color: #f7b731; /* Yellow button */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* Button hover effect */
        .filter-form button:hover {
            background-color: #e68926; /* Darker yellow */
        }

        /* Card container styling */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            width: 90%;
        }

        /* Card styling */
        .movie-card {
            background-color: #444; /* Dark grey card */
            width: 280px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .movie-card:hover {
            transform: translateY(-5px);
        }

        .movie-title {
            font-size: 1.2em;
            font-weight: bold;
            color: #f7b731; /* Yellow title */
            margin-bottom: 10px;
        }

        .movie-details {
            font-size: 0.9em;
            color: #ccc; /* Light grey for details */
            margin: 5px 0;
        }

        .availability {
            font-size: 0.9em;
            color: #4CAF50; /* Green for availability */
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h2>Movie Show List</h2>

    <!-- Search Bar for Filtering Movies -->
    <div class="filter-form">
        <label for="movieFilter">Filter by Movie Name:</label>
        <input type="text" id="movieFilter" placeholder="Enter movie name" onkeyup="filterMovies()">
    </div>

    <div class="card-container" id="movieList">
        <c:forEach var="bus" items="${buses}">
            <div class="movie-card" data-title="${bus.movieName.toLowerCase()}">
                <div class="movie-title">${bus.movieName}</div>
                <div class="movie-details">Show Date: ${bus.showDate}</div>
                <div class="movie-details">Show Time: ${bus.showTime}</div>
                <div class="movie-details">Screen Number: ${bus.screenNumber}</div>
                <div class="availability">Available Seats: ${bus.availableSeats}</div>
            </div>
        </c:forEach>
    </div>

    <script>
        // Function to filter movies based on the input
        function filterMovies() {
            const filterValue = document.getElementById('movieFilter').value.toLowerCase();
            const movieCards = document.querySelectorAll('.movie-card');

            movieCards.forEach(function(card) {
                const movieTitle = card.getAttribute('data-title');
                if (movieTitle.includes(filterValue)) {
                    card.style.display = 'block'; // Show the movie card
                } else {
                    card.style.display = 'none'; // Hide the movie card
                }
            });
        }
    </script>
</body>
</html>
