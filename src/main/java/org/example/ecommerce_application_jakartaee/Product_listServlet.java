package org.example.ecommerce_application_jakartaee;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Product_listServlet", value = "/product-List")
public class Product_listServlet extends HttpServlet {
    @Resource(name= "java:comp/env/jdbc/pool")
    private DataSource dataSource;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doget in product_list");

        List<Product> products = new ArrayList<>();

        try(Connection connection = dataSource.getConnection();) {

            PreparedStatement pstm = connection.prepareStatement("Select * from products");
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                double price = rs.getDouble(3);
                int quantity = rs.getInt(4);
                int categoryId = rs.getInt(5);
                String description = rs.getString(6);
                String image_path = rs.getString(7);

                Product product = new Product(id, name, price, quantity, categoryId, description, image_path);

                products.add(product);

            }


            System.out.println(products.toString());

            req.setAttribute("products", products);
            RequestDispatcher rd = req.getRequestDispatcher("productList.jsp");
            rd.forward(req,resp);


        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect(
                    "product.jsp?error= products not load"
            );

        }

    }
}






