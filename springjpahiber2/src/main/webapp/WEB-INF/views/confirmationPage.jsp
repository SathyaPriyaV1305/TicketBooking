<!-- bookingReview.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Review</title>
    <style>
        /* Reset and basic styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f39c12; /* Yellow background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #333; /* Dark container */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            text-align: center;
            color: #fff; /* White text inside the container */
        }

        h2 {
            color: #f1c40f; /* Yellow for headings */
            font-size: 28px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        td {
            padding: 10px;
            text-align: left;
            font-size: 16px;
            color: #ccc; /* Light gray text */
        }

        td strong {
            color: #f39c12; /* Yellow for strong labels */
        }

        .confirm-button {
            background-color: #f39c12; /* Yellow button */
            color: #333; /* Dark text on yellow button */
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            width: 100%;
            font-size: 18px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        .confirm-button:hover {
            background-color: #f1c40f; /* Darker yellow on hover */
        }

        .note {
            margin-top: 30px;
            font-size: 14px;
            color: #fff; /* White text */
        }

        .note a {
            color: #f39c12; /* Yellow link */
            text-decoration: none;
        }

        .note a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }

            h2 {
                font-size: 24px;
            }

            .confirm-button {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Booking Review</h2>

        <table>
            <tr>
                <td><strong>Movie Name:</strong></td>
                <td>${movie.movieName}</td>
            </tr>
            <tr>
                <td><strong>Show Time:</strong></td>
                <td>${movie.showTime}</td>
            </tr>
            <tr>
                <td><strong>Seats Booked:</strong></td>
                <td>${ticketCount}</td>
            </tr>
            <tr>
                <td><strong>Remaining Seats:</strong></td>
                <td>${remainingSeats}</td>
            </tr>
        </table>

        <!-- Form to Confirm Booking -->
        <form action="userMovieBooking" method="get">
            <input type="hidden" name="movieId" value="${movie.id}">
            <input type="hidden" name="ticketCount" value="${ticketCount}">
            <button type="submit" class="confirm-button">Confirm Booking</button>
        </form>

        <div class="note">
            <p>If you need to make any changes to your booking, please contact support.</p>
        </div>
    </div>
</body>
</html>
