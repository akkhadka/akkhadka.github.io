package io.github.akkhadka.webstore.controller.filters;


import io.github.akkhadka.webstore.model.Cart;
import io.github.akkhadka.webstore.model.viewmodels.UserViewModel;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class AuthenticationFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
//       var user =(UserViewModel) in.getSession().getAttribute("user");
//       if(user!=null && !user.isTemp()){
//           chain.doFilter(request,response);
//
//       }else{
//           HttpServletResponse out = (HttpServletResponse) response;
//           //send with return url
//           out.sendRedirect("/login");
//       }


        chain.doFilter(request,response);
    }
}
