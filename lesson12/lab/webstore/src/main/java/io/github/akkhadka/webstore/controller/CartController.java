package io.github.akkhadka.webstore.controller;

import io.github.akkhadka.webstore.controller.utility.PathVariable;
import io.github.akkhadka.webstore.model.Cart;
import io.github.akkhadka.webstore.model.CartService;
import io.github.akkhadka.webstore.service.ProductService;
import io.github.akkhadka.webstore.service.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CartController extends HttpServlet {
    private ProductService productService;
    private CartService cartService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(PathVariable.cartPage)
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var productId = Integer.parseInt(req.getParameter("productId"));
        var product  = productService.getProducts().stream().filter(x->x.getProductId()==productId).findFirst().orElse(null);
        if(product!=null){
            var cart = (Cart) req.getSession(false).getAttribute("cart");
            if(cart==null){
               //var user = req.getSession().getAttribute("user");
                cart = new Cart();
            }
            cart.addItem(product,1);
        }
        resp.sendRedirect("/cart");

    }
    @Override
    public void init() throws ServletException {
        productService = new ProductServiceImpl();
    }
}
