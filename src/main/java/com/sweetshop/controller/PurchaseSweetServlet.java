package com.sweetshop.controller;

import com.sweetshop.service.SweetService;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/purchaseSweet")
public class PurchaseSweetServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PrintWriter out=response.getWriter();
            int id = Integer.parseInt(request.getParameter("id"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
             
  
            boolean success = SweetService.getInstance().purchaseSweet(id, quantity);

            if (success) {
                response.sendRedirect("viewSweets");
            } else {
                response.getWriter().println("Not enough stock or invalid sweet ID.");
            }
        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

    // Optional: if someone accesses via GET directly
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);  // Redirect to doPost or handle properly
    }
}
