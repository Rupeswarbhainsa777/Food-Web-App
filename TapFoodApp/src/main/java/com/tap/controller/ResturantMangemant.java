package com.tap.controller;

import com.tap.DaoImple.DishDAOImp;
import com.tap.DaoImple.RestaurantImp;
import com.tap.modeal.Dish;
import com.tap.modeal.Restaurant;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.tap.DaoImple.RestaurantImp;


@WebServlet("/ResturantMangemant")
public class ResturantMangemant extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	
        RestaurantImp rest = new RestaurantImp();
	    ArrayList<Restaurant> restaurant = rest.getAllRestaurant();
	    
      
		HttpSession sess = req.getSession();
		sess.setAttribute("restaurant", restaurant);
		

        RequestDispatcher rd = req.getRequestDispatcher("ResturentMangemtByAdmin.jsp");
        rd.forward(req, resp);
    }
}

