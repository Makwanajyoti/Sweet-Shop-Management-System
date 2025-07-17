package com.sweetshop.controller;


import com.sweetshop.service.SweetService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/viewSweets")
public class ViewSweetsServlet extends HttpServlet {
    SweetService service = SweetService.getInstance();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("sweets", service.getAllSweets());
        request.getRequestDispatcher("viewSweets.jsp").forward(request, response);
    }
}
