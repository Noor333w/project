<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
    </head>
    <body>
        <h1>Signup Page</h1>
        
        <%
            // Check if the database connection already exists in the session
            Connection conn = (Connection) session.getAttribute("dbConnection");

            // If not, establish the connection and store it in the session
            if (conn == null) {
                try {
                    // Database connection details (Update these with your actual database info)
                    String dbUrl = "jdbc:mysql://localhost:3306/pinaura"; // Change to your DB URL
                    String dbUsername = "root"; // Your database username
                    String dbPassword = ""; // Your database password

                    // Load the JDBC driver (for MySQL in this example)
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Establish the connection
                    conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

                    // Store the connection in the session
                    session.setAttribute("dbConnection", conn);

                } catch (Exception e) {
                    out.println("<p>Error: Unable to establish database connection.</p>");
                    out.println("<p>" + e.getMessage() + "</p>");
                    return;
                }
            }

            // Get the action parameter (signup or signin)
            String action = request.getParameter("action");

            if ("signup".equals(action)) {
                String username = request.getParameter("signup-username");
                String email = request.getParameter("signup-email");
                
                // Receive age as an integer directly
                int age = Integer.parseInt(request.getParameter("signup-age"));
                String password = request.getParameter("signup-password");

                // Validate inputs
                if (username == null || email == null || password == null || 
                    username.isEmpty() || email.isEmpty() || password.isEmpty()) {
                    out.println("All fields (username, email, age, password) are required.");
                    return;
                }

                try {
                    // Check if the email already exists
                    String checkEmailQuery = "SELECT email FROM users WHERE email = ?";
                    PreparedStatement checkStmt = conn.prepareStatement(checkEmailQuery);
                    checkStmt.setString(1, email);
                    ResultSet rs = checkStmt.executeQuery();

                    if (rs.next()) {
                        out.println("Email already exists.");
                    } else {
                        // Insert the new user into the database
                        String insertQuery = "INSERT INTO users (username, email, age, password) VALUES (?, ?, ?, ?)";
                        PreparedStatement insertStmt = conn.prepareStatement(insertQuery);
                        insertStmt.setString(1, username);
                        insertStmt.setString(2, email);
                        insertStmt.setInt(3, age);
                        insertStmt.setString(4, password);
                        insertStmt.executeUpdate();
                        out.println("Signup successful!");
                    }
                } catch (Exception e) {
                    out.println("<p>Error during signup process: " + e.getMessage() + "</p>");
                    e.printStackTrace();
                }
            }
        %>
    </body>
</html>