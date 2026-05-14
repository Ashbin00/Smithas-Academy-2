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
        
        String phone     = sanitize(request.getParameter("mobile"));
        String whatsapp  = sanitize(request.getParameter("whatsapp"));
        String profession= sanitize(request.getParameter("profession"));
        String city      = sanitize(request.getParameter("city"));

        // Course selection
        String course        = sanitize(request.getParameter("course"));
        String batchPref     = sanitize(request.getParameter("batchPref"));
        String referralSource= sanitize(request.getParameter("referralSource"));

        // Server-side validation
        if (firstName == null || email == null || phone == null || course == null) {
            request.setAttribute("errorMsg", "Please fill all required fields correctly and try again.");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

        String fullName = firstName + " " + (lastName != null ? lastName : "");

        // Google Sheets Integration
        sendToGoogleSheets(firstName, lastName, email, phone, course, city);

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

    private void sendToGoogleSheets(String firstName, String lastName, String email, String phone, String course, String city) {
        // IMPORTANT: Replace this URL with the Google Apps Script Web App URL you generate
        String scriptUrl = "https://script.google.com/macros/s/YOUR_SCRIPT_ID/exec"; 
        
        if (scriptUrl.contains("YOUR_SCRIPT_ID")) {
            System.out.println("[WARNING] Google Sheets URL not configured. Data not saved to sheet.");
            return;
        }

        try {
            java.net.URL url = new java.net.URL(scriptUrl);
            java.net.HttpURLConnection conn = (java.net.HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);
            conn.setRequestProperty("Content-Type", "application/json");

            String jsonPayload = String.format(
                "{\"firstName\":\"%s\", \"lastName\":\"%s\", \"email\":\"%s\", \"phone\":\"%s\", \"course\":\"%s\", \"city\":\"%s\"}",
                escapeJson(firstName), escapeJson(lastName), escapeJson(email), escapeJson(phone), escapeJson(course), escapeJson(city)
            );

            try (java.io.OutputStream os = conn.getOutputStream()) {
                byte[] input = jsonPayload.getBytes("utf-8");
                os.write(input, 0, input.length);
            }
            int responseCode = conn.getResponseCode();
            System.out.println("[Google Sheets] Data sent. Response code: " + responseCode);
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Failed to send data to Google Sheets.");
        }
    }

    private String escapeJson(String data) {
        if (data == null) return "";
        return data.replace("\"", "\\\"").replace("\n", " ").replace("\r", "");
    }
}