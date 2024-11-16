package com.servlet;

import java.io.IOException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.entity.NewReg;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Static SessionFactory to avoid repeated creation
    private static final SessionFactory sessionFactory;

    static {
        Configuration configuration = new Configuration();
        configuration.configure("hibernate.cfg.xml");
        sessionFactory = configuration.buildSessionFactory();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve email and password from request parameters
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Open Hibernate session and begin transaction
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();

        // Query to check if email and password match a record in NewReg table
        Query<NewReg> query = session.createQuery(
                "FROM NewReg WHERE email = :email AND password = :password", NewReg.class);
        query.setParameter("email", email);
        query.setParameter("password", password);

        List<NewReg> resultList = query.list();

        transaction.commit();
        session.close();

        if (!resultList.isEmpty()) {
            // If valid user found, store user object in session and redirect to profile page
            NewReg user = resultList.get(0);
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("newReg", user);

            RequestDispatcher dispatcher = request.getRequestDispatcher("welcome.jsp");
            dispatcher.forward(request, response);
        } else {
            // If invalid credentials, redirect back to login page with an error
            request.setAttribute("errorMessage", "Invalid email or password.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    public void destroy() {
        // Close the SessionFactory when application shuts down
        if (sessionFactory != null) {
            sessionFactory.close();
        }
    }
}
