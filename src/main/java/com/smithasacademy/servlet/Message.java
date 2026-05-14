package com.smithasacademy.servlet;

/**
 * Message Model - Represents a contact form submission
 */
public class Message {
    private String name;
    private String email;
    private String phone;
    private String course;
    private String message;
    private long timestamp;
    
    // Constructors
    public Message() {
        this.timestamp = System.currentTimeMillis();
    }
    
    public Message(String name, String email, String phone, String course, String message) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.course = course;
        this.message = message;
        this.timestamp = System.currentTimeMillis();
    }
    
    // Getters and Setters
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPhone() {
        return phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public String getCourse() {
        return course;
    }
    
    public void setCourse(String course) {
        this.course = course;
    }
    
    public String getMessage() {
        return message;
    }
    
    public void setMessage(String message) {
        this.message = message;
    }
    
    public long getTimestamp() {
        return timestamp;
    }
    
    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }
    
    // Validation
    public boolean isValid() {
        return name != null && !name.isEmpty() &&
               email != null && !email.isEmpty() &&
               phone != null && !phone.isEmpty() &&
               course != null && !course.isEmpty() &&
               message != null && !message.isEmpty();
    }
    
    @Override
    public String toString() {
        return "Message{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", course='" + course + '\'' +
                ", message='" + message + '\'' +
                ", timestamp=" + timestamp +
                '}';
    }
}
