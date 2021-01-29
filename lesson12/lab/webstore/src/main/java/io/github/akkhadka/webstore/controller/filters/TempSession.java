package io.github.akkhadka.webstore.controller.filters;

import io.github.akkhadka.webstore.model.Cart;
import io.github.akkhadka.webstore.model.viewmodels.UserViewModel;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;

public class TempSession implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
//        if(req.getSession().getAttribute("user")!=null){
//            chain.doFilter(request,response);
//
//        }else{
//            var userName = UUID.randomUUID().toString();
//            var user = new UserViewModel("",userName,"");
//            user.setTemp(true);
//            req.getSession().setAttribute("user",user);
//        }
        if(req.getSession().getAttribute("cart")==null){
            var cart = (Cart) req.getSession().getAttribute("cart");
            cart = new Cart();
            req.getSession().setAttribute("cart",cart);
        }
        chain.doFilter(request,response);
    }
}
