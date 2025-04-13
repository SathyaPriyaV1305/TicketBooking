🎭 NewTBooking – Java Theater Ticket Booking Web Application
NewTBooking is a Java-based web application designed to simplify theater ticket booking. Users can browse upcoming shows, reserve seats, and view booking history, while administrators manage show schedules, seating layouts, and reports. The system follows the MVC architecture and is built using Java Servlets, JSP, and MySQL.
------------------------------------------------------------------------
✅ Project Features
👤 User Module
User Registration & Login

Browse Theater Shows (by date, genre, timing)

Book Tickets (select seats, view availability)

Payment Summary (on successful booking)

Booking History (view all past bookings)
------------------------------------------------------------------------
👨‍💼 Admin Module
Admin Login

Add/Remove Shows or Movies

Manage Seating & Timing

View All Bookings

Generate Reports on bookings, revenue, and user stats
----------------------------------------------------------------------
🛠 Tools & Technologies Used
Category	Tech Stack
Language	Java (JDK 8+)
Backend	Servlets, JSP
Frontend	HTML, CSS, JavaScript (optional)
ORM	JPA with persistence.xml
Build Tool	Maven
Database	MySQL
IDE	Eclipse (Maven support)
Server	Apache Tomcat
--------------------------------------------------------------------
🗂️ Project Structure
bash
Copy
Edit
src/
├── controller/       # Servlet controllers for user/admin actions
├── model/            # POJOs: Booking, Show, User, Seat, etc.
├── repository/       # JPA interfaces for DB interaction
├── service/          # Business logic and validations
└── webapp/
    ├── WEB-INF/
    │   └── views/    # JSP pages for user and admin interfaces
--------------------------------------------------------------------
🔄 How It Works
🌐 User Flow
Register/Login: Access the portal with secure credentials

Search Shows: View upcoming shows filtered by date, genre, or language

Book Tickets: Select a showtime and pick seats from the seating layout

View Summary: Confirm payment and booking status

Booking History: Access all previous bookings anytime
--------------------------------------------------------------------
🧑‍💼 Admin Flow
Admin Login: Secure login to backend dashboard

Manage Shows: Add, edit, or delete show listings and schedules

Seating Layout Management: Configure theater seat maps

Monitor Bookings: View all user reservations

Generate Reports: Daily or monthly reports on ticket sales and activity
-------------------------------------------------------------------
🧠 System Architecture (MVC)
Model: Java classes representing entities like User, Show, Seat, Booking

View: JSP pages rendered in the browser

Controller: Servlets handling HTTP requests and responses

Service Layer: Contains business rules and logic

Repository Layer: JPA interfaces for CRUD operations with MySQL
------------------------------------------------------------------
🚀 How to Run the Project
Clone the repository and open it in Eclipse

Set up MySQL database and update persistence.xml with your DB credentials

Build the project using Maven

Deploy the WAR to Apache Tomcat

