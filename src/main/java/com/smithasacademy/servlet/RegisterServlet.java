package com.smithasacademy.servlet;

import com.smithasacademy.util.MailService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * RegisterServlet - Handles the full student registration logic.
 * Sends detailed email notifications to the admin email.
 */
@WebServlet("/register-student")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // Personal details
        String firstName = sanitize(request.getParameter("firstName"));
        String lastName  = sanitize(request.getParameter("lastName"));
        String email     = sanitize(request.getParameter("email"));
        String gender    = sanitize(request.getParameter("gender"));
        
        String phone     = sanitize(request.getParameter("phone"));
        String whatsapp  = sanitize(request.getParameter("whatsapp"));
        String profession= sanitize(request.getParameter("profession"));
        String city      = sanitize(request.getParameter("city"));

        // Course selection
        String course        = sanitize(request.getParameter("courseName"));
        String batchPref     = sanitize(request.getParameter("batchPref"));
        String referralSource= sanitize(request.getParameter("referralSource"));

        // Server-side validation
        if (firstName == null || email == null || phone == null || course == null) {
            request.setAttribute("errorMsg", "Please fill all required fields correctly and try again.");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

        String fullName = firstName + " " + (lastName != null ? lastName : "");

        // TODO: Persist to database
        // StudentRegistrationDao dao = new StudentRegistrationDao();
        // dao.register(fullName, email, phone, course, batchPref, city);

        // Send email notification to the academy
        MailService.sendRegistrationEmail(fullName, email, phone, course, batchPref, city);

        System.out.println("[REGISTRATION]: Student " + fullName + " registered for " + course);

        // Redirect back with success message
        request.setAttribute("successMsg", "Registration Successful!");
        request.setAttribute("successSub", "Thank you, " + fullName + ". Your registration for " + course + " is received.");
        request.setAttribute("contactNote", "We will contact you at " + phone + " within 24 hours to confirm your batch.");
        
        request.getRequestDispatcher("/register.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/register.jsp");
    }

    /**
     * Sanitizes input to trim and strip common HTML characters.
     */
    private String sanitize(String input) {
        if (input == null) return null;
        String val = input.trim();
        if (val.isEmpty()) return null;
        return val.replaceAll("<[^>]*>", "");
    }
}