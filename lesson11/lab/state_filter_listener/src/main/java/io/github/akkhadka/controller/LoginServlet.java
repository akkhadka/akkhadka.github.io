package io.github.akkhadka.controller;

import io.github.akkhadka.dao.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    private UserDao userDao;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        for(Cookie cookie: req.getCookies()){
            if(cookie.getName().equals("remember")){
                req.setAttribute("remember",cookie.getValue());
            }
        }
        if(req.getSession().getAttribute("username")!=null)
        {
            resp.sendRedirect("/home");
        }else{
            RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
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
        var user = userDao.getUser(userName);
        if(user!=null && user.getPassword().equals(password)){
            req.getSession().setAttribute("username",userName);
            req.getSession().removeAttribute("error");

            if(req.getParameter("remember")!=null){
                Cookie remember = new Cookie("remember",userName);
                remember.setMaxAge(3600 * 24 *30);
                resp.addCookie(remember);
            }
            Cookie promo = new Cookie("promo","100");
            promo.setMaxAge(3600 * 24 *30);
            resp.addCookie(promo);
            resp.sendRedirect("/home");
        }else{
            req.getSession().setAttribute("error","Invalid Username or Password");
            resp.sendRedirect("/login");
        }

    }

    @Override
    public void init() throws ServletException {
        userDao = new UserDao();
    }
}
