<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/20/2025
  Time: 12:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
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

        .reset-password-box {
            background: rgba(255, 255, 255, 0.9); /* Slight transparency */
            border-radius: 10px;
            padding: 30px 40px;
            width: 100%;
            max-width: 450px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        .reset-password-box h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        .reset-password-box p {
            color: #666;
            font-size: 14px;
            text-align: center;
            margin-bottom: 20px;
        }

        .submit-btn {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            border: none;
            color: #fff;
            font-weight: bold;
            transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth animation */
        }

        .submit-btn:hover {
            transform: scale(1.1); /* Slightly increases the size */
            box-shadow: 0 4px 15px rgba(106, 17, 203, 0.4); /* Adds a glowing shadow */
        }

        .back-to-login {
            text-align: center;
            margin-top: 15px;
        }

        .back-to-login a {
            color: #2575fc;
            text-decoration: none;
        }

        .back-to-login a:hover {
            text-decoration: underline;
        }

        .form-check-label {
            color: #333;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="reset-password-box mx-auto">
        <h1>Reset Password</h1>
        <p>Enter your new password below to reset your account password.</p>
        <form>
            <div class="mb-3">
                <label for="email" class="form-label">Email Address</label>
                <input type="email" id="email" class="form-control" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="newPassword" class="form-label">New Password</label>
                <input type="password" id="newPassword" class="form-control" placeholder="Enter your new password" required>
            </div>
            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Confirm Password</label>
                <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm your new password" required>
            </div>
            <div class="form-check mb-3">
                <input type="checkbox" id="showPassword" class="form-check-input">
                <label for="showPassword" class="form-check-label">Show Password</label>
            </div>
            <button type="submit" class="btn submit-btn w-100 fw-bold">Set Password</button>
        </form>
        <div class="back-to-login">
            <p><a href="signIn.jsp">Back to Login</a></p>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    const showPassword = document.getElementById('showPassword');
    const newPassword = document.getElementById('newPassword');
    const confirmPassword = document.getElementById('confirmPassword');

    showPassword.addEventListener('change', function () {
        const type = showPassword.checked ? 'text' : 'password';
        newPassword.type = type;
        confirmPassword.type = type;
    });
</script>
</body>
</html>
