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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        SweetService.getInstance().deleteSweet(id);
        response.sendRedirect("viewSweets");
    }
}
