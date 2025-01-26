package org.example.ecommerce_application_jakartaee;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "SignInServlet", value = "/signin")
public class SignInServlet extends HttpServlet {

    @Resource(name = "jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Basic input validation
        if (email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Email and Password are required!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        try (Connection connection = dataSource.getConnection()) {
            // Query to check if the user exists with the given credentials
            String sql = "SELECT id, name FROM users WHERE email = ? AND password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password); // Note: Use hashed passwords in production

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Successful login
                int userId = resultSet.getInt("id");
                String name = resultSet.getString("name");

                // Set session attributes
                HttpSession session = request.getSession();
                session.setAttribute("userId", userId);
                session.setAttribute("userName", name);

                // Redirect to the home page or dashboard
                response.sendRedirect("home.jsp");
            } else {
                // Invalid credentials
                request.setAttribute("errorMessage", "Invalid email or password.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing your request.");
        }
    }
}
