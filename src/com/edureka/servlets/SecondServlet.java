package com.edureka.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SecondServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sessionAttribute = (String) req.getSession().getAttribute("sessionAttribute");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("session.jsp");
        requestDispatcher.forward(req, resp);
    }
}