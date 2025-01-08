<%-- 
    Document   : pinDatabaseConnection
    Created on : Jan 5, 2025, 8:55:36 AM
    Author     : mahno
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.example.model.Pin" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.util.DatabaseUtil" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pin Database Connection</title>
</head>
<body>
<%
    String action = request.getParameter("action");

    if ("uploadPin".equals(action)) {
        String username = request.getParameter("username");
        String imageUrl = request.getParameter("imageUrl");
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        if (username == null || imageUrl == null || title == null || description == null ||
            username.isEmpty() || imageUrl.isEmpty() || title.isEmpty() || description.isEmpty()) {
            out.println("All fields are required.");
            return;
        }

        try (Connection conn = DatabaseUtil.getConnection()) {
            String insertQuery = "INSERT INTO pins (username, imageUrl, title, description) VALUES (?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertQuery)) {
                stmt.setString(1, username);
                stmt.setString(2, imageUrl);
                stmt.setString(3, title);
                stmt.setString(4, description);
                stmt.executeUpdate();
                out.println("Pin uploaded successfully!");
            }
        } catch (SQLException e) {
            out.println("Error: " + e.getMessage());
        }
    }
%>
</body>
</html>