<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/21/2025
  Time: 6:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Additional Styling */
        .order-summary {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 20px;
            background-color: #f9f9f9;
        }

        .order-summary h4 {
            font-weight: bold;
        }

        .total-price {
            font-size: 1.25rem;
            font-weight: bold;
            color: #007bff;
        }

        .btn-finalize {
            background-color: #28a745;
            color: white;
            transition: all 0.3s ease;
        }

        .btn-finalize:hover {
            background-color: #218838;
            transform: scale(1.1);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
        }

        /* Animation on Button Click (Bounce Effect) */
        .btn-finalize:active {
            animation: bounce 0.3s ease;
        }

        /* Bounce Animation */
        @keyframes bounce {
            0% {
                transform: scale(1);
            }
            30% {
                transform: scale(1.1);
            }
            50% {
                transform: scale(0.9);
            }
            70% {
                transform: scale(1.05);
            }
            100% {
                transform: scale(1);
            }
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
                <!-- Added Home Link -->
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
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

<div class="container mt-5">
    <h2 class="mb-4">Checkout - Order Summary</h2>

    <!-- Order Summary Section -->
    <div class="order-summary mb-4">
        <h4>Product Details</h4>
        <table class="table">
            <thead>
            <tr>
                <th scope="col">Product</th>
                <th scope="col">Quantity</th>
                <th scope="col">Price</th>
                <th scope="col">Total</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Product Name</td>
                <td>1</td>
                <td>$100</td>
                <td>$100</td>
            </tr>
            <!-- Add more products here -->
            </tbody>
        </table>

        <hr>
        <h4 class="total-price">Total: $100</h4>
    </div>

    <!-- Shipping Information -->
    <div class="mb-4">
        <h4>Shipping Information</h4>
        <form>
            <div class="mb-3">
                <label for="fullName" class="form-label">Full Name</label>
                <input type="text" class="form-control" id="fullName" required>
            </div>
            <div class="mb-3">
                <label for="address" class="form-label">Shipping Address</label>
                <textarea class="form-control" id="address" rows="3" required></textarea>
            </div>
            <div class="mb-3">
                <label for="zipCode" class="form-label">Zip Code</label>
                <input type="text" class="form-control" id="zipCode" required>
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Phone Number</label>
                <input type="tel" class="form-control" id="phone" required>
            </div>
        </form>
    </div>

    <!-- Payment Information -->
    <div class="mb-4">
        <h4>Payment Information</h4>
        <form>
            <div class="mb-3">
                <label for="cardNumber" class="form-label">Card Number</label>
                <input type="text" class="form-control" id="cardNumber" required>
            </div>
            <div class="mb-3">
                <label for="expiryDate" class="form-label">Expiry Date</label>
                <input type="month" class="form-control" id="expiryDate" required>
            </div>
            <div class="mb-3">
                <label for="cvv" class="form-label">CVV</label>
                <input type="text" class="form-control" id="cvv" required>
            </div>
        </form>
    </div>

    <!-- Finalize Order Button -->
    <div class="d-flex justify-content-end">
        <button class="btn btn-finalize btn-lg">Place Order</button>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
