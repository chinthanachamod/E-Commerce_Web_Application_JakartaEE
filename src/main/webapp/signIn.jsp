<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
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

        .login-box {
            background: rgba(255, 255, 255, 0.9); /* Adds slight transparency */
            border-radius: 10px;
            padding: 30px 40px;
            width: 100%;
            max-width: 650px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        .login-box h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 10px;
        }

        .login-box p {
            color: #666;
            margin-bottom: 20px;
        }

        .login-btn {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            border: none;
            color: #fff;
            font-weight: bold;
            transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth animation */
        }

        .login-btn:hover {
            transform: scale(1.1); /* Slightly increases the size */
            box-shadow: 0 4px 15px rgba(106, 17, 203, 0.4); /* Adds a glowing shadow */
        }

        .forgot-password, .signup-link a {
            color: #2575fc;
            text-decoration: none;
        }

        .forgot-password:hover, .signup-link a:hover {
            text-decoration: underline;
        }

        .signup-link {
            font-size: 14px;
            margin-top: 20px;
        }

        .password-toggle {
            cursor: pointer;
        }
    </style>
</head>
<body>
<%--
login form
--%>
<div class="container">
    <div class="login-box mx-auto">
        <h1 class="text-center">Welcome</h1>
        <p class="text-center">Please login to your account</p>
        <form>
            <div class="mb-3">
                <label for="email" class="form-label">Email </label>
                <input type="email" id="email" class="form-control" placeholder="Enter your email">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <div class="input-group">
                    <input type="password" id="password" class="form-control" placeholder="Enter your password">
                    <button class="btn btn-outline-secondary password-toggle" type="button" id="togglePassword">
                        <span id="toggleIconText">Show</span>
                    </button>
                </div>
            </div>
            <div class="d-flex justify-content-between align-items-center mb-3">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">Remember Me</label>
                </div>
                <a href="forgotPassword.jsp" class="forgot-password">Forgot Password?</a>
            </div>
            <button type="submit" class="btn login-btn w-100 fw-bold">Login</button>
        </form>
        <p class="text-center signup-link">Don't have an account? <a href="signUp.jsp">Sign Up</a></p>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
    const togglePassword = document.getElementById('togglePassword');
    const passwordField = document.getElementById('password');
    const toggleIconText = document.getElementById('toggleIconText');

    togglePassword.addEventListener('click', function () {
        const isPassword = passwordField.getAttribute('type') === 'password';
        passwordField.setAttribute('type', isPassword ? 'text' : 'password');
        toggleIconText.textContent = isPassword ? 'Hide' : 'Show';
    });
</script>
</body>
</html>
