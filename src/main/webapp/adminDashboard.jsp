<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/21/2025
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Card hover animation */
        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
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
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand">BrandName</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="hero-section">
    <h1>Welcome to Admin Panel</h1>
    <p>Manage your e-commerce application with ease. Access the <a href="signIn.jsp">Home Page</a> for a customer view.</p>
</div>

<div class="container mt-5">
    <div class="row g-4">
        <!-- Manage Products -->
        <div class="col-md-6 col-lg-4">
            <div class="card text-center shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Manage Products</h5>
                    <p class="card-text">Add, update, or delete products in the inventory.</p>
                    <a href="manage_products.jsp" class="btn btn-primary">Go to Products</a>
                </div>
            </div>
        </div>

        <!-- Manage Categories -->
        <div class="col-md-6 col-lg-4">
            <div class="card text-center shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Manage Categories</h5>
                    <p class="card-text">Add, update, or delete product categories.</p>
                    <a href="manage_categories.jsp" class="btn btn-primary">Go to Categories</a>
                </div>
            </div>
        </div>

        <!-- Manage Users -->
        <div class="col-md-6 col-lg-4">
            <div class="card text-center shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Manage Users</h5>
                    <p class="card-text">View, activate, or deactivate customer accounts.</p>
                    <a href="manage_users.jsp" class="btn btn-primary">Go to Users</a>
                </div>
            </div>
        </div>

        <!-- View Orders -->
        <div class="col-md-6 col-lg-4">
            <div class="card text-center shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">View Orders</h5>
                    <p class="card-text">View and manage customer orders.</p>
                    <a href="view_orders.jsp" class="btn btn-primary">Go to Orders</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
