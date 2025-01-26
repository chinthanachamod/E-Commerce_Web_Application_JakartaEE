<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/26/2025
  Time: 6:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iOS Phones</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container">
    <h1 class="mt-4 mb-4 text-center">iOS Phones</h1>
    <div class="row">
        <!-- Product 1 -->
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/iphone%2015%20pro%20max.png" class="card-img-top" alt="iPhone 15 Pro Max">
                <div class="card-body">
                    <h6 class="card-title">iPhone 15 Pro Max</h6>
                    <p class="card-text">Price: $1,299</p>
                    <a href="add_to_cart.jsp?productId=1" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <!-- Product 2 -->
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/iPhone%2015.png" class="card-img-top" alt="iPhone 15">
                <div class="card-body">
                    <h6 class="card-title">iPhone 15</h6>
                    <p class="card-text">Price: $1,099</p>
                    <a href="add_to_cart.jsp?productId=2" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <!-- Product 3 -->
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/iPhone%20SE%20(3rd%20Gen).png" class="card-img-top" alt="iPhone SE">
                <div class="card-body">
                    <h6 class="card-title">iPhone SE (3rd Gen)</h6>
                    <p class="card-text">Price: $429</p>
                    <a href="add_to_cart.jsp?productId=4" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
