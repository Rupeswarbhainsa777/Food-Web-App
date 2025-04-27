<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.tap.modeal.Cart" %>
<%@ page import="com.tap.modeal.CartItem" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Checkout - Tap Food</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
body {
    background-color: #f8f9fa;
}
.checkout-container {
    max-width: 600px;
    margin: 40px auto;
    background: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
}
h2 {
    margin-bottom: 20px;
}
.payment-methods {
    margin-top: 20px;
}
.payment-methods label {
    display: block;
    margin-bottom: 10px;
    font-size: 18px;
}
.place-order-btn {
    margin-top: 30px;
}
.footer {
    background-color: #2e2e2e;
    color: white;
    padding: 20px 0;
    margin-top: 40px;
    text-align: center;
}
</style>

</head>
<body>

<!-- Header -->
<header class="d-flex justify-content-between align-items-center px-4 py-3 shadow bg-white">
    <div class="h4 text-warning font-weight-bold">Tap Food</div>
    <nav>
        <ul class="nav">
            <li class="nav-item"><a class="nav-link text-dark" href="home.jsp">Home</a></li>
            <li class="nav-item"><a class="nav-link text-dark" href="cart.jsp">Cart</a></li>
            <li class="nav-item"><a class="nav-link text-dark" href="LogoutServlet">Logout</a></li>
        </ul>
    </nav>
</header>

<!-- Checkout Form -->
<div class="checkout-container">
    <h2 class="text-center">Checkout</h2>
    
    <form action="OrderServlet" method="post">
        
        <!-- Total Amount -->
        <%
        Cart cart = (Cart) session.getAttribute("cart");
        double totalAmount = 0.0;
        if (cart != null && !cart.getItems().isEmpty()) {
            for (CartItem item : cart.getItems().values()) {
                totalAmount += item.getPrice() * item.getQuantity();
            }
        %>
        <div class="form-group">
            <label>Total Amount:</label>
            <input type="text" class="form-control" value="₹<%= String.format("%.2f", totalAmount) %>" readonly>
            <input type="hidden" name="totalAmount" value="<%= totalAmount %>">
        </div>
        <% } else { %>
        <div class="alert alert-warning text-center">
            Your cart is empty! <a href="home.jsp" class="alert-link">Shop now</a>
        </div>
        <% } %>

        <!-- Payment Methods -->
        <div class="payment-methods">
            <label>Select Payment Method:</label>
            
            <div class="form-check">
                <input class="form-check-input" type="radio" name="paymentMethod" id="online" value="Online" required>
                <label class="form-check-label" for="online">
                    Online Payment
                </label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="radio" name="paymentMethod" id="cash" value="Cash">
                <label class="form-check-label" for="cash">
                    Cash on Delivery
                </label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="radio" name="paymentMethod" id="upi" value="UPI">
                <label class="form-check-label" for="upi">
                    UPI Payment
                </label>
            </div>

            <div class="form-check">
                <input class="form-check-input" type="radio" name="paymentMethod" id="card" value="Card">
                <label class="form-check-label" for="card">
                    Debit/Credit Card
                </label>
            </div>
        </div>

        <!-- Place Order Button -->
        <div class="text-center place-order-btn">
            <button type="submit" class="btn btn-success btn-lg">Place Order</button>
        </div>

    </form>
</div>

<!-- Footer -->
<footer class="footer">
    <p>&copy; 2025 Tap Food. All rights reserved.</p>
</footer>

</body>
</html>
