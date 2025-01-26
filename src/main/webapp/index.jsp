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
    <title>CMobile</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
          integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        /* Hero Section */
        .hero {
            color: white;
            padding: 20px;
            margin-bottom: 0;
            position: relative;
        }

        .brand-name {
            font-size: 2rem;
            font-weight: bold;
            color: white;
        }

        /* Background animation */
        .background-animation {
            height: 100vh;
            background: url("images/DeWatermark.ai_1737648889127.png") no-repeat center center/cover;
            animation: backgroundAnimation 25s infinite, textColorAnimation 25s infinite;
            margin: 0; /* Remove the gap */
        }

        /* Animation for background image */
        @keyframes backgroundAnimation {
            0% { background: url("images/DeWatermark.ai_1737648889127.png") no-repeat center center/cover; }
            20% { background: url("images/wmremove-transformed.jpeg") no-repeat center center/cover; }
            40% { background: url("images/wmremove-transformed (1).jpeg") no-repeat center center/cover; }
            60% { background: url("images/1737651395632.jpg") no-repeat center center/cover; }
            80% { background: url("images/DeWatermark.ai_1737651459666.png") no-repeat center center/cover; }
            100% { background: url("images/DeWatermark.ai_1737649252091.png") no-repeat center center/cover; }
        }

        /* Animation for paragraph color */
        @keyframes textColorAnimation {
            0% { color: rgba(255, 255, 255, 0.8); }
            20% { color: rgba(255, 255, 255, 0.9); }
            40% { color: rgba(240, 240, 240, 0.9); }
            60% { color: rgba(255, 255, 255, 0.85); }
            80% { color: rgba(240, 240, 240, 0.95); }
            100% { color: rgba(255, 255, 255, 0.8); }
        }

        /* Frame around the paragraph */
        .paragraph-frame {
            border: 2px solid rgba(255, 255, 255, 0.6);
            padding: 20px;
            border-radius: 8px;
            background-color: rgb(0 0 0 / 86%);
            animation: opacityAnimation 25s infinite;
            width: 80%;
            margin: 0 auto;
        }

        /* Adjust the paragraph inside the frame */
        .paragraph-frame p {
            margin: 0;
            font-size: 1.1rem; /* Slightly smaller text */
        }

        /* Adjust the title inside the frame */
        .paragraph-frame h2 {
            margin-bottom: 15px; /* Add space below the title */
            color: rgba(255, 255, 255, 0.9); /* Keep title color light */
            font-size: 2rem; /* Adjust title size */
            font-weight: bold; /* Bold title */
        }

        .navbar, .footer {
            background-color: #000000;
        }

        .navbar {
            padding: 20px 0; /* Increased padding for a taller navbar */
        }

        .navbar-brand img {
            height: 50px; /* Set a specific height for the brand logo */
            width: auto; /* Maintain aspect ratio */
        }

        /* Navigation link styles */
        .navbar-nav .nav-link {
            position: relative;
            padding: 10px 15px;
        }

        /* Adding color to the line frame on hover */
        .navbar-nav .nav-link::after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 2px;
            background-color: #ff6347; /* Set the color here (tomato color) */
            transform: scaleX(0);
            transform-origin: bottom right;
            transition: transform 0.3s ease-out;
        }

        .navbar-nav .nav-link:hover::after {
            transform: scaleX(1);
            transform-origin: bottom left;
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
            color: #333;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container-fluid">
        <!-- Replace text with an image for the brand name -->
        <a class="navbar-brand" href="#">
            <img src="images/BrandName.png" alt="CMobile Logo"> <!-- Use the actual path to your image -->
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end">
            <div class="navbar-nav">
                <a class="nav-link" href="index.jsp">Home</a>
                <a class="nav-link" href="product-List">Products</a>
                <a class="nav-link" href="adminDashboard.jsp">Admin</a>
                <a class="nav-link" href="signIn.jsp">Sign-In</a>
            </div>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<header class="hero bg-dark text-center text-white py-4">
    <div class="brand-name fs-1 fw-bold">- CMobile -</div>
    <p class="slogan fs-4 mt-2">"Bringing the World to Your Fingertips!"</p>
    <%--<div class="search-bar mx-auto" style="width: 60%;">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search mobile phones...">
            <button class="btn btn-primary">Search</button>
        </div>
    </div>--%>
</header>


<!-- Background Animation Section -->
<section class="background-animation">
    <div class="d-flex justify-content-center align-items-center h-100">
        <div class="text-center">
            <div class="paragraph-frame">
                <h2 class="mb-4">Welcome to CMobile</h2> <!-- Title inside the frame -->
                <p class="fs-4">
                    Welcome to CMobile, your dedicated partner for transforming corporate mobile solutions in Sri Lanka! At CMobile, we don’t just provide products we deliver innovation, efficiency, and tailored solutions designed to meet the specific goals of your organization.

                    Our vision is to empower your business by offering cutting-edge technology, seamless integration, and services that streamline your mobile operations. We bring you a curated range of world-class mobile devices and solutions, handpicked to align with your corporate objectives.

                    Our expert team is here to simplify complex decisions, ensuring that you gain the maximum value from every solution. At CMobile, we focus on more than transactions we’re about forging enduring partnerships that drive success. Let’s collaborate to elevate your business, harness the power of technology, and create a future where your organization can thrive.
                </p>
            </div>
        </div>
    </div>
</section>
<%--
<!-- Special Offers Section -->
<section class="py-5">
    <div class="container">
        <h2 class="section-title text-center">Special Offers</h2>
        <div class="row g-4">
            <div class="col-md-6 col-lg-4">
                <div class="card">
                    <img src="images/Apple-iPhone-16-1.png" class="card-img-top" alt="Apple iPhone 16">
                    <div class="card-body">
                        <h5 class="card-title">Apple iPhone 16</h5>
                        <p class="card-text"><s>Rs.249,000</s> Rs.229,000</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>
            <!-- Add additional products as needed -->
        </div>
    </div>
</section>--%>

<!-- Overview Section -->
<section class="py-5 bg-light">
    <div class="container">
        <h2 class="section-title text-center">Overview</h2>
        <div class="row text-center g-4">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5>Total Revenue</h5>
                        <p class="fs-4">$120,500</p>
                        <p class="text-success">+20% This Month</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5>Orders</h5>
                        <p class="fs-4">2,345</p>
                        <p class="text-success">+10% This Month</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5>New Customers</h5>
                        <p class="fs-4">412</p>
                        <p class="text-success">+25% This Month</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer text-center text-white py-3">
    <p>&copy; 2025 CMobile. All Rights Reserved.</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
