package com.edureka.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloWorldServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        request.setAttribute("userdetails", "Request details");
        request.getSession().setAttribute("sessionAttribute", username);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        System.out.println("Username is "+username + " and password is "+password);
        PrintWriter writer = response.getWriter();

        writer.write("<h1>");
        writer.write("Hi, welcome "+username);
        writer.write(". This time we are using POST method</h1>");

    }
}