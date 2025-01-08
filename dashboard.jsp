<%-- 
    Document   : dashboard
    Created on : Jan 5, 2025, 7:10:04 AM
    Author     : mahno
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="com.example.model.Pin" %>
<%@ page import="com.example.util.DatabaseUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>

<%
    String search = request.getParameter("search");
    String sort = request.getParameter("sort");
    List<Pin> pins = null;

    try {
        // Call the DatabaseUtil.getPins method and pass search and sort parameters
        pins = DatabaseUtil.getPins(search, sort);
    } catch (SQLException e) {
        out.println("<h3>Error fetching pins: " + e.getMessage() + "</h3>");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <style>
        /* Styles for the page */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
        }
        .pin {
            border: 1px solid #ddd;
            margin: 10px 0;
            padding: 10px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
        }
        .pin img {
            max-width: 150px;
            max-height: 150px;
            border-radius: 5px;
            margin-right: 15px;
        }
        .pin-content {
            flex: 1;
        }
        .pin-content h3 {
            margin: 5px 0;
        }
        .pin-content p {
            margin: 5px 0;
            color: #555;
        }
        .actions {
            margin-top: 10px;
        }
        .actions button, .actions a {
            padding: 8px 12px;
            margin-right: 5px;
            border: none;
            border-radius: 3px;
            background-color: #5e3a73; /* A nice purple color */
            color: white;
            text-decoration: none;
            font-size: 14px;
            cursor: pointer;
        }
        .actions button:hover, .actions a:hover {
            background-color: #4a2a58; /* A darker shade of purple }
        .search-container {
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .search-container input, .search-container select {
            padding: 10px;
            margin-right: 5px;
            border: 1px solid #ddd;
            border-radius: 3px;
            width: 70%; /* Adjust width for better layout */
        }
        .search-container button {
            background-color: #5e3a73;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 3px;
            cursor: pointer;
        }
        .search-container button:hover {
            background-color: #4a2a58;
        }
        h2 {
            text-align: center;
            color: #333; /* Darker color for better readability */
        }
        p {
            font-size: 14px; /* Slightly larger font for better readability */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Dashboard</h2>
        
        <form method="get" class="search-container">
            <input type="text" name="search" placeholder="Search by title or username" required>
            <select name="sort">
                <option value="">Sort By</option>
                <option value="recent">Most Recent</option>
                <option value="title">Title</option>
            </select>
            <button type="submit">Search</button>
        </form>

        <div>
            <%
                if (pins != null && !pins.isEmpty()) {
                    for (Pin pin : pins) {
            %>
            <div class="pin">
                <img src="<%= pin.getImageUrl() %>" alt="<%= pin.getTitle() %>">
                <div class="pin-content">
                    <h3><%= pin.getTitle() %></h3>
                    <p>Uploaded by: <%= pin.getUsername() %></p>
                    <p><%= pin.getDescription() %></p>
                    <div class="actions">
                        <a href="<%= pin.getImageUrl() %>" target="_blank">View Full Image</a>
                        <button>Like</button>
                        <button>Comment</button>
                    </div>
                </div>
            </div>
            <%
                    }
                } else {
            %>
            <p>No pins found.</p>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>