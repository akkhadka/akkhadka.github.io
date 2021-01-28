package io.github.akkhadka.controller;

import io.github.akkhadka.dao.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    private UserDao userDao;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var userName = req.getParameter("username");
        var password = req.getParameter("password");
        var user = userDao.getUser(userName);
        if(user!=null && user.getPassword().equals(password)){
            req.getSession().setAttribute("username",userName);
            resp.sendRedirect("/home");
        }
        req.setAttribute("error","Invalid Username or Password");
        RequestDispatcher rd=req.getRequestDispatcher("/login.jsp");
        rd.forward(req, resp);
    }

    @Override
    public void init() throws ServletException {
        userDao = new UserDao();
    }
}
