<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/26/2025
  Time: 6:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Android Phones</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container">
    <h1 class="mt-4 mb-4 text-center">Android Phones</h1>
    <div class="row">
        <!-- Product 1 -->
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/Samsung%20Galaxy%20S23%20Ultra.png" class="card-img-top" alt="Samsung Galaxy S23 Ultra">
                <div class="card-body">
                    <h6 class="card-title">Samsung Galaxy S23 Ultra</h6>
                    <p class="card-text">Price: $1,199</p>
                    <a href="add_to_cart.jsp?productId=6" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <!-- Product 2 -->
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/Google%20Pixel%208%20Pro.png" class="card-img-top" alt="Google Pixel 8 Pro">
                <div class="card-body">
                    <h6 class="card-title">Google Pixel 8 Pro</h6>
                    <p class="card-text">Price: $1,099</p>
                    <a href="add_to_cart.jsp?productId=7" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <!-- Product 3 -->
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/Huawei%20Y9%20Prime%202019.png" class="card-img-top" alt="Huawei Y9 Prime">
                <div class="card-body">
                    <h6 class="card-title">Huawei Y9 Prime 2019</h6>
                    <p class="card-text">Price: $299</p>
                    <a href="add_to_cart.jsp?productId=8" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
