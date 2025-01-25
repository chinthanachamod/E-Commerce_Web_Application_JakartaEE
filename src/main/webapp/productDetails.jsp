<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/21/2025
  Time: 6:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Product Image Styling */
        .product-image {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        /* Hero section styling */
        .hero-section {
            background: linear-gradient(to right, #007bff, #6610f2);
            color: white;
            padding: 20px 20px;
            text-align: center;
            margin-bottom: 30px;
        }

        .hero-section a {
            color: #ffffff;
            text-decoration: underline;
        }

        .hero-section a:hover {
            text-decoration: none;
        }

        /* Button Styling */
        .btn-buy-now, .btn-add-cart {
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            padding: 15px 30px;
            text-transform: uppercase;
            font-weight: bold;
            transition: all 0.3s ease-in-out; /* Add smooth transition */
        }

        .btn-buy-now:hover, .btn-add-cart:hover {
            background-color: #0056b3;
            color: white;
            transform: translateY(-5px); /* Lift effect on hover */
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.3); /* Shadow effect */
        }

        .btn-add-cart {
            background-color: #28a745;
        }

        .btn-add-cart:hover {
            background-color: #1e7e34;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="signIn.jsp">BrandName</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="product_list.jsp">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp">Cart</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="hero-section">
    <h1>Welcome to Product Details</h1>
    <p>See your product details with ease. Access the <a href="signIn.jsp">Home Page.</a></p>
</div>

<div class="container mt-5">
    <div class="row">
        <!-- Product Image -->
        <div class="col-md-6">
            <img src="https://via.placeholder.com/400" alt="Product Image" class="product-image img-fluid">
        </div>

        <!-- Product Details -->
        <div class="col-md-6">
            <h1 class="mb-3">Product Name</h1>
            <p class="text-muted">Category: Electronics</p>
            <h4 class="text-danger mb-4">$100</h4>

            <p>
                This is a detailed description of the product. It includes all the necessary features, specifications, and any other relevant details that would help the customer make an informed decision about purchasing this item.
            </p>

            <!-- Quantity Selector -->
            <div class="mb-4">
                <label for="quantity" class="form-label">Quantity:</label>
                <input type="number" id="quantity" name="quantity" class="form-control w-50" min="1" value="1">
            </div>

            <!-- Buttons -->
            <div class="d-flex gap-3">
                <a href="add_to_cart.jsp?productId=1" class="btn btn-add-cart btn-lg">Add to Cart</a>
                <a href="checkout.jsp?productId=1" class="btn btn-buy-now btn-lg">Buy Now</a>
            </div>
        </div>
    </div>

    <!-- Additional Information -->
    <div class="mt-5">
        <h3>Product Specifications</h3>
        <ul>
            <li>Feature 1: Description of feature 1</li>
            <li>Feature 2: Description of feature 2</li>
            <li>Feature 3: Description of feature 3</li>
        </ul>

        <h3>Customer Reviews</h3>
        <div class="border rounded p-3 mb-3">
            <strong>John Doe</strong>
            <p>★★★★★ - Excellent product! Highly recommended.</p>
        </div>
        <div class="border rounded p-3">
            <strong>Jane Smith</strong>
            <p>★★★★☆ - Great quality, but slightly overpriced.</p>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
