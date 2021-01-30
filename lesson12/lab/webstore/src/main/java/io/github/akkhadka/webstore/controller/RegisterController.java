package io.github.akkhadka.webstore.controller;

import io.github.akkhadka.webstore.controller.utility.PathVariable;
import io.github.akkhadka.webstore.model.User;
import io.github.akkhadka.webstore.service.UserService;
import io.github.akkhadka.webstore.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterController extends HttpServlet {
    private UserService userService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(PathVariable.registerPage)
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var userName = req.getParameter("username");
        var password = req.getParameter("password");
        var name = req.getParameter("name");
        var user = new User(userName,password,name);
        userService.signUp(user);
        resp.sendRedirect("/login");

    }

    @Override
    public void init() throws ServletException {
        userService = new UserServiceImpl();
    }
}

