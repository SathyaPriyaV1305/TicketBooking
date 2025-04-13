<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Movie Show</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #333; /* Black background */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #444; /* Dark grey background for the container */
            border-radius: 12px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.15);
            padding: 30px;
            max-width: 500px;
            width: 100%;
        }

        h2 {
            color: #f7b731; /* Yellow color for the header */
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: 600;
            color: #fff; /* White color for labels */
            margin-bottom: 8px;
            font-size: 14px;
        }

        input[type="text"],
        input[type="date"],
        input[type="time"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            box-sizing: border-box;
            transition: border-color 0.3s;
            background-color: #555; /* Dark background for input fields */
            color: #fff; /* White text for inputs */
        }

        input[type="text"]:focus,
        input[type="date"]:focus,
        input[type="time"]:focus,
        input[type="number"]:focus {
            border-color: #f7b731; /* Yellow border on focus */
            outline: none;
        }

        button[type="submit"] {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            font-weight: 600;
            color: #fff;
            background-color: #f7b731; /* Yellow button */
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #e68926; /* Darker yellow on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Movie Show</h2>
        <form action="update" method="post">
            <input type="hidden" name="id" value="${movieShow.id}" />
            
            <label for="movieName">Movie Name:</label>
            <input type="text" id="movieName" name="movieName" value="${movieShow.movieName}" required />

            <label for="showDate">Date:</label>
            <input type="date" id="showDate" name="showDate" value="${movieShow.showDate}" required />

            <label for="showTime">Time:</label>
            <input type="time" id="showTime" name="showTime" value="${movieShow.showTime}" required />

            <label for="screenNumber">Screen Number:</label>
            <input type="number" id="screenNumber" name="screenNumber" value="${movieShow.screenNumber}" required />

            <label for="availableSeats">Available Seats:</label>
            <input type="number" id="availableSeats" name="availableSeats" value="${movieShow.availableSeats}" required />

            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
