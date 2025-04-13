<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking Review</title>
</head>
<body>
    <h1>Booking Review</h1>
    <div>
        <p><strong>Movie Name:</strong> ${movie.movieName}</p>
        <p><strong>Show Time:</strong> ${movie.showTime}</p>
        <p><strong>Seats Booked:</strong> ${ticketCount}</p>
        <p><strong>Remaining Seats:</strong> ${remainingSeats}</p>
    </div>
</body>
</html>
