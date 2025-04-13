<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin - Manage Movie Schedule</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #333; /* Black background */
            color: #fff; /* White text */
            padding: 20px;
            margin: 0;
            display: flex;
            justify-content: center;
        }

        h2 {
            color: #f7b731; /* Yellow color for header */
            font-size: 28px;
            margin-bottom: 30px;
            text-align: center;
        }

        .container {
            max-width: 1200px;
            width: 100%;
            padding: 30px;
        }

        .top-buttons {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }

        .add-button {
            padding: 12px 25px;
            font-size: 16px;
            font-weight: 600;
            color: white;
            background-color: #f7b731; /* Yellow button */
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .add-button:hover {
            background-color: #e68926; /* Darker yellow on hover */
        }

        .card {
            background: #444; /* Dark grey background for cards */
            border-radius: 12px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.15);
            padding: 20px;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .card-content {
            flex: 1;
        }

        .movie-title {
            font-size: 20px;
            font-weight: 700;
            color: #f7b731; /* Yellow color for movie titles */
            margin: 0;
            text-align: left;
        }

        .show-info {
            font-size: 14px;
            color: #fff; /* White color for the show info */
            margin-top: 8px;
            text-align: left;
        }

        .action-buttons {
            display: flex;
            gap: 15px;
        }

        button {
            padding: 10px 20px;
            font-size: 14px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .update-button {
            background-color: #ffc107; /* Yellow-orange button for Update */
            color: #343a40; /* Dark text for readability */
        }

        .update-button:hover {
            background-color: #e0a800; /* Darker yellow-orange on hover */
        }

        .delete-button {
            background-color: #dc3545; /* Red button for Delete */
            color: white;
        }

        .delete-button:hover {
            background-color: #c82333; /* Darker red on hover */
        }

        .movie-link {
            color: #f7b731;
            text-decoration: none;
        }

        .movie-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
     <div class="container">
        <h2>Admin - Manage Movie Schedule</h2>
        <div class="top-buttons">
            <button class="add-button" onclick="window.location.href='new'">Add New Show</button>
        </div>

        <!-- Cards for each movie show -->
        <c:forEach var="bus" items="${buses}">
            <div class="card">
                <div class="card-content">
                    <h3 class="movie-title">${bus.movieName}</h3>

                    <p class="show-info">Date: ${bus.showDate} | Time: ${bus.showTime}</p>
                    <p class="show-info">Screen: ${bus.screenNumber} | Seats Available: ${bus.availableSeats}</p>
                </div>
                
                <!-- Action buttons -->
                <div class="action-buttons">
                    <!-- Update Button -->
                    <button class="update-button" onclick="window.location.href='edit?id=${bus.id}'">Update</button>

                    <!-- Delete Button (JavaScript to confirm deletion) -->
                    <button class="delete-button" onclick="confirmDelete(${bus.id})">Delete</button>
                </div>
            </div>
        </c:forEach>
    </div>

    <script>
        // JavaScript function to confirm and handle deletion of a movie show
        function confirmDelete(showId) {
            if (confirm("Are you sure you want to delete this show?")) {
                // Redirects to the delete URL with the show's ID as a parameter
                window.location.href = 'delete?id=' + showId;
            }
        }
    </script>
</body>
</html>
