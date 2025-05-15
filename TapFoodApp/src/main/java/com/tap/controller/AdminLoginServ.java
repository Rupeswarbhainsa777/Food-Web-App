package com.tap.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.tap.DaoImple.UserImp;


@WebServlet("/adminLogin")
public class AdminLoginServ extends HttpServlet {
	
	private UserImp userImp;

    @Override
    public void init() throws ServletException {
        userImp = new UserImp();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        HttpSession session=      request.getSession();

        if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
            response.sendRedirect("adminlogin.html?error=emptyFields");
            return;
        }

        boolean isValid = userImp.isValidUser(email, password);

        if (isValid) 
        {
          
        	
        	session.setAttribute("email", email);
			response.sendRedirect("ResturantMangemant");
        	

        
        } else {
            response.sendRedirect("AlltypeLogin.jsp");
        }
    }
}
