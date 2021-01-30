package io.github.akkhadka.webstore.controller;

import io.github.akkhadka.webstore.controller.utility.PathVariable;
import io.github.akkhadka.webstore.model.Cart;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ThankyouController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var cart = (Cart) req.getSession(false).getAttribute("cart");
        var shippedTo = (String) req.getSession(false).getAttribute("shippedto");
        req.setAttribute("order",cart);
        req.setAttribute("shippedto",shippedTo);
        req.getSession(false).setAttribute("cart", new Cart());
        req.getRequestDispatcher(PathVariable.orderPlacedPage)
                .forward(req,resp);
    }
}
