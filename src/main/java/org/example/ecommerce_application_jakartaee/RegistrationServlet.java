package org.example.ecommerce_application_jakartaee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "RegistrationServlet", value = "/register")
public class RegistrationServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/ecommerceweb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Ijse@123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Retrieve form inputs
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");

        // Validation: Check if passwords match
        if (!password.equals(confirmPassword)) {
            resp.sendRedirect("signUp.jsp?error=Passwords do not match");
            return;
        }

        // Database insert query
        String query = "INSERT INTO users (username, email, password, role) VALUES (?, ?, ?, ?)";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish database connection
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Prepare and execute the query
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, "CUSTOMER");
            ps.executeUpdate();

            // Redirect to the homepage after successful registration
            resp.sendRedirect("index.jsp");
        } catch (Exception e) {
            // Redirect back to sign-up page with an error message
            resp.sendRedirect("signUp.jsp?error=Failed to register user");
            e.printStackTrace();
        }
    }
}
