<%@ page import="org.example.ecommerce_application_jakartaee.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/21/2025
  Time: 5:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="org.example.ecommerce_application_jakartaee." %>&lt;%&ndash;--%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
          integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .navbar {
            background-color: #000000;
            padding: 20px 0;
        }

        .navbar-brand img {
            height: 50px;
            width: auto;
        }

        .navbar-nav .nav-link {
            position: relative;
            padding: 10px 15px;
        }

        .navbar-nav .nav-link::after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 2px;
            background-color: #ff6347;
            transform: scaleX(0);
            transform-origin: bottom right;
            transition: transform 0.3s ease-out;
        }

        .navbar-nav .nav-link:hover::after {
            transform: scaleX(1);
            transform-origin: bottom left;
        }

        .product-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .filters {
            background-color: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .filters label {
            font-weight: bold;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="signIn.jsp">
            <img src="images/BrandName.png" alt="CMobile Logo">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <div class="navbar-nav">
                <a class="nav-link" href="cart.jsp">Cart</a>
                <a class="nav-link" href="index.jsp">Home</a>
            </div>
        </div>
    </div>
</nav>

<div class="container mt-4">
    <div class="container mt-4">
        <!-- Filters Section -->
        <div class="filters">
            <div class="row">
                <div class="col-md-3 mb-3">
                    <label for="categoryFilter" class="form-label">Category</label>
                    <select class="form-select" id="categoryFilter" name="category" onchange="applyFilters()">
                        <option value="All Categories">All Categories</option>
                        <option value="iOS Phones">iOS Phones</option>
                        <option value="Android Phones">Android Phones</option>
                        <option value="Mobile Accessories">Mobile Accessories</option>
                    </select>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="searchInput" class="form-label">Search</label>
                    <input type="text" class="form-control" id="searchInput" name="search" placeholder="Search products"
                           oninput="applyFilters()">
                </div>
                <div class="col-md-3 mb-3">
                    <label for="minPrice" class="form-label">Min Price</label>
                    <input type="number" class="form-control" id="minPrice" name="minPrice" placeholder="Min"
                           oninput="applyFilters()">
                </div>
                <div class="col-md-3 mb-3">
                    <label for="maxPrice" class="form-label">Max Price</label>
                    <input type="number" class="form-control" id="maxPrice" name="maxPrice" placeholder="Max"
                           oninput="applyFilters()">
                </div>
            </div>
        </div>
    </div>
    </div>

<%
    List<Product> dataList = (List<Product>) request.getAttribute("products");
    if (dataList != null && !dataList.isEmpty())
%>
    <!-- Product List -->
<div class="row" id="productContainer">
    <!-- iOS Phones -->
    <%
        for (Product product : dataList) {
    %>
    <div class="col-md-4 mb-4">
        <div class="card product-card">
            <img src="images/Products/iPhone%2015.png" class="card-img-top" alt="iPhone 15 Image">
            <div class="card-body">
                <h6 class="card-title"><%=product.getName()%></h6>
                <p class="card-text"><%=product.getCategoryId()%></p>
                <p class="card-text"><%=product.getPrice()%></p>
                <a href="cart.jsp?productId=2" class="btn btn-primary w-100">Add to Cart</a>
            </div>
        </div>
    </div>
    <%
        }
    %>
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/iPhone%2015.png" class="card-img-top" alt="iPhone 15 Image">
                <div class="card-body">
                    <h6 class="card-title">iPhone 15</h6>
                    <p class="card-text">Category: iOS Phones</p>
                    <p class="card-text">Price: $1,099</p>
                    <a href="cart.jsp?productId=2" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/iPhone%20SE%20(3rd%20Gen).png" class="card-img-top" alt="iPhone SE Image">
                <div class="card-body">
                    <h6 class="card-title">iPhone SE (3rd Gen)</h6>
                    <p class="card-text">Category: iOS Phones</p>
                    <p class="card-text">Price: $429</p>
                    <a href="cart.jsp?productId=4" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/iPhone%2013%20Mini.png" class="card-img-top" alt="iPhone 13 Mini Image">
                <div class="card-body">
                    <h6 class="card-title">iPhone 13 Mini</h6>
                    <p class="card-text">Category: iOS Phones</p>
                    <p class="card-text">Price: $699</p>
                    <a href="cart.jsp?productId=5" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>

        <!-- Android Phones -->
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/Samsung%20Galaxy%20S23%20Ultra.png" class="card-img-top" alt="Samsung Galaxy S23 Ultra Image">
                <div class="card-body">
                    <h6 class="card-title">Samsung Galaxy S23 Ultra</h6>
                    <p class="card-text">Category: Android Phones</p>
                    <p class="card-text">Price: $1,199</p>
                    <a href="cart.jsp?productId=6" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/Google%20Pixel%208%20Pro.png" class="card-img-top" alt="Google Pixel 8 Pro Image">
                <div class="card-body">
                    <h6 class="card-title">Google Pixel 8 Pro</h6>
                    <p class="card-text">Category: Android Phones</p>
                    <p class="card-text">Price: $1,099</p>
                    <a href="cart.jsp?productId=7" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/Huawei%20Y9%20Prime%202019.png" class="card-img-top" alt="Huawei Y9 Prime Image">
                <div class="card-body">
                    <h6 class="card-title">Huawei Y9 Prime 2019</h6>
                    <p class="card-text">Category: Android Phones</p>
                    <p class="card-text">Price: $299</p>
                    <a href="cart.jsp?productId=8" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/OnePlus%2011.png" class="card-img-top" alt="OnePlus 11 Image">
                <div class="card-body">
                    <h6 class="card-title">OnePlus 11</h6>
                    <p class="card-text">Category: Android Phones</p>
                    <p class="card-text">Price: $749</p>
                    <a href="cart.jsp?productId=9" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/Xiaomi%20Redmi%20Note%2013%20Pro.png" class="card-img-top" alt="Xiaomi Redmi Note Image">
                <div class="card-body">
                    <h6 class="card-title">Xiaomi Redmi Note 13 Pro</h6>
                    <p class="card-text">Category: Android Phones</p>
                    <p class="card-text">Price: $379</p>
                    <a href="cart.jsp?productId=10" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>

        <!-- Mobile Accessories -->
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/AirPods%20Pro%202.png" class="card-img-top" alt="AirPods Pro 2 Image">
                <div class="card-body">
                    <h6 class="card-title">AirPods Pro 2</h6>
                    <p class="card-text">Category: Mobile Accessories</p>
                    <p class="card-text">Price: $249</p>
                    <a href="cart.jsp?productId=11" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/Samsung%20Galaxy%20Buds%202%20Pro.png" class="card-img-top" alt="Samsung Galaxy Buds Image">
                <div class="card-body">
                    <h6 class="card-title">Samsung Galaxy Buds 2 Pro</h6>
                    <p class="card-text">Category: Mobile Accessories</p>
                    <p class="card-text">Price: $199</p>
                    <a href="cart.jsp?productId=12" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-4">
            <div class="card product-card">
                <img src="images/Products/Anker%20PowerCore%2010000.png" class="card-img-top" alt="Anker Power Bank Image">
                <div class="card-body">
                    <h6 class="card-title">Anker PowerCore 10000</h6>
                    <p class="card-text">Category: Mobile Accessories</p>
                    <p class="card-text">Price: $35</p>
                    <a href="cart.jsp?productId=13" class="btn btn-primary w-100">Add to Cart</a>
                </div>
            </div>
        </div>
    </div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- JavaScript for Filters -->
<script>
    function applyFilters() {
        const category = document.getElementById('categoryFilter').value.toLowerCase();
        const search = document.getElementById('searchInput').value.toLowerCase();
        const minPrice = parseFloat(document.getElementById('minPrice').value) || 0;
        const maxPrice = parseFloat(document.getElementById('maxPrice').value) || Infinity;

        document.querySelectorAll('.product-card').forEach(card => {
            const productCategory = card.querySelector('.card-text:nth-child(2)').textContent.toLowerCase();
            const productName = card.querySelector('.card-title').textContent.toLowerCase();
            const productPrice = parseFloat(card.querySelector('.card-text:nth-child(3)').textContent.replace(/[^0-9.-]+/g, ''));

            if (
                (category === 'all categories' || productCategory.includes(category)) &&
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