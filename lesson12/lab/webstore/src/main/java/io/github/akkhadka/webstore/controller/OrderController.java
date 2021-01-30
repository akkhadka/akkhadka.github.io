package io.github.akkhadka.webstore.controller;

import io.github.akkhadka.webstore.controller.utility.PathVariable;
import io.github.akkhadka.webstore.model.Cart;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher(PathVariable.checkoutPage)
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getSession(false).setAttribute("shippedto",req.getParameter("name"));

        resp.sendRedirect("/orderplaced");

    }
}
