package io.github.akkhadka.controller.filters;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public class AuthenticationFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest in = (HttpServletRequest) request;
        List<String> loginUrls = new ArrayList<>();
        loginUrls.add("/");
        loginUrls.add("/login");
       if(in.getSession().getAttribute("username")!=null || loginUrls.contains(in.getRequestURI())){
           chain.doFilter(request,response);

       }else{
           HttpServletResponse out = (HttpServletResponse) response;
           out.sendRedirect("/login");
       }
    }
}
