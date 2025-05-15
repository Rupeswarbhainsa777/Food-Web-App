<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Menu Item</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            margin-top: 50px;
            max-width: 700px;
            background-color: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container d-flex justify-content-center">
    <div class="form-container">
        <h3 class="text-center mb-4">Add Menu Item</h3>
        <form action="AddMenuServlet" method="post">
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="id" class="form-label">Menu ID</label>
                    <input type="text" class="form-control" id="id" name="id" required>
                </div>
                <div class="col-md-6">
                    <label for="name" class="form-label">Item Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="price" class="form-label">Price (₹)</label>
                    <input type="number" step="0.01" class="form-control" id="price" name="price" required>
                </div>
                <div class="col-md-6">
                    <label for="rating" class="form-label">Rating (0–5)</label>
                    <input type="number" step="0.1" min="0" max="5" class="form-control" id="rating" name="rating" required>
                </div>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
            </div>

            <div class="mb-3">
                <label for="imagePath" class="form-label">Image Path / URL</label>
                <input type="text" class="form-control" id="imagePath" name="imagePath" required>
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="isAvailable" name="isAvailable" value="true">
                <label class="form-check-label" for="isAvailable">Available</label>
            </div>

            <div class="mb-4">
                <label for="restaurantId" class="form-label">Restaurant ID</label>
                <input type="text" class="form-control" id="restaurantId" name="restaurantId" required>
            </div>

            <button type="submit" class="btn btn-dark btn-custom">Add Menu Item</button>

            <div class="text-center mt-3">
                <a href="restaurantList.jsp" class="text-decoration-none">&larr; Back to Restaurant List</a>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
