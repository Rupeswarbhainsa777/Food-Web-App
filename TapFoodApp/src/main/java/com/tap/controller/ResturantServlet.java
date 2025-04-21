package com.tap.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.util.ArrayList;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.tap.DaoImple.RestaurantImp;
import com.tap.modeal.Restaurant;


@WebServlet("/ResturantServlet")
public class ResturantServlet extends HttpServlet 
{
	
	

	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    RestaurantImp rest = new RestaurantImp();
	    ArrayList<Restaurant> restaurant = rest.getAllRestaurant();
//          for(Restaurant res: restaurant)
//          {
//        	  System.out.println(res.getAddress());
//        	  
//          }
	   
	    req.setAttribute("restaurant", restaurant); 
	    RequestDispatcher rd = req.getRequestDispatcher("resturent.jsp");
	    rd.forward(req, resp);
	
	}
	

}
