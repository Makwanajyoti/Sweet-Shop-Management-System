package com.sweetshop.controller;

import com.sweetshop.service.SweetService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/deleteSweet")
public class DeleteSweetServlet extends HttpServlet {

    private  SweetService sweetService = SweetService.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int sweetId = Integer.parseInt(request.getParameter("id"));
            sweetService.deleteSweet(sweetId);
        } catch (Exception e) {
            e.printStackTrace(); // You can log this or show error page
        }

        response.sendRedirect("viewSweets"); // Redirect back to sweet list
    }
}
