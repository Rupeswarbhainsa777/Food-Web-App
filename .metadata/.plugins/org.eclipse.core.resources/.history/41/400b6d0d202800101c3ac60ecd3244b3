<%@ page import="java.util.List" %>
<%@ page import="com.tap.modeal.Menu" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Menu> obj = (List<Menu>) session.getAttribute("menuList");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>The Most Popular Menu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background: #fffaf0;
            font-family: 'Segoe UI', sans-serif;
        }

        .navbar {
            background-color: #ffa500;
        }

        .navbar-brand, .nav-link, .form-control {
            color: white !important;
        }

        .section-title {
            text-align: center;
            margin: 30px 0;
        }

        .categories {
            text-align: center;
            margin-bottom: 30px;
        }

        .categories button {
            border: none;
            background: #fff;
            padding: 8px 16px;
            margin: 5px;
            border-radius: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            cursor: pointer;
        }

        .categories button:hover {
            background: #ffe4b5;
        }

        .menu-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-evenly;
            padding: 0 20px;
        }

        .menu-card {
            width: 25%;
            background: white;
            border-radius: 20px;
            text-align: center;
            padding: 15px 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            margin-bottom: 30px;
            height: 320px;
            position: relative;
            overflow: hidden;
        }

        .menu-card img {
            height: 60%;
            width: 100%;
            object-fit: cover;
            border-radius: 12px;
            margin-bottom: 10px;
        }

        .dish-name {
            font-weight: bold;
            font-size: 16px;
        }

        .dish-price {
            font-size: 18px;
            font-weight: bold;
            color: #ffa500;
            margin: 10px 0;
        }

        .quantity-controls {
            display: flex;
            justify-content: center;
            gap: 10px;
            align-items: center;
        }

        .quantity-controls button {
            border: none;
            background: #ffa500;
            color: white;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            font-weight: bold;
            cursor: pointer;
        }

        .add-to-cart-btn {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 6px 20px;
            border-radius: 20px;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">FoodApp</a>
    <form class="form-inline my-2 my-lg-0 ml-auto">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    </form>
    <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="#"><span class="cart-icon">&#128722;<span class="cart-count">2</span></span></a></li>
        <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
    </ul>
</nav>

<!-- Section Title -->
<div class="section-title">
    <p class="text-warning font-weight-bold mb-1">OUR MENU</p>
    <h2>The Most Popular</h2>
</div>

<!-- Categories -->
<div class="categories">
    <button>Burgers</button>
    <button>Pizza</button>
    <button>Sushi</button>
    <button>Snacks</button>
    <button>Salads</button>
    <button>Drinks</button>
    <button>Desserts</button>
</div>

<!-- Menu Cards Grid -->
<div class="menu-grid">
    <%
    if (obj != null) {
        for (Menu dish : obj) {
    %>
    <div class="menu-card">
        <img src="<%= dish.getImagePath() %>" alt="<%= dish.getItemName() %>">
        <div class="dish-name"><%= dish.getItemName() %></div>
        <div class="dish-price">$<%= dish.getItemPrice() %></div>
        <div class="quantity-controls">
            <button>-</button>
            <span>1</span>
            <button>+</button>
        </div>
        <button class="add-to-cart-btn">Add to Cart</button>
    </div>
    <%
        }
    } else {
    %>
    <div class="text-center w-100">
        <p>No dishes available.</p>
    </div>
    <%
    }
    %>
</div>

</body>
</html>
