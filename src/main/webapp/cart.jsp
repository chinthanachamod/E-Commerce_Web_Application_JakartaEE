<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/26/2025
  Time: 8:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <!-- Custom CSS for Cart -->
    <style>
        body {
            padding-top: 70px;
        }
        .navbar-brand {
            font-weight: bold;
        }
        .cart-btn {
            position: relative;
        }
        .cart-btn .fa-shopping-cart {
            color: white;
        }
        .cart-btn .badge {
            position: absolute;
            top: 0;
            right: 0;
            background-color: red;
            color: white;
            font-size: 0.7em;
        }
        .card-body img {
            max-width: 65px;
            height: auto;
        }
        .card-body .product-info {
            padding-left: 15px;
        }
        .checkout-btn {
            background-color: #28a745;
            color: white;
        }
        .checkout-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">SD TECH</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="productList.jsp">Products</a>
                </li>
                <li class="nav-item cart-btn">
                    <button type="button" class="btn btn-dark">
                        <i class="fa fa-shopping-cart"></i>
                        <span class="badge">5</span>
                    </button>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Cart Section -->
<section class="h-100" style="background-color: #f8f9fa;">
    <div class="container py-5">
        <div class="row d-flex justify-content-center">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body p-4">
                        <div class="d-flex justify-content-between mb-4">
                            <h5 class="mb-0">Shopping Cart</h5>
                            <p>You have 4 items in your cart</p>
                        </div>

                        <!-- Cart Items -->
                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <div class="d-flex">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img1.webp" alt="Item" class="img-fluid rounded-3" />
                                    <div class="product-info ms-3">
                                        <h6>Iphone 11 Pro</h6>
                                        <p class="text-muted">256GB, Navy Blue</p>
                                    </div>
                                </div>
                                <div>
                                    <h6>$900</h6>
                                    <button class="btn btn-link text-danger"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <div class="d-flex">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img2.webp" alt="Item" class="img-fluid rounded-3" />
                                    <div class="product-info ms-3">
                                        <h6>Samsung Galaxy Note 10</h6>
                                        <p class="text-muted">256GB, Navy Blue</p>
                                    </div>
                                </div>
                                <div>
                                    <h6>$900</h6>
                                    <button class="btn btn-link text-danger"><i class="fas fa-trash-alt"></i></button>
                                </div>
                            </div>
                        </div>

                        <!-- Add more items as needed -->

                        <!-- Payment Summary -->
                        <div class="card bg-light rounded-3 mt-4">
                            <div class="card-body">
                                <h5 class="text-center">Payment Summary</h5>
                                <div class="d-flex justify-content-between mb-3">
                                    <p class="mb-0">Subtotal:</p>
                                    <p class="mb-0">$4798.00</p>
                                </div>
                                <div class="d-flex justify-content-between mb-3">
                                    <p class="mb-0">Shipping:</p>
                                    <p class="mb-0">$0.00</p>
                                </div>
                                <div class="d-flex justify-content-between mb-4">
                                    <p class="mb-0"><strong>Total (Incl. Taxes):</strong></p>
                                    <p class="mb-0"><strong>$4818.00</strong></p>
                                </div>
                                <button class="btn btn-success btn-block checkout-btn w-100">Proceed to Checkout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Bootstrap JS & Dependencies -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
<!-- Font Awesome JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
</body>
</html>