
package com.smithasacademy.util;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

/**
 * SEND EMAIL NOTIFICATIONS VIA EMAIL SMTP.
 * * Required:
 * 1. Gmail address (set in Railway dashboard)
 * 2. App Password (set in Railway dashboard)
 * 3. MAIL_FROM (email to send from)
 * 4. MAIL_TO (admin email to receive notifications)
 * * How to create a Gmail App Password:
 * 1. Enable 2-step verification on the Gmail address.
 * 2. Go to MyAccount -> Security -> App Passwords.
 * 3. Generate a password for "Mail" and "Windows Computer".
 * 4. Paste the 16-character code in your environment variables.
 */

public class MailService {

    // private static final String HOST = "smtp.gmail.com";
    private static final String PORT = "587";

    // Read from Railway ENV vars
    private static final String MAIL_FROM = System.getenv("MAIL_FROM");
    private static final String MAIL_PASS = System.getenv("MAIL_PASS");
    private static final String MAIL_TO = System.getenv("MAIL_TO") != null ? System.getenv("MAIL_TO") : "ashbinantigravity@gmail.com";

    // Read SMTP settings (default to Gmail if not set)
    private static final String SMTP_HOST = System.getenv("SMTP_HOST") != null ? System.getenv("SMTP_HOST") : "smtp.gmail.com";
    private static final String SMTP_PORT = System.getenv("SMTP_PORT") != null ? System.getenv("SMTP_PORT") : "587";

    /**
     * Sends an enquiry notification email to the academy.
     */
    public static void sendEnquiryEmail(String fullName, String email, String phone, String course, String message) {

        if (!isConfigured()) {
            System.out.println("[MAILSERVICE]: Warning! MAIL_FROM and MAIL_PASS env vars are not set. Cannot send physical email to " + MAIL_TO + " for enquiry from: " + fullName);
            return;
        }

        String subject = "[SMITHAS ACADEMY] New Enquiry from: " + fullName + " - " + course;
        String body = "You have received an enquiry on Smitha's Academy Website:\n\n" +
                      "* Name     : " + fullName + "\n" +
                      "* Phone    : " + phone + "\n" +
                      "* Email    : " + email + "\n" +
                      "* Course   : " + course + "\n" +
                      "* Message  : " + message + "\n\n" +
                      "--------------------------------------------------\n" +
                      "Please follow up within 24 hours.\n";

        send(subject, body);
    }

    /**
     * Sends a registration notification email to the academy.
     */
    public static void sendRegistrationEmail(String fullName, String email, String phone, String course, String batchPref, String city) {

        if (!isConfigured()) {
            System.out.println("[MAILSERVICE]: Warning! MAIL_FROM and MAIL_PASS env vars are not set. Cannot send physical email to " + MAIL_TO + " for registration of: " + fullName);
            return;
        }

        String subject = "[SMITHAS ACADEMY] New Registration: " + fullName + " - " + course;
        String body = "New student registration received on Smitha's Academy Website:\n\n" +
                      "* Name       : " + fullName + "\n" +
                      "* Phone      : " + phone + "\n" +
                      "* Email      : " + email + "\n" +
                      "* Course     : " + course + "\n" +
                      "* Batch Pref : " + batchPref + "\n" +
                      "* City       : " + city + "\n\n" +
                      "--------------------------------------------------\n" +
                      "Please process the registration and confirm the batch.\n";

        send(subject, body);
    }

    // --- private helpers ---

    private static void send(String subject, String body) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", SMTP_HOST);
        props.put("mail.smtp.port", SMTP_PORT);
        props.put("mail.smtp.ssl.trust", SMTP_HOST);

        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(MAIL_FROM, MAIL_PASS);
            }
        });

        try {
            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(MAIL_FROM, "Smitha's Academy Website"));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(MAIL_TO));
            msg.setSubject(subject);
            msg.setText(body);

            Transport.send(msg);
            System.out.println("[MailService] Email sent: " + subject);
        } catch (Exception e) {
            // Log error but don't crash the server - user still gets success page
            System.err.println("[MailService] Failed to send email: " + e.getMessage());
        }
    }

    private static boolean isConfigured() {
        return (MAIL_FROM != null && !MAIL_FROM.isEmpty() &&
                MAIL_PASS != null && !MAIL_PASS.isEmpty() &&
                MAIL_TO != null && !MAIL_TO.isEmpty());
    }

    private static String status(String s) {
        return (s == null || s.isEmpty()) ? "(not provided)" : s;
    }
}