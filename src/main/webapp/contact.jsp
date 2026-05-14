<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description"
            content="Contact Smitha's Academy - Located in Pampady, Kottayam, Kerala. Call us for free counselling on IELTS, OET, German, NCLEX-RN coaching.">
        <title>Contact Us | Smitha's Academy | Pampady, Kottayam</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>

        <!-- Top Bar -->
        <div class="top-bar py-2">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-8 d-flex flex-wrap gap-3">
                        <a href="tel:+918921386389" class="text-white text-decoration-none">
                            <i class="fas fa-phone-alt me-1"></i> +91 8921 386 389
                        </a>
                        <a href="mailto:smithasacademy2k25@gmail.com" class="text-white text-decoration-none">
                            <i class="fas fa-envelope me-1"></i> smithasacademy2k25@gmail.com
                        </a>
                        <span class="text-white">
                            <i class="fas fa-map-marker-alt me-1"></i> Pampady, Kottayam, Kerala
                        </span>
                    </div>
                    <div class="col-md-4 text-end d-flex justify-content-end gap-3">
                        <a href="#" title="Facebook"><i class="fab fa-facebook-f text-white"></i></a>
                        <a href="#" title="Instagram"><i class="fab fa-instagram text-white"></i></a>
                        <a href="#" title="YouTube"><i class="fab fa-youtube text-white"></i></a>
                        <a href="https://wa.me/918921386389" title="WhatsApp" target="_blank"><i
                                class="fab fa-whatsapp text-white"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light sticky-top shadow-sm" id="mainNav">
            <div class="container">
                <a class="navbar-brand d-flex align-items-center gap-2" href="index.jsp">
                    <div class="brand-icon"><i class="fas fa-graduation-cap"></i></div>
                    <div>
                        <div class="brand-name">Smitha's Academy</div>
                        <div class="brand-slogan">Excellence in Language Training&reg;</div>
                    </div>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navMenu">
                    <ul class="navbar-nav ms-auto align-items-lg-center gap-1">
                        <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.jsp#about">About Us</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="courseDropdown"
                                data-bs-toggle="dropdown">Courses</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="courses.jsp#ielts">IELTS &amp; PTE</a></li>
                                <li><a class="dropdown-item" href="courses.jsp#oet">OET</a></li>
                                <li><a class="dropdown-item" href="courses.jsp#german">German &amp; HAAD</a></li>
                                <li><a class="dropdown-item" href="courses.jsp#nclex">NCLEX-RN</a></li>
                                <li><a class="dropdown-item" href="courses.jsp#prometric">PROMETRIC &amp; DHA</a></li>
                                <li><a class="dropdown-item" href="courses.jsp#cbt">CBT / FRENCH / MOH</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="index.jsp#batches">Batches</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.jsp#testimonials">Success Stories</a></li>
                        <li class="nav-item"><a class="nav-link active" href="contact.jsp">Contact</a></li>
                        <li class="nav-item">
                            <a class="btn btn-enroll ms-lg-2" href="register.jsp">
                                <i class="fas fa-user-plus me-1"></i> Enroll Now
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Header -->
        <div class="page-header text-center">
            <div class="container">
                <span class="section-badge-light mb-3 d-inline-block">Get In Touch</span>
                <h1 class="display-5 fw-bold text-white">Contact Us</h1>
                <p class="lead text-white-50">Reach out for free counselling &mdash; we're happy to guide you.</p>
            </div>
        </div>

        <!-- Quick Enquiry Form Section -->
        <section class="section-padding bg-white" id="enquiry">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="enquiry-card">
                            <div class="section-header text-center mb-4">
                                <span class="section-badge">Quick Enquiry</span>
                                <h2 class="section-title mt-2">Get in Touch With Us</h2>
                                <p class="text-muted">Fill in your details &mdash; our counsellors will call you within
                                    24 hours</p>
                            </div>
                            <form action="contact-submit" method="post" class="needs-validation" novalidate>
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="form-label">Full Name <span class="text-danger">*</span></label>
                                        <input type="text" name="name" class="form-control" placeholder="Your full name"
                                            required>
                                        <div class="invalid-feedback">Please enter your name.</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Mobile Number <span
                                                class="text-danger">*</span></label>
                                        <input type="tel" name="phone" class="form-control"
                                            placeholder="+91 XXXXX XXXXX" pattern="[6-9][0-9]{9}" maxlength="10"
                                            required>
                                        <div class="invalid-feedback">Please enter a valid 10-digit mobile number.</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Email Address</label>
                                        <input type="email" name="email" class="form-control"
                                            placeholder="your@email.com">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Interested Course <span
                                                class="text-danger">*</span></label>
                                        <select class="form-select" name="course" required>
                                            <option value="">-- Select Course --</option>
                                            <option value="IELTS Academic">IELTS Academic</option>
                                            <option value="IELTS General Training">IELTS General Training</option>
                                            <option value="OET">OET (Occupational English Test)</option>
                                            <option value="German A1">German A1 - Beginner</option>
                                            <option value="German A2">German A2 - Elementary</option>
                                            <option value="German B1">German B1 - Intermediate</option>
                                            <option value="German B2">German B2 - Upper Level</option>
                                            <option value="NCLEX-RN">NCLEX-RN</option>
                                            <option value="DHA">DHA / HAAD / MOH</option>
                                            <option value="PROMETRIC">PROMETRIC</option>
                                            <option value="CBT">CBT (NMC UK)</option>
                                            <option value="French">French Language</option>
                                        </select>
                                        <div class="invalid-feedback">Please select a course.</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Preferred Batch</label>
                                        <select class="form-select" name="batch">
                                            <option value="">-- Select Batch --</option>
                                            <option value="Morning">Morning Batch</option>
                                            <option value="Evening">Evening Batch</option>
                                            <option value="Weekend">Weekend Batch</option>
                                            <option value="Online">Online / Flexible</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Current Qualification</label>
                                        <select class="form-select" name="qualification">
                                            <option value="">-- Select --</option>
                                            <option value="10th">10th / SSLC</option>
                                            <option value="12th">12th / HSC</option>
                                            <option value="Diploma">Diploma</option>
                                            <option value="Graduate">Graduate</option>
                                            <option value="Nurse">GNM / B.Sc Nursing</option>
                                            <option value="Doctor">MBBS / MD</option>
                                        </select>
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label">Your Message (Optional)</label>
                                        <textarea name="message" class="form-control" rows="3"
                                            placeholder="Any specific questions or requirements?"></textarea>
                                    </div>
                                    <div class="col-12 text-center mt-3">
                                        <button type="submit" class="btn btn-primary btn-lg px-5">
                                            <i class="fas fa-paper-plane me-2"></i> Submit Enquiry
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Visit Our Academy Section -->
        <section class="section-padding bg-light" id="location">
            <div class="container">
                <div class="section-header text-center mb-5">
                    <span class="section-badge">Find Us</span>
                    <h2 class="section-title mt-2">Visit Our Academy</h2>
                    <p class="section-subtitle">We are located in Pampady, Kottayam, Kerala</p>
                </div>
                <div class="row align-items-stretch g-4">
                    <div class="col-lg-5">
                        <div class="contact-info-card h-100">
                            <h4 class="mb-4 fw-bold" style="color:#1a237e;">Contact Information</h4>
                            <div class="contact-info-item mb-4">
                                <div class="ci-icon"><i class="fas fa-map-marker-alt"></i></div>
                                <div>
                                    <strong class="d-block mb-1">Address</strong>
                                    SMITHA'S ACADEMY, Kochuvayalil Building,<br>
                                    Pampady, Kottayam &ndash; 686502,<br>
                                    Kerala, India
                                </div>
                            </div>
                            <div class="contact-info-item mb-4">
                                <div class="ci-icon green"><i class="fas fa-phone-alt"></i></div>
                                <div>
                                    <strong class="d-block mb-1">Phone / WhatsApp</strong>
                                    <a href="tel:+918921386889" class="text-decoration-none">8921386889</a><br>
                                    <a href="tel:+919074912975" class="text-decoration-none">9074912975</a>
                                </div>
                            </div>
                            <div class="contact-info-item mb-4">
                                <div class="ci-icon orange"><i class="fas fa-envelope"></i></div>
                                <div>
                                    <strong class="d-block mb-1">Email</strong>
                                    <a href="mailto:ashbingeo007@gmail.com"
                                        class="text-decoration-none">ashbingeo007@gmail.com</a><br>
                                    <a href="mailto:admissions@smithasacademy.com"
                                        class="text-decoration-none">admissions@smithasacademy.com</a>
                                </div>
                            </div>
                            <div class="contact-info-item mb-4">
                                <div class="ci-icon blue"><i class="fas fa-clock"></i></div>
                                <div>
                                    <strong class="d-block mb-1">Working Hours</strong>
                                    Monday &ndash; Saturday: 7:00 AM &ndash; 9:00 PM<br>
                                    Sunday: Closed
                                </div>
                            </div>
                            <div class="d-flex gap-3 mt-2">
                                <a href="https://wa.me/918921386889" class="btn btn-success" target="_blank">
                                    <i class="fab fa-whatsapp me-2"></i> WhatsApp Us
                                </a>
                                <a href="tel:+918921386889" class="btn btn-primary">
                                    <i class="fas fa-phone me-2"></i> Call Now
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="map-container h-100" style="min-height:420px;">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3934.331294241322!2d76.6346215!3d9.5662744!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b06297ce698d227%3A0xc48f435013063f1e!2sSmitha's%20Academy!5e0!3m2!1sen!2sin!4v1714561234567!5m2!1sen!2sin"
                                width="100%" height="100%" style="border:0; min-height:420px;" allowfullscreen=""
                                loading="lazy" referrerpolicy="no-referrer-when-downgrade"
                                title="Smitha's Academy - Pampady, Kottayam, Kerala">
                            </iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- FAQ Section -->
        <section class="section-padding bg-white">
            <div class="container">
                <div class="section-header text-center mb-5">
                    <span class="section-badge">FAQs</span>
                    <h2 class="section-title mt-2">Frequently Asked Questions</h2>
                    <p class="section-subtitle">Quick answers to common queries about our academy.</p>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-9">
                        <div class="accordion accordion-flush" id="faqAccordion">
                            <div class="accordion-item border mb-3 rounded-3 shadow-sm overflow-hidden">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed fw-semibold" type="button"
                                        data-bs-toggle="collapse" data-bs-target="#faq1">
                                        How do I enroll at Smitha's Academy?
                                    </button>
                                </h2>
                                <div id="faq1" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted">
                                        You can enroll online through our <a href="register.jsp"
                                            class="text-primary">Registration Form</a>, walk into our centre in Pampady,
                                        or call/WhatsApp us at +91 8921386889. Our counsellor will guide you through the
                                        enrollment process.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item border mb-3 rounded-3 shadow-sm overflow-hidden">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed fw-semibold" type="button"
                                        data-bs-toggle="collapse" data-bs-target="#faq2">
                                        Do you offer online classes?
                                    </button>
                                </h2>
                                <div id="faq2" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted">
                                        Yes! We offer live online classes via Zoom and Google Meet for all our courses —
                                        IELTS, OET, German, NCLEX-RN and more. You get the same quality of training as
                                        our offline batches.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item border mb-3 rounded-3 shadow-sm overflow-hidden">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed fw-semibold" type="button"
                                        data-bs-toggle="collapse" data-bs-target="#faq3">
                                        What is the fee structure?
                                    </button>
                                </h2>
                                <div id="faq3" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted">
                                        Our fee structure varies by course and duration. We offer affordable fees with
                                        flexible installment options. Please contact us directly or visit the academy
                                        for the current fee details.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item border mb-3 rounded-3 shadow-sm overflow-hidden">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed fw-semibold" type="button"
                                        data-bs-toggle="collapse" data-bs-target="#faq4">
                                        Is there a free demo class available?
                                    </button>
                                </h2>
                                <div id="faq4" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted">
                                        Yes! We offer free demo classes every Saturday for IELTS, OET, and German.
                                        Register through our website or contact us to book your slot.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item border rounded-3 shadow-sm overflow-hidden">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed fw-semibold" type="button"
                                        data-bs-toggle="collapse" data-bs-target="#faq5">
                                        What materials are provided during the course?
                                    </button>
                                </h2>
                                <div id="faq5" class="accordion-collapse collapse" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted">
                                        Students receive exclusive printed study materials, digital practice tests,
                                        recorded lectures, and access to a question bank. All materials are updated to
                                        the latest exam format.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="footer-section">
            <div class="footer-main">
                <div class="container">
                    <div class="row g-4">
                        <div class="col-lg-4 col-md-6">
                            <div class="footer-brand">
                                <div class="footer-brand-icon"><i class="fas fa-graduation-cap"></i></div>
                                <span class="text-white fw-bold fs-5">Smitha's Academy</span>
                            </div>
                            <p class="small" style="color:#94a3b8;">
                                Kottayam's premier language &amp; healthcare exam training institute offering expert
                                coaching for IELTS, OET, NCLEX-RN, DHA, HAAD, PTE, CBT, and German language.
                            </p>
                            <div class="footer-social-links">
                                <a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                                <a href="#" title="Instagram"><i class="fab fa-instagram"></i></a>
                                <a href="#" title="YouTube"><i class="fab fa-youtube"></i></a>
                                <a href="https://wa.me/918921386889" title="WhatsApp" target="_blank"><i
                                        class="fab fa-whatsapp"></i></a>
                                <a href="#" title="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-6">
                            <h6 class="footer-heading">Quick Links</h6>
                            <ul class="footer-links">
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="index.jsp#about">About Us</a></li>
                                <li><a href="courses.jsp">Courses</a></li>
                                <li><a href="index.jsp#batches">Batch Schedule</a></li>
                                <li><a href="register.jsp">Enroll Now</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <h6 class="footer-heading">Our Courses</h6>
                            <ul class="footer-links">
                                <li><a href="courses.jsp#ielts"><i class="fas fa-angle-right me-1"></i> IELTS &amp;
                                        PTE</a></li>
                                <li><a href="courses.jsp#oet"><i class="fas fa-angle-right me-1"></i> OET</a></li>
                                <li><a href="courses.jsp#german"><i class="fas fa-angle-right me-1"></i> German &amp;
                                        HAAD</a></li>
                                <li><a href="courses.jsp#nclex"><i class="fas fa-angle-right me-1"></i> NCLEX-RN</a>
                                </li>
                                <li><a href="courses.jsp#prometric"><i class="fas fa-angle-right me-1"></i> PROMETRIC
                                        &amp; DHA</a></li>
                                <li><a href="courses.jsp#cbt"><i class="fas fa-angle-right me-1"></i> CBT / FRENCH /
                                        MOH</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6">
                            <h6 class="footer-heading">Contact Us</h6>
                            <ul class="footer-contact">
                                <li><i class="fas fa-map-marker-alt text-primary"></i> Pampady, Kottayam &ndash; 686502
                                </li>
                                <li><i class="fas fa-phone-alt text-primary"></i> 8921386889 / 9074912975</li>
                                <li><i class="fas fa-envelope text-primary"></i> ashbingeo007@gmail.com</li>
                                <li><i class="fas fa-clock text-primary"></i> Mon-Sat: 7 AM &ndash; 9 PM</li>
                            </ul>
                            <div class="mt-3">
                                <a href="https://wa.me/918921386889" class="whatsapp-btn" target="_blank">
                                    <i class="fab fa-whatsapp"></i> Chat on WhatsApp
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container text-center">
                    <p class="mb-0 small" style="color:#64748b;">
                        &copy; 2026 Smitha's Academy, Pampady, Kottayam, Kerala. All Rights Reserved.
                        <br>Designed with <i class="fas fa-heart text-danger"></i> for Excellence in Education
                    </p>
                </div>
            </div>
        </footer>

        <a href="https://wa.me/918921386889" class="whatsapp-float" target="_blank" title="Chat on WhatsApp">
            <i class="fab fa-whatsapp"></i>
        </a>

        <button class="scroll-top" id="scrollTop" onclick="window.scrollTo({top:0,behavior:'smooth'})"
            title="Back to Top">
            <i class="fas fa-chevron-up"></i>
        </button>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/main.js"></script>
    </body>

    </html>