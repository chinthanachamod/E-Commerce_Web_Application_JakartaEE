<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/26/2025
  Time: 2:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        #dropZone {
            transition: border-color 0.3s ease, background-color 0.3s ease;
        }
        #dropZone:hover {
            border-color: #66afe9;
            background-color: #f1f1f1;
            cursor: pointer;
        }

        tr:hover{
            background-color: rgb(232, 178, 74);
            cursor: pointer;
        }

        #productTableBody tr.active {
            background-color: #e8b24a;
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
                    <a class="nav-link" href="admin/customers.jsp">Customers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin/orders.jsp">Order Details</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../index.jsp">User</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Product Management Section -->
<div class="container mt-5">
    <h1 class="text-center">Product Management</h1>
    <form action="products" method="post" id="productForm" class="mt-4" enctype="multipart/form-data">
        <div class="row mb-3">
            <div class="col-md-6">
                <label for="productName" class="form-label">Product Name</label>
                <input type="text" class="form-control" id="productName" placeholder="Enter product name" name="name">
            </div>
            <div class="col-md-6">
                <label for="productPrice" class="form-label">Price</label>
                <input type="number" class="form-control" id="productPrice" placeholder="Enter product price" name="price">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-6">
                <label for="productQuantity" class="form-label">Quantity on Hand</label>
                <input type="number" class="form-control" id="productQuantity" placeholder="Enter quantity" name="quantity">
            </div>
            <div class="col-md-6">
                <label for="productCategory" class="form-label">Category</label>
                <select id="productCategory" class="form-select" name="category">
                    <option selected disabled>Select category</option>
                    <option value="electronics">Iphones</option>
                    <option value="clothing">Samsung</option>
                    <option value="home_appliances">X-Honor</option>
                </select>
            </div>
        </div>
        <div class="mb-3">
            <label for="productDescription" class="form-label">Description</label>
            <textarea class="form-control" id="productDescription" rows="3" placeholder="Enter product description" name="description"></textarea>
        </div>

        <div class="mb-3">
            <label for="dropZone" class="form-label">Drag and Drop Product Image</label>
            <!-- Drag-and-Drop Container -->
            <div id="dropZone"
                 style="width: 100%; height: 200px; border: 2px dashed #ccc; border-radius: 10px; display: flex; align-items: center; justify-content: center; text-align: center; background-color: #f9f9f9;">
                <p style="color: #aaa;">Drag & Drop an image here or click to select one</p>
            </div>
            <!-- Hidden Input Field for Fallback -->
            <input type="file" id="fileInput" name="image" accept="image/*" style="display: none;" />
        </div>

        <!-- Preview Area -->
        <div class="mb-3 text-center">
            <img id="imagePreview" src="#" alt="Image Preview" style="display: none; max-width: 200px; max-height: 200px; border: 1px solid #ddd; margin-top: 10px; border-radius: 5px;">
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-success" id="saveProduct" >Save</button>
            <button type="button" class="btn btn-primary" id="updateProduct">Update</button>
            <button type="button" class="btn btn-danger" id="deleteProduct">Delete</button>
        </div>
    </form>

    <div class="modal fade" id="update_modal" tabindex="-1" aria-labelledby="update_modal" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="container m-2">
                        <form action="products-update" method="post">
                            <div class="mb-3">
                                <label for="update_procut_id" class="form-label">Product Id</label>
                                <input type="text" class="form-control" id="update_procut_id" name="update_product_id" readonly>
                            </div>
                            <div class="mb-3">
                                <label for="update_product_name" class="form-label">Product Name</label>
                                <input type="text" class="form-control" id="update_product_name" name="update_product_name">
                            </div>
                            <div class="mb-3">
                                <label for="update_product_price" class="form-label">Product Price</label>
                                <input type="text" class="form-control" id="update_product_price" name="update_product_price" >
                            </div>
                            <div class="mb-3">
                                <label for="update_qty" class="form-label">Product Quantity</label>
                                <input type="text" class="form-control" id="update_qty" name="update_qty">
                            </div>

                            <div class="col-md-6">
                                <label for="update_product_category" class="form-label">Category</label>
                                <select id="update_product_category" class="form-select" name="update_product_category">
                                    <option selected disabled>Select category</option>
                                    <option value="iphones">Iphones</option>
                                    <option value="samsung">Samsung</option>
                                    <option value="x-honor">X-Honor</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="update_product_description" class="form-label">Description</label>
                                <textarea class="form-control" id="update_product_description" name="update_product_description" rows="3" placeholder="Enter product description" name="description"></textarea>
                            </div>
                            <button id="btn_update_user" type="submit" class="btn btn-primary">Update</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-5">
        <h2 class="text-center">Product List</h2>
        <table class="table table-bordered mt-3">
            <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Category</th>
                <th>Description</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody id="productTableBody">
            <!-- Dynamic rows will be added here -->
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    const dropZone = document.getElementById('dropZone');
    const fileInput = document.getElementById('fileInput');
    const imagePreview = document.getElementById('imagePreview');

    dropZone.addEventListener('click', () => fileInput.click());

    fileInput.addEventListener('change', (event) => handleFiles(event.target.files));

    dropZone.addEventListener('dragover', (event) => {
        event.preventDefault();
        dropZone.style.borderColor = '#66afe9';
    });

    dropZone.addEventListener('dragleave', () => {
        dropZone.style.borderColor = '#ccc';
    });

    dropZone.addEventListener('drop', (event) => {
        event.preventDefault();
        dropZone.style.borderColor = '#ccc';
        const files = event.dataTransfer.files;
        handleFiles(files);
    });

    function handleFiles(files) {
        if (files.length > 0) {
            const file = files[0];
            if (file.type.startsWith('image/')) {
                const reader = new FileReader();
                reader.onload = (e) => {
                    imagePreview.src = e.target.result;
                    imagePreview.style.display = 'block';
                };
                reader.readAsDataURL(file);
            } else {
                alert('Please upload an image file.');
            }
        }
    }

    // Event listeners for product actions
    document.getElementById('saveProduct').addEventListener('click', function() {
        alert("Product Saved");
    });

    document.getElementById('updateProduct').addEventListener('click', function() {
        alert("Product Updated");
    });

    document.getElementById('deleteProduct').addEventListener('click', function() {
        alert("Product Deleted");
    });

    // Handle row selection for update
    const rows = document.querySelectorAll("#productTableBody tr");
    rows.forEach(row => {
        row.addEventListener("click", function() {
            this.classList.toggle("active");
        });
    });
</script>

</body>
</html>
