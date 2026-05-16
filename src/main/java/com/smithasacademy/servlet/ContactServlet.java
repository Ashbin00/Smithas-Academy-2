package com.smithasacademy.servlet;

import com.smithasacademy.util.MailService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/contact-submit")
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = sanitize(request.getParameter("name"));
        String phone = sanitize(request.getParameter("phone"));
        String email = sanitize(request.getParameter("email"));
        String course = sanitize(request.getParameter("course"));
        String batch = sanitize(request.getParameter("batch"));
        String qualification = sanitize(request.getParameter("qualification"));
        String message = sanitize(request.getParameter("message"));

        if (name == null || phone == null || course == null) {
            request.setAttribute("errorMsg", "Please fill all required fields correctly and try again.");
            request.getRequestDispatcher("/contact.jsp").forward(request, response);
            return;
        }

        String fullMessage = "Batch Preference: " + (batch != null ? batch : "N/A") + "\n" +
                             "Qualification: " + (qualification != null ? qualification : "N/A") + "\n" +
                             "Message: " + (message != null ? message : "N/A");

        System.out.println("[CONTACT]: Enquiry from " + name + " for " + course);

        MailService.sendEnquiryEmail(name, email, phone, course, fullMessage);

        request.setAttribute("successMsg", "Enquiry Sent successfully!");
        request.setAttribute("successSub", "Thank you, " + name + ". Our team will contact you shortly.");
        
        request.getRequestDispatcher("/contact.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/contact.jsp");
    }

    private String sanitize(String input) {
        if (input == null) return null;
        String val = input.trim();
        if (val.isEmpty()) return null;
        return val.replaceAll("<[^>]*>", "");
    }
}
