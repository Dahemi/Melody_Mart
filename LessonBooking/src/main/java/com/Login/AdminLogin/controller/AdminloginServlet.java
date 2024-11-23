package com.Login.AdminLogin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.AdminLogin.dao.AdminDAO;
import com.Login.AdminLogin.model.User;

@WebServlet("/AdminloginServlet")
public class AdminloginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private AdminDAO adminDAO;

    @Override
	public void init() {
        adminDAO = new AdminDAO();
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("name");
        String password = request.getParameter("password");
        User user = new User();

        user.setUsername(username);
        user.setPassword(password);

        try {
            if (adminDAO.validateUser(user)) {
                request.setAttribute("welcome", user);
                request.getRequestDispatcher("/AdminDashBoard.jsp").forward(request, response);
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
