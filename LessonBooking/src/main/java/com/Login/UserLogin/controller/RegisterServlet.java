package com.Login.UserLogin.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Login.UserLogin.dao.UserDAO;
import com.Login.UserLogin.model.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserDAO userDAO;

    @Override
	public void init() {
        userDAO = new UserDAO();
    }


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");

        if (!password.equals(confirmPassword)) {
            request.setAttribute("error", "Passwords do not match");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        User newUser = new User(name, password);

        try {
            if (userDAO.insertUser(newUser)) {
            	request.setAttribute("message", "Successfully registered! You can now log in.");

            } else {
                request.setAttribute("error", "Registration failed");

            }
        } catch (SQLException e) {
            request.setAttribute("error", "An SQL error occurred during registration: " + e.getMessage());
            e.printStackTrace(); // This will print the stack trace to the server logs
        } catch (ClassNotFoundException e) {
            request.setAttribute("error", "Database driver class not found: " + e.getMessage());
            e.printStackTrace();
        } catch (Exception e) {
            request.setAttribute("error", "An unexpected error occurred during registration: " + e.getMessage());
            e.printStackTrace();
        }

        request.getRequestDispatcher("register.jsp").forward(request, response);

	}

}
