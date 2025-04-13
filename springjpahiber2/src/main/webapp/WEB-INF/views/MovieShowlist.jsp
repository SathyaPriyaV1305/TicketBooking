<!DOCTYPE html>
<html>
<head>
    <title>Filtered Movie Shows</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        
        h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .movie-card {
            background-color: #ffffff;
            width: 280px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease;
            text-align: left;
        }

        .movie-card:hover {
            transform: translateY(-5px);
        }

        .movie-title {
            font-size: 20px;
            font-weight: 600;
            color: #007bff;
            margin: 0 0 10px;
        }

        .show-date {
            font-size: 16px;
            color: #555;
            margin-bottom: 15px;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #ffffff;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 500;
            transition: background-color 0.3s ease;
        }

        .back-link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Filtered Movie Shows</h2>
    
    <div class="card-container">
        <c:forEach var="bus" items="${buses}">
            <div class="movie-card">
                <div class="movie-title">${bus.name}</div>
                <div class="show-date">Show Date: ${bus.showDate}</div>
            </div>
        </c:forEach>
    </div>

    <a href="/student/admin" class="back-link">Back to Movie List</a>
</body>
</html>
