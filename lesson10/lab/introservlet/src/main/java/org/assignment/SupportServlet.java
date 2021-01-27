package org.assignment;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

public class SupportServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher dispatcher = req.getRequestDispatcher(
                "/support.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    ServletConfig sc = this.getServletConfig();
    var supportEmail = sc.getInitParameter("support_email");
    var supportTicket = UUID.randomUUID().toString();
     req.setAttribute("support_email", supportEmail);
        req.setAttribute("support_ticket", supportTicket);
        req.setAttribute("name", req.getParameter("name"));
        req.setAttribute("email", req.getParameter("email"));
        RequestDispatcher rd=req.getRequestDispatcher("/thankyou.jsp");
        rd.forward(req, resp);

    }
}
