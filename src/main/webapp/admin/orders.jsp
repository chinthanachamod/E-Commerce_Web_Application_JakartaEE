<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/26/2025
  Time: 1:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .navbar {
            margin-bottom: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .table-container {
            margin-top: 30px;
        }

        .table-dark th, .table-dark td {
            text-align: center;
        }

        .btn-sm {
            margin-right: 10px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="products.jsp">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="customers.jsp">Customers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="orders.jsp">Order Details</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Order Details Section -->
<div class="container mt-5">
    <h1 class="text-center">Order Details</h1>

    <div class="table-container">
        <table class="table table-striped table-bordered mt-4">
            <thead class="table-dark">
            <tr>
                <th>Order ID</th>
                <th>Customer Name</th>
                <th>Order Date</th>
                <th>Total Amount</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody id="orderTableBody">
            <!-- Orders will be dynamically added here -->
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap and JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // Simulated order data
    const orders = [
        { orderId: 'ORD001', customerName: 'John Doe', orderDate: '2025-01-20', totalAmount: '$150', status: 'Pending' },
        { orderId: 'ORD002', customerName: 'Jane Smith', orderDate: '2025-01-21', totalAmount: '$200', status: 'Shipped' },
        { orderId: 'ORD003', customerName: 'Alice Brown', orderDate: '2025-01-22', totalAmount: '$250', status: 'Delivered' }
    ];

    // Function to render order data into the table
    function loadOrderTable() {
        const tableBody = document.getElementById('orderTableBody');
        tableBody.innerHTML = ''; // Clear the table before adding data

        if (orders.length > 0) {
            orders.forEach(order => {
                const row = `
                    <tr>
                        <td>${order.orderId}</td>
                        <td>${order.customerName}</td>
                        <td>${order.orderDate}</td>
                        <td>${order.totalAmount}</td>
                        <td>${order.status}</td>
                        <td>
                            <a href="#" class="btn btn-primary btn-sm" onclick="viewOrderDetails('${order.orderId}')">View</a>
                            <a href="#" class="btn btn-danger btn-sm" onclick="deleteOrder('${order.orderId}')">Delete</a>
                        </td>
                    </tr>
                `;
                tableBody.innerHTML += row;
            });
        } else {
            const noOrderRow = `
                <tr>
                    <td colspan="6" class="text-center">No orders found</td>
                </tr>
            `;
            tableBody.innerHTML = noOrderRow;
        }
    }

    // View order details function
    function viewOrderDetails(orderId) {
        alert(`Viewing details for Order ID: ${orderId}`);
        // In a real app, you would likely redirect to a detailed view page
    }

    // Delete order function
    function deleteOrder(orderId) {
        const orderIndex = orders.findIndex(order => order.orderId === orderId);
        if (orderIndex >= 0) {
            orders.splice(orderIndex, 1); // Remove the order from the array
            loadOrderTable(); // Re-render the table
        }
    }

    // Initial load of order table
    loadOrderTable();
</script>

</body>
</html>
