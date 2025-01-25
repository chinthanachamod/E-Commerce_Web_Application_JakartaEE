<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/21/2025
  Time: 5:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Styling for product cards */
        .product-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        /* Hero Section Styling */
        .hero-section {
            background: linear-gradient(to right, #007bff, #6610f2);
            color: white;
            text-align: center;
            padding: 20px 10px;
            margin-bottom: 30px;
        }

        .hero-section a {
            color: #fff;
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
        <a class="navbar-brand" href="signIn.jsp">BrandName</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="cart.jsp">Cart</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="hero-section">
    <h1>Welcome to BrandName</h1>
    <p>Explore our wide range of products. Return to the <a href="signIn.jsp">Home Page</a>.</p>
</div>

<div class="container mt-4">
    <!-- Filters Section -->
    <div class="row">
        <div class="col-lg-3">
            <h5 class="mb-3">Filters</h5>

            <!-- Category Filter -->
            <div class="mb-4">
                <label for="categoryFilter" class="form-label">Category</label>
                <select class="form-select" id="categoryFilter" name="category" onchange="applyFilters()">
                    <option value="">All Categories</option>
                    <option value="Electronics">Electronics</option>
                    <option value="Fashion">Fashion</option>
                    <option value="Home Appliances">Home Appliances</option>
                </select>
            </div>

            <!-- Search Filter -->
            <div class="mb-4">
                <label for="searchInput" class="form-label">Search</label>
                <input type="text" class="form-control" id="searchInput" name="search" placeholder="Search products" oninput="applyFilters()">
            </div>

            <!-- Price Filter -->
            <div class="mb-4">
                <label class="form-label">Price Range</label>
                <div class="d-flex align-items-center">
                    <input type="number" class="form-control me-2" id="minPrice" name="minPrice" placeholder="Min" oninput="applyFilters()">
                    <input type="number" class="form-control" id="maxPrice" name="maxPrice" placeholder="Max" oninput="applyFilters()">
                </div>
            </div>
        </div>

        <!-- Product List -->
        <div class="col-lg-9">
            <h5 class="mb-3">Products</h5>
            <div class="row" id="productContainer">
                <!-- Example Product Card -->
                <div class="col-md-4 mb-4">
                    <div class="card product-card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Product Image">
                        <div class="card-body">
                            <h6 class="card-title">Product Name</h6>
                            <p class="card-text">Category: Electronics</p>
                            <p class="card-text">Price: $100</p>
                            <a href="add_to_cart.jsp?productId=1" class="btn btn-primary w-100">Add to Cart</a>
                        </div>
                    </div>
                </div>
                <!-- Repeat similar cards dynamically from the backend -->
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- JavaScript for Filters -->
<script>
    function applyFilters() {
        const category = document.getElementById('categoryFilter').value.toLowerCase();
        const search = document.getElementById('searchInput').value.toLowerCase();
        const minPrice = parseFloat(document.getElementById('minPrice').value) || 0;
        const maxPrice = parseFloat(document.getElementById('maxPrice').value) || Infinity;

        // Simulating product filtering logic (to be replaced with backend integration)
        document.querySelectorAll('.product-card').forEach(card => {
            const productCategory = card.querySelector('.card-text:nth-child(2)').textContent.toLowerCase();
            const productName = card.querySelector('.card-title').textContent.toLowerCase();
            const productPrice = parseFloat(card.querySelector('.card-text:nth-child(3)').textContent.replace(/[^0-9.-]+/g, ''));

            if (
                (category === '' || productCategory.includes(category)) &&
                (search === '' || productName.includes(search)) &&
                productPrice >= minPrice && productPrice <= maxPrice
            ) {
                card.parentElement.style.display = 'block';
            } else {
                card.parentElement.style.display = 'none';
            }
        });
    }
</script>
</body>
</html>
