package com.Login.UserLogin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.UserLogin.dao.UserDAO;
import com.Login.UserLogin.model.User;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    UserDAO userDAO;

    @Override
	public void init() {
        userDAO = new UserDAO();
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String n = request.getParameter("name");
        String p = request.getParameter("password");
        User user = new User();

        user.setUsername(n);
        user.setPassword(p);

        try {
            if(userDAO.validateUser(user)) {
                request.setAttribute("welcome", user);
                request.getRequestDispatcher("/homePage.jsp").forward(request, response);
            } else {
                out.println("<html><body>");
                out.println("<h2>Invalid username or password</h2>");
                out.println("<a href='UserLogin.jsp'>Try again</a>");
                out.println("</body></html>");
            }
        } catch (Exception e) {
            out.println("<html><body>");
            out.println("<h2>An error occurred: " + e.getMessage() + "</h2>");
            out.println("<a href='UserLogin.jsp'>Try again</a>");
            out.println("</body></html>");
            e.printStackTrace();
        } finally {
            out.close();
        }
    }
}