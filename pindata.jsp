<%-- 
    Document   : pindata
    Created on : Jan 5, 2025, 8:54:42 AM
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
    < title>Pindata.jsp</title>
</head>
<body>
<%
    List<Pin> pins = new ArrayList<>();
    try (Connection conn = DatabaseUtil.getConnection()) {
        String query = "SELECT * FROM pins";
        try (PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                pins.add(new Pin(
                    rs.getString("username"),
                    rs.getString("imageUrl"),
                    rs.getString("title"),
                    rs.getString("description")
                ));
            }
        }
    } catch (SQLException e) {
        out.println("<h3>Error: " + e.getMessage() + "</h3>");
    }

    if (pins.isEmpty()) {
        out.println("<h3>No pins found.</h3>");
    } else {
        out.println("<h2>Uploaded Pins</h2>");
        for (Pin pin : pins) {
            out.println("<div>");
            out.println("<h3>" + pin.getTitle() + "</h3>");
            out.println("<p><strong>Username:</strong> " + pin.getUsername() + "</p>");
            out.println("<p><strong>Description:</strong> " + pin.getDescription() + "</p>");
            out.println("<img src='" + pin.getImageUrl() + "' alt='" + pin.getTitle() + "' style='max-width: 100%; height: auto;'/>");
            out.println("</div><hr/>");
        }
    }
%>
</body>
</html>