<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/26/2025
  Time: 1:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Management</title>
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

        .form-container {
            background-color: #f8f9fa;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .table-container {
            margin-top: 30px;
        }

        .btn-sm {
            margin-right: 10px;
        }

        .table-dark th, .table-dark td {
            text-align: center;
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
                    <a class="nav-link active" href="customers.jsp">Customers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="orders.jsp">Order Details</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Customer Management Section -->
<div class="container mt-5">
    <h1 class="text-center">Customer Management</h1>

    <!-- Form to Add/Update Customer -->
    <div class="form-container">
        <form id="customerForm">
            <div class="mb-3">
                <label for="customerId" class="form-label">Customer ID</label>
                <input type="text" class="form-control" id="customerId" name="customerId" required>
            </div>
            <div class="mb-3">
                <label for="customerName" class="form-label">Name</label>
                <input type="text" class="form-control" id="customerName" name="customerName" required>
            </div>
            <div class="mb-3">
                <label for="customerEmail" class="form-label">Email</label>
                <input type="email" class="form-control" id="customerEmail" name="customerEmail" required>
            </div>
            <div class="mb-3">
                <label for="customerPhone" class="form-label">Phone Number</label>
                <input type="text" class="form-control" id="customerPhone" name="customerPhone" required>
            </div>
            <div class="d-flex justify-content-between">
                <button type="submit" name="action" value="save" class="btn btn-success">Save</button>
                <button type="submit" name="action" value="update" class="btn btn-warning">Update</button>
                <button type="submit" name="action" value="delete" class="btn btn-danger">Delete</button>
            </div>
        </form>
    </div>

    <!-- Customer List Table -->
    <div class="table-container">
        <h2 class="text-center">Customer List</h2>
        <table class="table table-bordered">
            <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody id="customerTableBody">
            <!-- Customer rows will be dynamically added here -->
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap and JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // Example customer data
    /*const customers = [
        { id: 'C001', name: 'John Doe', email: 'john@example.com', phone: '1234567890' },
        { id: 'C002', name: 'Jane Smith', email: 'jane@example.com', phone: '0987654321' }
    ];*/

    // Function to load customer data into the table
    function loadCustomerTable() {
        const tableBody = document.getElementById('customerTableBody');
        tableBody.innerHTML = '';
        customers.forEach((customer, index) => {
            const row = `
                <tr>
                    <td>${customer.id}</td>
                    <td>${customer.name}</td>
                    <td>${customer.email}</td>
                    <td>${customer.phone}</td>
                    <td>
                        <button class="btn btn-warning btn-sm" onclick="editCustomer(${index})">Edit</button>
                        <button class="btn btn-danger btn-sm" onclick="deleteCustomer(${index})">Delete</button>
                    </td>
                </tr>
            `;
            tableBody.innerHTML += row;
        });
    }

    // Function to populate the form for editing
    function editCustomer(index) {
        const customer = customers[index];
        document.getElementById('customerId').value = customer.id;
        document.getElementById('customerName').value = customer.name;
        document.getElementById('customerEmail').value = customer.email;
        document.getElementById('customerPhone').value = customer.phone;
    }

    // Function to delete customer
    function deleteCustomer(index) {
        customers.splice(index, 1);
        loadCustomerTable();
    }

    // Form submission handler to save, update, or delete customer
    document.getElementById('customerForm').addEventListener('submit', function(e) {
        e.preventDefault();
        const id = document.getElementById('customerId').value;
        const name = document.getElementById('customerName').value;
        const email = document.getElementById('customerEmail').value;
        const phone = document.getElementById('customerPhone').value;

        const action = e.submitter.value;
        if (action === 'save') {
            customers.push({ id, name, email, phone });
        } else if (action === 'update') {
            const index = customers.findIndex(c => c.id === id);
            if (index >= 0) {
                customers[index] = { id, name, email, phone };
            }
        } else if (action === 'delete') {
            const index = customers.findIndex(c => c.id === id);
            if (index >= 0) {
                customers.splice(index, 1);
            }
        }

        loadCustomerTable();
        this.reset();
    });

    // Initial load of customer data
    loadCustomerTable();
</script>

</body>
</html>
