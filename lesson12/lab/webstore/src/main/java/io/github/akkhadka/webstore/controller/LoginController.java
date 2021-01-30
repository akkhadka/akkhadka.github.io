package io.github.akkhadka.webstore.controller;


import io.github.akkhadka.webstore.controller.utility.PathVariable;
import io.github.akkhadka.webstore.service.UserService;
import io.github.akkhadka.webstore.service.UserServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginController extends HttpServlet {
    private UserService userService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        for(Cookie cookie: req.getCookies()){
            if(cookie.getName().equals("remember")){
                req.setAttribute("remember",cookie.getValue());
            }
        }
        if(req.getSession(false).getAttribute("username")!=null)
        {
            resp.sendRedirect("/");
        }else{
            RequestDispatcher dispatcher = req.getRequestDispatcher(PathVariable.loginPage);
            req.setAttribute("error",req.getSession().getAttribute("error"));
            req.getSession().removeAttribute("error");
            dispatcher.forward(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var userName = req.getParameter("username");
        var password = req.getParameter("password");
        for(Cookie cookie: req.getCookies()){
            if(cookie.getName().equals("remember")){
                cookie.setMaxAge(0);
                resp.addCookie(cookie);
            }
        }
        var user = userService.find(userName);
        if(user!=null && user.getPassword().equals(password)){
            req.getSession().setAttribute("username",userName);
            if(req.getParameter("remember")!=null){
                Cookie remember = new Cookie("remember",userName);
                remember.setMaxAge(3600 * 24 *30);
                resp.addCookie(remember);
            }
            Cookie promo = new Cookie("promo","100");
            promo.setMaxAge(3600 * 24 *30);
            resp.addCookie(promo);
            String redirectUrl = "/";
            var returnUrl = req.getSession(false).getAttribute("returnurl");
            if(returnUrl!=null){
                redirectUrl =(String) returnUrl;
                req.getSession(false).removeAttribute("returnurl");
            }
            resp.sendRedirect(redirectUrl);
        }else{
            req.getSession().setAttribute("error","Invalid Username or Password");
            resp.sendRedirect("/login");
        }

    }

    @Override
    public void init() throws ServletException {
        userService = new UserServiceImpl();
    }
}
