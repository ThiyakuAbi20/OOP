<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Staff Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: #444;
            text-align: center;
        }

        nav li {
            display: inline;
            margin-right: 20px;
        }

        nav a {
            text-decoration: none;
            color: #fff;
        }

        section {
            background-color: #fff;
            padding: 20px;
            margin: 10px;
        }

        button {
            background-color: #444;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
 <header>
        <h1>Online Stock Management System</h1>
        <h3> Staff Dashboard</h3>
    </header>

    <nav>
        <ul>
            <li><a href="http://localhost:8081/WareHouseStaff_Dashboard/ViewPage.jsp">MyProfile</a></li>
            <li><a href="http://localhost:8081/WareHouseStaff_Dashboard/InsertMessage.jsp">Inform to Manager</a></li>
            <li><a href="http://localhost:8081/WareHouseStaff_Dashboard/DeleteMessage.jsp">Delete Message</a></li>
            <li><a href="http://localhost:8081/WareHouseStaff_Dashboard/UpdateMessage.jsp">Update Message</a></li>
        </ul>
    </nav>

    <section id="profile">
        <h2>My Profile</h2>
        <!-- Display staff member's profile information here -->
    </section>

    <section id="tasks">
        <h2>Inform To Manager</h2>
        <!-- Display a list of tasks or assignments for the staff here -->
    </section>

    <section id="calendar">
        <h2>Delete Message</h2>
        <!-- Display a calendar or schedule for the staff here -->
    </section>

    <section id="messages">
        <h2>Update Message</h2>
        <!-- Display staff messages or communication tools here -->
        
        <!-- Example: Inform Manager -->
        <button id="InsertMessage">Inform Manager</button>
        
        <!-- Example: Delete Message -->
        <button id="DeleteMessage">Delete Message</button>
        
        <!-- Example: Update Message -->
        <button id="UpdateMessage">Update Message</button>
        
        <!-- Example: View Messages -->
        <div id="messageList">
            <!-- Messages will be displayed here -->
        </div>
    </section>

    <footer>
        <p>&copy; 2023 Your Company</p>
    </footer>

    <script>
        // JavaScript code for handling interactions
        document.getElementById("InsertMessage").addEventListener("click", function() {
            // Implement code to inform the manager
        });

        document.getElementById("DeleteMessage").addEventListener("click", function() {
            // Implement code to delete a selected message
        });

        document.getElementById("UpdateMessage").addEventListener("click", function() {
            // Implement code to update a selected message
        });

        // Example: Display messages (you'll need to fetch messages from a server)
        const messageList = document.getElementById("messageList");
        messageList.innerHTML = "<p>Message 1: Low Stock Available</p><p>Message 2: Out of stock.</p>";
    </script>

</body>
</html>