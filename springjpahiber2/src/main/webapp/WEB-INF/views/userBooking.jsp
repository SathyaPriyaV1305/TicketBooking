<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User - Movie Booking</title>
    <style>
        /* Page and font styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #121212;
            color: #e0e0e0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #fdd835;
            font-size: 2.5em;
            font-weight: bold;
            margin-bottom: 40px;
        }

        /* Modal styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
        }

        .modal-content {
            background-color: #121212;
            margin: 10% auto;
            padding: 20px;
            width: 80%;
            max-width: 800px;
            position: relative;
        }

        .close {
            color: #fdd835;
            font-size: 2em;
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }

        /* Other styles remain unchanged */
        .filter-form {
            margin-bottom: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .filter-form input {
            padding: 8px;
            font-size: 1em;
            border: 1px solid #fdd835;
            border-radius: 5px;
            background-color: #333;
            color: white;
        }

        .filter-form button {
            padding: 8px 12px;
            font-size: 1em;
            color: white;
            background-color: #fdd835;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 10px;
        }

        .filter-form button:hover {
            background-color: #ffca28;
        }

        .card-container {
            display: flex;
            flex-direction: column;
            gap: 20px;
            width: 80%;
            max-width: 1000px;
            margin: 0 auto;
        }

        .movie-card {
            background-color: #1e1e1e;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: row;
            width: 100%;
            border-left: 5px solid #fdd835;
        }

        .movie-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.6);
        }

        .movie-content {
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 15px;
            flex-grow: 1;
            justify-content: space-between;
            width: 100%;
        }

        .movie-header {
            font-size: 1.8em;
            font-weight: bold;
            color: #fdd835;
            margin-bottom: 5px;
        }

        .description-heading {
            font-weight: bold;
            font-size: 1.1em;
            color: #e0e0e0;
            margin-top: 10px;
        }

        .comments-section {
            font-size: 0.9em;
            color: #bbbbbb;
            margin-top: 10px;
        }

        .comment {
            margin-top: 5px;
        }

        .user {
            font-weight: bold;
            color: #fdd835;
        }

        .button-container {
            display: flex;
            gap: 15px;
            margin-top: 10px;
        }

        .button {
            background-color: #fdd835;
            color: #121212;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
            text-align: center;
            flex: 1;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #ffc107;
        }

        .trailer-button {
            background-color: #fbc02d;
        }

        .trailer-button:hover {
            background-color: #ffa000;
        }
    </style>
</head>
<body>
    <h2>Available Movies</h2>

    <!-- Filter form -->
    <div class="filter-form">
        <input type="text" id="movieFilter" placeholder="Filter by movie name" onkeyup="filterMovies()">
    </div>

    <div class="card-container">
        <c:forEach var="movie" items="${movies}">
            <div class="movie-card movie-${movie.id}" data-title="${movie.movieName.toLowerCase()}">
                <div class="movie-content">
                    <div class="movie-header">${movie.movieName}</div>
                    <div class="movie-details">
                        <div class="detail">
                            <label>Show Date:</label>
                            <span>${movie.showDate}</span>
                        </div>
                        <div class="detail">
                            <label>Show Time:</label>
                            <span>${movie.showTime}</span>
                        </div>
                        <div class="detail">
                            <label>Available Seats:</label>
                            <span>${movie.availableSeats}</span>
                        </div>
                    </div>

                    <div class="description-heading">Description:</div>
                    <div class="movie-description">
                        <c:choose>
                            <c:when test="${movie.movieName == 'Leo (2023)'}">
                                The film follows Parthi, a café owner and animal rescuer in Theog, who is pursued by gangsters...
                            </c:when>
                            <c:when test="${movie.movieName == 'Vikram'}">
                                Vikram is a gripping action thriller that weaves together mystery and grit...
                            </c:when>
                            <c:when test="${movie.movieName == 'ps1'}">
                                PS1 explores the Chola dynasty's rise to power, set in the grandeur of ancient India...
                            </c:when>
                            <c:otherwise>No description available.</c:otherwise>
                        </c:choose>
                    </div>

                    <div class="description-heading">Review:</div>
                    <div class="comments-section">
                        <c:choose>
                            <c:when test="${movie.movieName == 'Leo (2023)'}">
                                <div class="comment">
                                    <div class="user">Anil Kumar:</div>
                                    <div class="text">"Nov enna na kathaya irukkudu thoki sorvu  and finally nanthanda leo"</div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="comment">
                                    <div class="user">Anonymous:</div>
                                    <div class="text">"This movie has no public comments yet."</div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <div class="button-container">
                        <form action="bookTicketForm" method="get" style="display: inline;">
                            <input type="hidden" name="movieId" value="${movie.id}" />
                            <button type="submit" class="button">Book Tickets</button>
                        </form>

                        <button class="button trailer-button" onclick="openTrailerModal('${movie.movieName}')">Trailer</button>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <!-- Modal -->
    <div id="trailerModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeTrailerModal()">&times;</span>
            <iframe id="trailerIframe" width="100%" height="400" frameborder="0" allowfullscreen></iframe>
        </div>
    </div>

    <script>
        function filterMovies() {
            var filter = document.getElementById("movieFilter").value.toLowerCase();
            var cards = document.querySelectorAll(".movie-card");
            cards.forEach(function(card) {
                var title = card.getAttribute("data-title");
                if (title.includes(filter)) {
                    card.style.display = "flex";
                } else {
                    card.style.display = "none";
                }
            });
        }

        function openTrailerModal(movieName) {
            var trailerUrl = "";

            if (movieName == "Leo (2023)") {
                trailerUrl = "https://www.youtube.com/watch?v=Po3jStA673E&t=82s";
            } else if (movieName == "Vikram") {
                trailerUrl = "https://www.youtube.com/watch?v=OKBMCL-frPU";
            } else if (movieName == "ps1") {
                trailerUrl = "https://www.youtube.com/watch?v=D4qAQYlgZQs&t=18s";
            } else if (movieName == "Lucky Baskar") {
            	trailerUrl ="https://www.youtube.com/watch?v=D4qAQYlgZQs&t=18s";
            }
            else if (movieName == "Vettayan"){
            	trailerUrl ="https://www.youtube.com/watch?v=D4qAQYlgZQs&t=18s";
            }
            else{
            	trailerUrl="#";
            }

            document.getElementById("trailerIframe").src = trailerUrl;
            document.getElementById("trailerModal").style.display = "block";
        }

        function closeTrailerModal() {
            document.getElementById("trailerModal").style.display = "none";
            document.getElementById("trailerIframe").src = "";
        }
    </script>
</body>
</html>
