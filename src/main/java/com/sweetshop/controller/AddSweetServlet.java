package com.sweetshop.controller;

import com.sweetshop.model.Sweet;
import com.sweetshop.service.SweetService;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

//@WebServlet("/addSweet")
public class AddSweetServlet extends HttpServlet {
   SweetService service = SweetService.getInstance();


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        int price = Integer.parseInt(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Sweet sweet = new Sweet(id, name, category, price, quantity);
        service.addSweet(sweet);

        request.setAttribute("sweets", service.getAllSweets());
        request.getRequestDispatcher("viewSweets.jsp").forward(request, response);
    }
}
