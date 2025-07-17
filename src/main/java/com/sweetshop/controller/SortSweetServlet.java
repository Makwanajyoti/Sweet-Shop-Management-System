package com.sweetshop.controller;

import com.sweetshop.model.Sweet;
import com.sweetshop.service.SweetService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class SortSweetServlet extends HttpServlet {
private SweetService service = SweetService.getInstance();
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sortBy = request.getParameter("sortBy");

        List<Sweet> sortedSweets = service.sortSweetsBy(sortBy);

        request.setAttribute("sortedSweets", sortedSweets);
        RequestDispatcher dispatcher = request.getRequestDispatcher("sortSweets.jsp");
        dispatcher.forward(request, response);
    }
}
