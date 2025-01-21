<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/20/2025
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-commerce Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .hero {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: white;
            padding: 50px;
            border-radius: 10px;
            margin-bottom: 20px;
            position: relative;
        }

        .user-profile {
            display: flex;
            align-items: center;
            gap: 10px;
            position: absolute;
            top: 20px;
            right: 20px;
        }

        .user-profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }

        .card {
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .section-title {
            font-size: 1.8rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #333;
        }

        .filters-row {
            margin-bottom: 20px;
        }

        .footer {
            background: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        .footer a {
            color: #6a11cb;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        .brand-name {
            font-size: 2rem;
            font-weight: bold;
            color: white;
            position: absolute;
            top: 20px;
            left: 20px;
        }

        .search-bar {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 60%;
        }
    </style>
</head>
<body>
<!-- Hero Section -->
<div class="hero">
    <div class="brand-name">C-Mart</div> <!-- Brand name in the top left corner -->

    <div class="search-bar"> <!-- Search Bar in the middle -->
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search products...">
            <button class="btn btn-primary">Search</button>
        </div>
    </div>

    <div class="user-profile"> <!-- User profile at the top-right -->
        <img src="https://via.placeholder.com/40" alt="User Image">
        <span class="text-white">John Doe</span>
    </div>
</div>

<!-- Filters and Overview Section -->
<div class="container">
    <div class="filters-row d-flex justify-content-between align-items-center">
        <!-- Category Selector -->
        <select class="form-select" style="max-width: 200px;">
            <option selected>Select Category</option>
            <option value="electronics">Electronics</option>
            <option value="fashion">Fashion</option>
            <option value="home">Home & Furniture</option>
            <option value="books">Books</option>
            <option value="beauty">Beauty</option>
        </select>

        <!-- Filter Options -->
        <select class="form-select" style="max-width: 200px;">
            <option selected>Sort By</option>
            <option value="popularity">Popularity</option>
            <option value="rating">Rating</option>
            <option value="low-to-high">Price: Low to High</option>
            <option value="high-to-low">Price: High to Low</option>
        </select>
    </div>

    <!-- Overview Cards -->
    <h2 class="section-title text-center">Overview</h2>
    <div class="row g-4">
        <div class="col-md-4">
            <div class="card text-center p-3">
                <div class="card-body">
                    <h5 class="card-title">Total Sales</h5>
                    <p class="card-text fs-4">$15,230</p>
                    <p class="text-success">+15% This Month</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card text-center p-3">
                <div class="card-body">
                    <h5 class="card-title">Orders</h5>
                    <p class="card-text fs-4">1,234</p>
                    <p class="text-success">+12% This Month</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card text-center p-3">
                <div class="card-body">
                    <h5 class="card-title">New Customers</h5>
                    <p class="card-text fs-4">321</p>
                    <p class="text-success">+18% This Month</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Featured Products -->
    <h2 class="section-title text-center mt-5">Featured Products</h2>
    <div class="row g-4">
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/350x150" class="card-img-top" alt="Product 1">
                <div class="card-body">
                    <h5 class="card-title">Product Name 1</h5>
                    <p class="card-text">$29.99</p>
                    <button class="btn btn-primary">View Details</button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/350x150" class="card-img-top" alt="Product 2">
                <div class="card-body">
                    <h5 class="card-title">Product Name 2</h5>
                    <p class="card-text">$49.99</p>
                    <button class="btn btn-primary">View Details</button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img src="https://via.placeholder.com/350x150" class="card-img-top" alt="Product 3">
                <div class="card-body">
                    <h5 class="card-title">Product Name 3</h5>
                    <p class="card-text">$19.99</p>
                    <button class="btn btn-primary">View Details</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer mt-5">
    <p>&copy; 2025 E-commerce Inc. | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
