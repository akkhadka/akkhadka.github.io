package io.github.akkhadka.webstore.controller.filters;

import io.github.akkhadka.webstore.model.Cart;
import io.github.akkhadka.webstore.model.viewmodels.UserViewModel;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.UUID;

public class TempSession implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session =req.getSession();
        if(session!=null && session.getAttribute("cart")==null){
            var cart = (Cart) session.getAttribute("cart");
            cart = new Cart();
            session.setAttribute("cart",cart);
        }
        chain.doFilter(request,response);
    }
}
