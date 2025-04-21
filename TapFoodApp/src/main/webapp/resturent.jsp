<%@ page import="com.tap.modeal.Restaurant" %>
<%@ page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Restaurant List</title>
<style>
  .card {
    border: 1px solid #ddd;
    padding: 16px;
    margin: 10px;
    border-radius: 8px;
    max-width: 400px;
    background-color: #f9f9f9;
  }
</style>
</head>
<body>

<h2>Restaurant List</h2>

<%
Object obj = request.getAttribute("restaurant");
if (obj != null) {
    List<Restaurant> restaur = (List<Restaurant>) obj;
    for (Restaurant res : restaur) {
%>
    <div class="card">
        <h3><%= res.getName() %></h3>
        <p><strong>Address:</strong> <%= res.getAddress() %></p>
        <p><strong>Rating:</strong> <%= res.getRating() %></p>
    </div>
<%
    }
} else {
%>
    <p>No restaurants found.</p>
<%
}
%>

</body>
</html>





















