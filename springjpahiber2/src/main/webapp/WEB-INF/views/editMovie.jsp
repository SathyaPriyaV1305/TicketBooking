<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Movie Show</title>
</head>
<body>
    <h2>Edit Movie Show</h2>
    <form action="/edit" method="post">
        <input type="hidden" name="id" value="${movie.id}">
        <label for="movieName">Movie Name:</label>
        <input type="text" id="movieName" name="movieName" value="${movie.movieName}" required><br>

        <label for="showDate">Show Date:</label>
        <input type="text" id="showDate" name="showDate" value="${movie.showDate}" required><br>

        <label for="showTime">Show Time:</label>
        <input type="text" id="showTime" name="showTime" value="${movie.showTime}" required><br>

        <label for="screenNumber">Screen Number:</label>
        <input type="number" id="screenNumber" name="screenNumber" value="${movie.screenNumber}" required><br>

        <label for="availableSeats">Available Seats:</label>
        <input type="number" id="availableSeats" name="availableSeats" value="${movie.availableSeats}" required><br>

        <button type="submit">Update Movie</button>
    </form>
</body>
</html>
