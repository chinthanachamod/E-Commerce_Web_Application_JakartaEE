<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/20/2025
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('images/Login background.png') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .signup-box {
            background: rgba(255, 255, 255, 0.9); /* Adds slight transparency */
            border-radius: 10px;
            padding: 30px 40px;
            width: 100%;
            max-width: 650px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        .signup-box h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .signup-btn {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            border: none;
            color: #fff;
            font-weight: bold;
            transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth animation */
        }

        .signup-btn:hover {
            transform: scale(1.1); /* Slightly increases the size */
            box-shadow: 0 4px 15px rgba(106, 17, 203, 0.4); /* Adds a glowing shadow */
        }

        .form-check-label {
            color: #333; /* Ensure the label text is visible against any background */
        }

        .form-check {
            padding-bottom: 10px; /* Add some space below the checkbox */
            border-bottom: 1px solid #000; /* Add black line */
            margin-bottom: 15px; /* Space below the black line */
        }
    </style>
</head>
<body>
<div class="container">
    <div class="signup-box mx-auto">
        <h1 class="text-center">Create an Account</h1>
        <form>
            <div class="row mb-3">
                <div class="col">
                    <label for="firstName" class="form-label">First Name</label>
                    <input type="text" id="firstName" class="form-control" placeholder="Enter your first name" required>
                </div>
                <div class="col">
                    <label for="lastName" class="form-label">Last Name</label>
                    <input type="text" id="lastName" class="form-control" placeholder="Enter your last name" required>
                </div>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" id="email" class="form-control" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" class="form-control" placeholder="Enter your password" required>
            </div>
            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Confirm Password</label>
                <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm your password" required>
            </div>
            <div class="form-check">
                <input type="checkbox" id="showPassword" class="form-check-input">
                <label for="showPassword" class="form-check-label">Show password</label>
            </div>
            <button type="submit" class="btn signup-btn w-100 fw-bold">Create Account</button>
        </form>
        <p class="text-center mt-3">Already have an account? <a href="index.jsp">Sign In</a></p>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    const showPassword = document.getElementById('showPassword');
    const password = document.getElementById('password');
    const confirmPassword = document.getElementById('confirmPassword');

    showPassword.addEventListener('change', function () {
        const type = showPassword.checked ? 'text' : 'password';
        password.type = type;
        confirmPassword.type = type;
    });
</script>
</body>
</html>
