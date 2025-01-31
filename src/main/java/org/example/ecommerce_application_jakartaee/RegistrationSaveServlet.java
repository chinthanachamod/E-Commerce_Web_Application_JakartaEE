package org.example.ecommerce_application_jakartaee;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(name = "RegistrationSaveServlet", value="/register")
public class RegistrationSaveServlet extends HttpServlet {
    @Resource(name= "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("dopost in regi");

        String userName = "admin"; /*req.getParameter("user_name");*/
        String email = "admin@gmail.com"; /*req.getParameter("email");*/
        String password = "admin"; /*req.getParameter("password");*/

        try( Connection connection = dataSource.getConnection()) {
            PreparedStatement pstm = connection.prepareStatement("INSERT INTO users(userName,email,password,role) VALUES (?,?,?,?) ");
            pstm.setString(1,userName);
            pstm.setString(2,email);
            pstm.setString(3,password);
            pstm.setString(4,"customer");
//            int i = pstm.executeUpdate();

            System.out.println("user");

//            if (i >0) {
////                resp.sendRedirect("index.jsp?message=customer save successfully");
//                resp.sendRedirect("index.jsp?message=customer save successfully");
//            }else {
//                resp.sendRedirect("registration-save.jsp?error=customer save failed");
//            }


        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect("registration-save.jsp?error=customer save failed");
        }


    }
}
