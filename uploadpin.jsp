<%-- 
    Document   : uploadpin
    Created on : Jan 5, 2025, 9:01:51 AM
    Author     : mahno
--%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.example.model.Pin" %>
<%@ page import="com.example.util.DatabaseUtil" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Pin</title>
    <style>
        /* Your existing styles */
    </style>
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
            out.println("<div class='message error'>All fields are required.</div>");
            return;
        }

        if (!imageUrl.matches("^https?://.*$")) {
            out.println("<div class='message error'>Invalid image URL format. Please provide a valid URL.</div>");
            return;
        }

        if (title.length() > 255 || description.length() > 500) {
            out.println("<div class='message error'>Title or description is too long.</div>");
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
                out.println("<div class='message success'>Pin uploaded successfully!You can check on your dashboard Now</div>");
            }
        } catch (SQLException e) {
            out.println("<div class='message error'>Error: " + e.getMessage() + "</div>");
        }
    } else {
        out.println("<div class='message error'>Invalid action specified.</div>");
    }
%>
</body>
</html>