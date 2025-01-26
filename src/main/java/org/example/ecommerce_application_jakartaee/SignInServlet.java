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
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "SignInServlet", value = "/signin")
public class SignInServlet extends HttpServlet {

    @Resource(name = "jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try(PrintWriter printWriter = response.getWriter()){
            printWriter.println("Hello from SignInServlet");
        }catch (Exception e){
            e.printStackTrace();
        }

    }
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

            System.out.println(email);
            System.out.println(password);

        // Basic input validation
        if (email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            request.setAttribute("errorMessage", "Email and Password are required!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        try (Connection connection = dataSource.getConnection()) {

            PrintWriter printWriter = response.getWriter();

            // Query to check if the user exists with the given credentials
            String sql = "SELECT id, email FROM users WHERE email = ? AND password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password); // Note: Use hashed passwords in production

//            ResultSet resultSet = preparedStatement.executeQuery();

//            if (resultSet.next()) {
//                // Successful login
//
//                System.out.println(name);

//                 Set session attributes
//                HttpSession session = request.getSession();
//                session.setAttribute("userId", userId);
//                session.setAttribute("userName", name);

//                printWriter.write("adminDashboard.jsp");
//                printWriter.close();

                if (email.substring(4)=="admin") {
                    response.sendRedirect("adminDashboard.jsp?message=Customer saved successfully");
                }else{
                    response.sendRedirect("index.jsp?message=Customer saved successfully");
                }

                // Redirect to the home page or dashboard

//                response.sendRedirect("D:\\2nd Semester IJSE\\Advanced API Development (AAD)\\Assignment\\E-Commerce Application (JavaEE)\\E-Commerce_Application_JakartaEE\\src\\main\\webapp\\adminDashboard.jsp");
//            } else {
//                // Invalid credentials
//                request.setAttribute("errorMessage", "Invalid email or password.");
//                request.getRequestDispatcher("login.jsp").forward(request, response);
//            }

        } catch (Exception e) {
            e.printStackTrace();
//            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing your request.");
        }
    }
}
