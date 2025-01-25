package org.example.ecommerce_application_jakartaee;

import jakarta.annotation.Resource;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    @Resource(name= "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            Connection connection = dataSource.getConnection();
            ResultSet resultSet = connection.prepareStatement("select * from users").executeQuery();

            while (resultSet.next()) {
                String id = resultSet.getString(1);
                String name = resultSet.getString(2);
                String address = resultSet.getString(3);
                System.out.println(id + " " + name + " " + address);


            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


}