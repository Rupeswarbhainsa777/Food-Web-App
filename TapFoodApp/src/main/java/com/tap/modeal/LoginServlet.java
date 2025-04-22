package com.tap.modeal;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        String email = req.getParameter("email");
	        String password = req.getParameter("password");

	        // Validate credentials (replace with DB check)
	        if ("test@swiggy.com".equals(email) && "1234".equals(password)) {
	            req.getSession().setAttribute("user", email);
	            resp.sendRedirect("home.jsp");
	        } else {
	            req.setAttribute("error", "Invalid credentials");
	            req.getRequestDispatcher("sinin.html").forward(req, resp);
	        }
	    }

}
