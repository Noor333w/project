<%-- 
    Document   : comments
    Created on : Jan 7, 2025, 8:16:53 AM
    Author     : mahno
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.util.DatabaseUtill" %>
<%@ page import="com.example.model.Comment" %>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page import="com.example.model.Comment, com.example.util.DatabaseUtill" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.model.Comment, com.example.util.DatabaseUtill" %>
<%
    String pinID = request.getParameter("pinID");
    if (pinID == null || pinID.isEmpty()) {
        pinID = "0"; // Default value to avoid errors
    }

    List<Comment> comments = new ArrayList<>(); // Initialize to avoid null reference

    try {
        comments = DatabaseUtill.getCommentsByPinId(Integer.parseInt(pinID));
    } catch (Exception e) {
        e.printStackTrace(); // For debugging; replace with proper logging in production
    }
%>

<!-- Display Comments -->
<% for (Comment comment : comments) { %>
    <div class="comment">
        <p><strong><%= comment.getUsername() %></strong></p>
        <p><%= comment.getContent() %></p>
        <p><em><%= comment.getDate() %></em></p>
    </div>
<% } 

%>
