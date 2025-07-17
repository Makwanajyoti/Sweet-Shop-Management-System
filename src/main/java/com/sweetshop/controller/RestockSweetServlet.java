package com.sweetshop.controller;

import com.sweetshop.service.SweetService;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/restockSweet")
public class RestockSweetServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            if (quantity <= 0) {
                response.getWriter().println("Invalid quantity to restock!");
                return;
            }

            boolean success = SweetService.getInstance().restockSweet(id, quantity);

            if (success) {
                response.sendRedirect("viewSweets");
            } else {
                response.getWriter().println("Failed to restock sweet. Sweet ID may be invalid.");
            }

        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response); // handle both GET and POST
    }
}
