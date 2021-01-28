package io.github.akkhadka.controller;

import io.github.akkhadka.dao.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HomeServlet extends HttpServlet {
    private UserDao userDao;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");

        for(Cookie cookie: req.getCookies()){
            if(cookie.getName().equals("promo")){
                req.setAttribute("promo",cookie.getValue());
            }
        }
        var username = req.getSession().getAttribute("username");
        if(username!=null){
            var user = userDao.getUser(username.toString());
            req.setAttribute("name",user.getName());
        }

        dispatcher.forward(req,resp);
    }
    @Override
    public void init() throws ServletException {
        userDao = new UserDao();
    }
}
