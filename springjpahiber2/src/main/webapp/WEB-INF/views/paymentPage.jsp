<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <style>
        /* Reset and basic styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to top right, #f39c12, #f1c40f); /* Yellow gradient background */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff; /* White text for better contrast on dark background */
        }

        .container {
            background-color: #333; /* Dark background for container */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 600px;
            text-align: center;
        }

        h2 {
            color: #f1c40f; /* Yellow color for headings */
            font-size: 32px;
            margin-bottom: 25px;
            font-weight: bold;
        }

        label {
            font-size: 18px;
            font-weight: 600;
            color: #fff; /* White text color for labels */
            margin-top: 20px;
            display: block;
            text-align: left;
        }

        input[type="text"], input[type="hidden"] {
            width: 100%;
            padding: 16px;
            margin-top: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
            box-sizing: border-box;
            background-color: #444; /* Dark background for input fields */
            color: #fff; /* White text in input fields */
        }

        input[type="text"]:focus {
            border-color: #f39c12; /* Yellow focus border */
            outline: none;
            box-shadow: 0 0 8px rgba(243, 156, 18, 0.3);
        }

        button {
            background-color: #f39c12; /* Yellow button */
            color: #333; /* Black text on the button */
            padding: 16px;
            border: none;
            border-radius: 8px;
            width: 100%;
            font-size: 18px;
            cursor: pointer;
            margin-top: 25px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #f1c40f; /* Darker yellow on hover */
        }

        .payment-options {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
            text-align: center;
        }

        .payment-option {
            display: flex;
            flex-direction: column;
            align-items: center;
            cursor: pointer;
        }

        .payment-option img {
            width: 60px;
            height: 60px;
            margin-bottom: 10px;
        }

        .note {
            margin-top: 20px;
            font-size: 14px;
            color: #fff;
            text-align: center;
        }

        .note a {
            color: #f39c12; /* Yellow color for links */
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
                font-size: 26px;
            }

            button {
                font-size: 16px;
            }

            .payment-option img {
                width: 50px;
                height: 50px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Complete Your Payment</h2>
        <form action="confirmBooking" method="get">
            <!-- Hidden inputs for booking details -->
            <input type="hidden" name="movieId" value="${movie.id}" />
            <input type="hidden" name="ticketCount" value="${ticketCount}" />

            <label for="cardNumber">Card Number:</label>
            <input type="text" id="cardNumber" name="cardNumber" placeholder="Enter your card number" required />

            <label for="expirationDate">Expiration Date:</label>
            <input type="text" id="expirationDate" name="expirationDate" placeholder="MM/YY" required />

            <label for="cvv">CVV:</label>
            <input type="text" id="cvv" name="cvv" placeholder="CVV" required />

            <button type="submit">Pay Now</button>
        </form>

        <div class="payment-options">
            <div class="payment-option">
                <img src="https://www.svgrepo.com/download/306142/googlepay.svg" alt="Google Pay">
               <button type="submit">Pay Now</button>
            </div>
            <div class="payment-option">
                <img src="https://www.svgrepo.com/download/518551/phonepe.svg" alt="PhonePe">
              <button type="submit">Pay Now</button>
            </div>
            <div class="payment-option">
                <img src="https://www.svgrepo.com/download/504728/paytm.svg" alt="Paytm">
             <button type="submit">Pay Now</button>
            </div>
        </div>

        <div class="note">
            <p>If you have any questions, please contact us <a href="#">here</a>.</p>
        </div>
    </div>
</body>
</html>
