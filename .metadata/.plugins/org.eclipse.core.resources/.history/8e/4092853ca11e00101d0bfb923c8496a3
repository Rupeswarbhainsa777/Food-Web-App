package com.tap.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.List;

import com.tap.DaoImple.MenuImp;
import com.tap.modeal.*;

@WebServlet("/Menu")
public class Menue extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int resturentId = Integer.parseInt(req.getParameter("resturentId"));

		MenuImp imp = new MenuImp();

		List<Menu> menuImp = imp.getAllMenuByRestarent(resturentId);
            req.setAttribute("menu", menuImp);
            for(Menu m : menuImp)
            {
            	System.out.println(m.getItemName());
            }
            
//          RequestDispatcher rd=  req.getRequestDispatcher("menu.js");
//          rd.forward(req, resp);
	}

}
