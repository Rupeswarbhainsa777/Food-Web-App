<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Restaurant</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            margin-top: 50px;
            max-width: 800px;
            background-color: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            width: 100%;
        }
        @media (max-width: 768px) {
            .form-row .col-md-6 {
                margin-bottom: 1rem;
            }
        }
    </style>
</head>
<body>

<div class="container d-flex justify-content-center">
    <div class="form-container">
        <h3 class="text-center mb-4">Add New Restaurant</h3>
        <form action="AddRestaurantServlet" method="post">
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="restaurantId" class="form-label">Restaurant ID</label>
                    <input type="text" class="form-control" id="restaurantId" name="restaurantId" required>
                </div>
                <div class="col-md-6">
                    <label for="name" class="form-label">Restaurant Name</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="imagePath" class="form-label">Image Path / URL</label>
                    <input type="text" class="form-control" id="imagePath" name="imagePath" required>
                </div>
                <div class="col-md-3">
                    <label for="rating" class="form-label">Rating (0–5)</label>
                    <input type="number" step="0.1" min="0" max="5" class="form-control" id="rating" name="rating" required>
                </div>
                <div class="col-md-3">
                    <label for="eta" class="form-label">ETA (minutes)</label>
                    <input type="number" class="form-control" id="eta" name="eta" required>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="cuisineType" class="form-label">Cuisine Type</label>
                    <input type="text" class="form-control" id="cuisineType" name="cuisineType" required>
                </div>
                <div class="col-md-6">
                    <label for="ownerId" class="form-label">Owner ID</label>
                    <input type="number" class="form-control" id="ownerId" name="ownerId" required>
                </div>
            </div>

            <div class="mb-3">
                <label for="address" class="form-label">Address</label>
                <textarea class="form-control" id="address" name="address" rows="3" required></textarea>
            </div>

            <div class="form-check mb-4">
                <input class="form-check-input" type="checkbox" id="isActive" name="isActive" value="true">
                <label class="form-check-label" for="isActive">Is Active</label>
            </div>

            <button type="submit" class="btn btn-dark btn-custom mb-2">Add Restaurant</button>

            <div class="text-center mt-2">
                <a href="restaurantList.jsp" class="text-decoration-none">&larr; Back to List</a>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>


