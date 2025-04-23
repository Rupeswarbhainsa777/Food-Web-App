
<%@ page import="com.tap.modeal.Menu" %>
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

<h2>Menu List</h2>

<%
Object obj = request.getAttribute("menuList");
if(obj != null)
{
	List<Menu>  rest = (List<Menu>) obj;
	for(Menu res : rest)
	{
		%>
	    <div class="card">
	       
	        <p><strong>Address:</strong> <%= res.getItemName()%></p>
	        <p><strong>Rating:</strong> <%= res.getItemPrice() %></p>
	    </div>
	<%
		
	}
}

%>


</body>
</html>


