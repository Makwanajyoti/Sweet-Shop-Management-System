package com.sweetshop.controller;
import com.sweetshop.model.Sweet;
import com.sweetshop.service.SweetService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

//@WebServlet("/searchSweet")
public class SearchSweetServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchType = request.getParameter("searchType");
        SweetService service = SweetService.getInstance();
        List<Sweet> results = null;

        switch (searchType) {
            case "name":
                String name = request.getParameter("name");
                results = service.searchByName(name);
                break;
            case "category":
                String category = request.getParameter("category");
                results = service.searchByCategory(category);
                break;
            case "range":
                int minPrice = Integer.parseInt(request.getParameter("minPrice"));
                int maxPrice = Integer.parseInt(request.getParameter("maxPrice"));
                results = service.searchByPriceRange(minPrice, maxPrice);
                break;
        }

        request.setAttribute("searchResults", results);
        request.getRequestDispatcher("searchResults.jsp").forward(request, response);
    }
}
