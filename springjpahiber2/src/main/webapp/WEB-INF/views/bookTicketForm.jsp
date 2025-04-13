<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Tickets</title>
    <style>
        /* Reset and basic styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #333; /* Black background */
            color: #fff; /* White text */
            line-height: 1.6;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #444; /* Dark grey background */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #f7b731; /* Yellow header */
            margin-bottom: 20px;
        }

        label {
            font-size: 16px;
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
            color: #f7b731; /* Yellow text */
        }

        .screen {
            width: 100%;
            height: 40px;
            background-color: #fff;
            margin-bottom: 20px;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            color: #333;
            padding-top: 10px;
        }

        .seating-chart {
            display: grid;
            grid-template-columns: repeat(10, 1fr);
            grid-gap: 10px;
            margin-bottom: 20px;
            text-align: center;
        }

        .seat {
            width: 40px;
            height: 40px;
            background-color: #666; /* Default seat color */
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .seat.selected {
            background-color: #f7b731; /* Yellow selected seats */
        }

        .seat.booked {
            background-color: #888; /* Grey booked seats */
            cursor: not-allowed;
        }

        .total-amount {
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
            text-align: center;
            color: #f7b731; /* Yellow total amount text */
        }

        button {
            width: 100%;
            padding: 14px;
            background-color: #f7b731; /* Yellow button */
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #e68926; /* Darker yellow */
        }

        .note {
            font-size: 14px;
            text-align: center;
            color: #888; /* Light grey note text */
            margin-top: 20px;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                padding: 15px;
            }

            h2 {
                font-size: 24px;
            }

            button {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Book Tickets for Movie</h2>
        <form id="bookingForm" action="processPayment" method="post">
            <!-- Hidden input to pass the movie ID -->
            <input type="hidden" name="movieId" value="${param.movieId}" />
            
            <!-- Screen Display -->
            <div class="screen">Screen</div>

            <!-- Seat Selection -->
            <label for="seatNumbers">Select Seat(s):</label>
            <div class="seating-chart" id="seatingChart"></div>

            <!-- Total Amount -->
            <div class="total-amount">
                Total Amount: $<span id="totalAmount">0</span>
            </div>

            <button type="submit">Confirm Booking</button>
        </form>
        <div class="note">
            <p>Note: After confirming, you'll be asked to proceed with payment.</p>
        </div>
    </div>

    <script>
        const ticketPrice = 10; // Example: $10 per ticket
        const bookedSeats = ["5-3", "3-7", "8-2", "10-5", "2-9"]; // Predefined booked seats

        // Function to generate the seating chart
        function generateSeatingChart() {
            const seatingChart = document.getElementById('seatingChart');
            const rows = 10; // Number of rows
            const seatsPerRow = 10; // Number of seats per row

            for (let i = 0; i < rows; i++) {
                for (let j = 0; j < seatsPerRow; j++) {
                    const seat = document.createElement('div');
                    seat.classList.add('seat');
                    seat.dataset.seat = `Row ${i + 1}, Seat ${j + 1}`;
                    seat.dataset.row = i + 1;
                    seat.dataset.col = j + 1;

                    // Mark seat as booked if it's in the bookedSeats array
                    const seatPosition = `${i + 1}-${j + 1}`;
                    if (bookedSeats.includes(seatPosition)) {
                        seat.style.backgroundColor = "#ff0000"; // Grey for booked
                        seat.classList.add('booked');
                    } else {
                        seat.addEventListener('click', toggleSeatSelection);
                    }

                    seatingChart.appendChild(seat);
                }
            }
        }

        // Function to handle seat selection
        function toggleSeatSelection(event) {
            const seat = event.target;
            if (!seat.classList.contains('booked')) {
                seat.classList.toggle('selected');
                calculateAmount();
            }
        }

        // Function to calculate the total amount
        function calculateAmount() {
            const selectedSeats = document.querySelectorAll('.seat.selected');
            const ticketCount = selectedSeats.length;

            // Calculate ticket cost
            let totalAmount = ticketCount * ticketPrice;

            // Update the total amount on the page
            document.getElementById('totalAmount').textContent = totalAmount;
        }

        // Initialize the seating chart on page load
        generateSeatingChart();
    </script>
</body>
</html>
