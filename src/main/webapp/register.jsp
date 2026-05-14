<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration | Smitha's Academy</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap">
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>

        <div class="top-bar py-2">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-8 d-flex flex-wrap gap-3">
                        <a href="tel:+919188168989" class="text-white text-decoration-none"><i
                                class="fas fa-phone-alt me-1"></i> +91 9188168989</a>
                        <a href="tel:+919074919195" class="text-white text-decoration-none"><i
                                class="fas fa-phone-alt me-1"></i> +91 9074919195</a>
                        <span class="text-white"><i class="fas fa-map-marker-alt me-1"></i> Pampady, Kottayam,
                            Kerala</span>
                    </div>
                    <div class="col-md-4 text-md-end justify-content-center mt-2 mt-md-0">
                        <a href="#" class="text-white me-3"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-white me-3"><i class="fab fa-instagram"></i></a>
                        <a href="https://wa.me/919188168989" class="text-white" target="_blank"><i
                                class="fab fa-whatsapp"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-light sticky-top shadow-sm" id="mainNav">
            <div class="container">
                <a class="navbar-brand d-flex align-items-center gap-2" href="index.jsp">
                    <div class="brand-icon"><i class="fas fa-graduation-cap"></i></div>
                    <div>
                        <span class="brand-name">Smitha's Academy</span><br>
                        <span class="brand-slogan">Excellence in Language Training&reg;</span>
                    </div>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navMenu">
                    <ul class="navbar-nav ms-auto align-items-lg-center gap-lg-1">
                        <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.jsp#about">About Us</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">Courses</a>
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
                        <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                        <li class="nav-item ms-lg-2">
                            <a href="register.jsp" class="btn btn-enroll active">
                                <i class="fas fa-user-plus me-1"></i> Enroll Now
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="page-header text-white text-center py-5">
            <div class="container">
                <h1 class="display-5 fw-bold"><i class="fas fa-user-plus me-3"></i>Student Registration</h1>
                <p class="lead">Reserve your seat today. Limited batches available!</p>
            </div>
        </div>

        <section class="section-padding bg-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <div class="register-card">
                            <div class="register-header text-center mb-4">
                                <h3 class="fw-bold">New Student Registration Form</h3>
                                <p class="text-muted">Fill all required (*) fields. Our team will contact you within 24
                                    hours.</p>
                            </div>

                            <%-- Display success/error message if redirected --%>
                                <% String successMsg=(String) request.getAttribute("successMsg"); %>
                                    <% if (successMsg !=null) { %>
                                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                                            <i class="fas fa-check-circle me-2"></i>
                                            <%= successMsg %>
                                                <button type="button" class="btn-close"
                                                    data-bs-dismiss="alert"></button>
                                        </div>
                                        <% } %>

                                            <% String errorMsg=(String) request.getAttribute("errorMsg"); %>
                                                <% if (errorMsg !=null) { %>
                                                    <div class="alert alert-danger alert-dismissible fade show"
                                                        role="alert">
                                                        <i class="fas fa-exclamation-triangle me-2"></i>
                                                        <%= errorMsg %>
                                                            <button type="button" class="btn-close"
                                                                data-bs-dismiss="alert"></button>
                                                    </div>
                                                    <% } %>

                                                        <form action="register-student" method="post"
                                                            class="needs-validation" novalidate>

                                                            <div class="form-section-title"><i
                                                                    class="fas fa-user-me-2"></i> Personal Details</div>
                                                            <div class="row g-3 mb-4">
                                                                <div class="col-md-6">
                                                                    <label class="form-label">First Name <span
                                                                            class="text-danger">*</span></label>
                                                                    <input type="text" name="firstName"
                                                                        class="form-control" placeholder="First Name"
                                                                        required pattern="[A-Za-z\s]{2,}">
                                                                    <div class="invalid-feedback">Please enter a valid
                                                                        first name.</div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Last Name <span
                                                                            class="text-danger">*</span></label>
                                                                    <input type="text" name="lastName"
                                                                        class="form-control" placeholder="Last Name"
                                                                        required>
                                                                    <div class="invalid-feedback">Please enter a valid
                                                                        last name.</div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Date of Birth <span
                                                                            class="text-danger">*</span></label>
                                                                    <input type="date" name="dob" class="form-control"
                                                                        required>
                                                                    <div class="invalid-feedback">Please select your
                                                                        date of birth.</div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Gender <span
                                                                            class="text-danger">*</span></label>
                                                                    <select class="form-select" name="gender" required>
                                                                        <option value="" disabled selected>Select Gender
                                                                        </option>
                                                                        <option>Female</option>
                                                                        <option>Male</option>
                                                                        <option>Prefer not to say</option>
                                                                    </select>
                                                                    <div class="invalid-feedback">Please select your
                                                                        gender.</div>
                                                                </div>
                                                            </div>

                                                            <div class="form-section-title"><i
                                                                    class="fas fa-address-card me-2"></i> Contact
                                                                Details</div>
                                                            <div class="row g-3 mb-4">
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Mobile Number <span
                                                                            class="text-danger">*</span></label>
                                                                    <input type="tel" name="mobile" class="form-control"
                                                                        placeholder="10-digit mobile number" required
                                                                        pattern="[0-9]{10}">
                                                                    <div class="invalid-feedback">Enter a valid 10-digit
                                                                        Indian mobile number.</div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label">WhatsApp Number</label>
                                                                    <input type="tel" name="whatsapp"
                                                                        class="form-control"
                                                                        placeholder="If different from mobile">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Email Address <span
                                                                            class="text-danger">*</span></label>
                                                                    <input type="email" name="email"
                                                                        class="form-control"
                                                                        placeholder="your@email.com" required>
                                                                    <div class="invalid-feedback">Please enter a valid
                                                                        email address.</div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Residential District /
                                                                        City <span class="text-danger">*</span></label>
                                                                    <input type="text" name="city" class="form-control"
                                                                        placeholder="e.g. Kottayam" required>
                                                                    <div class="invalid-feedback">Please enter your
                                                                        city/district.</div>
                                                                </div>
                                                            </div>

                                                            <div class="form-section-title"><i
                                                                    class="fas fa-graduation-cap me-2"></i> Academic
                                                                Details</div>
                                                            <div class="row g-3 mb-4">
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Highest Qualification
                                                                        <span class="text-danger">*</span></label>
                                                                    <select class="form-select" name="qualification"
                                                                        required>
                                                                        <option value="" disabled selected>Select
                                                                            Qualification</option>
                                                                        <option>10th / SSLC</option>
                                                                        <option>12th / Plus Two</option>
                                                                        <option>Diploma</option>
                                                                        <option>Graduate (B.A / B.Com / B.Sc / B.Tech
                                                                            etc)</option>
                                                                        <option>GNM (Nursing)</option>
                                                                        <option>B.Sc Nursing</option>
                                                                        <option>Post Basic B.Sc Nursing</option>
                                                                        <option>M.Sc Nursing</option>
                                                                        <option>Post Graduate (M.A / M.Com / M.Sc /
                                                                            M.Tech etc)</option>
                                                                        <option>Doctorate / PhD</option>
                                                                        <option>Other</option>
                                                                    </select>
                                                                    <div class="invalid-feedback">Please select your
                                                                        qualification.</div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Profession /
                                                                        Occupation</label>
                                                                    <input type="text" name="profession"
                                                                        class="form-control"
                                                                        placeholder="e.g. Staff Nurse, Engineer, Student">
                                                                </div>
                                                            </div>

                                                            <div class="form-section-title"><i
                                                                    class="fas fa-book-open me-2"></i> Course Selection
                                                            </div>
                                                            <div class="row g-3 mb-4">
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Select Course <span
                                                                            class="text-danger">*</span></label>
                                                                    <select class="form-select" name="course"
                                                                        id="courseSelect" required>
                                                                        <option value="" disabled selected>Choose a
                                                                            Course</option>
                                                                        <optgroup label="IELTS">
                                                                            <option value="IELTS Academic">IELTS
                                                                                Academic</option>
                                                                            <option value="IELTS General Training">IELTS
                                                                                General Training</option>
                                                                        </optgroup>
                                                                        <optgroup label="PTE">
                                                                            <option value="PTE Academic">PTE Academic
                                                                            </option>
                                                                        </optgroup>
                                                                        <optgroup label="OET - Nursing">
                                                                            <option value="OET Medicine">OET Medicine
                                                                                (Doctors)</option>
                                                                            <option value="OET Nursing">OET Nursing
                                                                                (Nurses)</option>
                                                                            <option value="OET Pharmacy">OET Pharmacy
                                                                            </option>
                                                                            <option value="OET Physiotherapy">OET
                                                                                Physiotherapy</option>
                                                                        </optgroup>
                                                                        <optgroup label="NCLEX-RN">
                                                                            <option value="NCLEX-RN">NCLEX-RN
                                                                                (USA/Canada/Australia)</option>
                                                                        </optgroup>
                                                                        <optgroup label="PROMETRIC/MOH/DHA">
                                                                            <option value="DHA">DHA - Dubai Health
                                                                                Authority</option>
                                                                            <option value="HAAD">HAAD - Abu Dhabi (DOH)
                                                                            </option>
                                                                            <option value="MOH">MOH - UAE Ministry of
                                                                                Health</option>
                                                                            <option value="PROMETRIC">PROMETRIC (Gulf
                                                                                Exams)</option>
                                                                        </optgroup>
                                                                        <optgroup label="German Language">
                                                                            <option value="German A1">German A1
                                                                                (Beginner)</option>
                                                                            <option value="German A2">German A2
                                                                                (Elementary)</option>
                                                                            <option value="German B1">German B1
                                                                                (Intermediate)</option>
                                                                            <option value="German B2">German B2 (Upper
                                                                                Intermediate)</option>
                                                                        </optgroup>
                                                                        <optgroup label="CBT / FRENCH / MDS">
                                                                            <option value="CBT">CBT (NMC UK Nursing)
                                                                            </option>
                                                                            <option value="French A1">French Language -
                                                                                A1/Beginner</option>
                                                                            <option value="French A2">French Language -
                                                                                A2/Option</option>
                                                                            <option value="MDS Prep">MDS Entrance Prep
                                                                            </option>
                                                                        </optgroup>
                                                                    </select>
                                                                    <div class="invalid-feedback">Please select a
                                                                        course.</div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Preferred Batch <span
                                                                            class="text-danger">*</span></label>
                                                                    <select class="form-select" name="batchPreference"
                                                                        required>
                                                                        <option value="" disabled selected>Select a
                                                                            Batch</option>
                                                                        <option value="Morning">Morning Batch (7 AM - 10
                                                                            AM)</option>
                                                                        <option value="Regular">Regular Day Batch (10 AM
                                                                            - 4 PM)</option>
                                                                        <option value="Evening">Evening Batch (6 PM - 9
                                                                            PM)</option>
                                                                        <option value="Weekend">Weekend Batch (Saturday
                                                                            & Sunday)</option>
                                                                        <option value="Online">Online (Zoom / Google
                                                                            Meet)</option>
                                                                    </select>
                                                                    <div class="invalid-feedback">Please select a batch.
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label">Exam Target Date /
                                                                        Label</label>
                                                                    <input type="text" name="targetDate"
                                                                        class="form-control"
                                                                        placeholder="When do you plan to write the exam?">
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label class="form-label">How did you hear about
                                                                        us?</label>
                                                                    <select class="form-select" name="referralSource">
                                                                        <option value="Social Media">Facebook /
                                                                            Instagram / Telegram</option>
                                                                        <option value="Google Search">Google Search
                                                                        </option>
                                                                        <option value="Friend/Family">Friend / Family
                                                                            Referral</option>
                                                                        <option value="Newspaper/Ad">Newspaper /
                                                                            Advertisement</option>
                                                                        <option value="Walk-in">Walk-in / In-Person
                                                                        </option>
                                                                    </select>
                                                                </div>
                                                            </div>

                                                            <div class="form-section-title"><i
                                                                    class="fas fa-info-circle me-2"></i> Additional
                                                                Information</div>
                                                            <div class="row g-3 mb-4">
                                                                <div class="col-12">
                                                                    <label class="form-label">Previous Test Scores (if
                                                                        any)</label>
                                                                    <input type="text" name="previousScores"
                                                                        class="form-control"
                                                                        placeholder="e.g. IELTS 5.5, OET C, German A2 passed">
                                                                </div>
                                                                <div class="col-12">
                                                                    <label class="form-label">Special Requirements or
                                                                        Questions</label>
                                                                    <textarea name="remarks" class="form-control"
                                                                        rows="3"
                                                                        placeholder="Any specific health conditions, health criteria, or questions for our counsellor?"></textarea>
                                                                </div>
                                                            </div>

                                                            <div class="col-12">
                                                                <div class="form-check mb-2">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="terms" required>
                                                                    <label class="form-check-label" for="terms">
                                                                        I agree to the <a href="#"
                                                                            class="text-primary">Privacy Policy</a> of
                                                                        Smitha's Academy.
                                                                    </label>
                                                                    <div class="invalid-feedback">You must agree before
                                                                        submitting.</div>
                                                                </div>
                                                                <div class="form-check mb-4">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        id="whatsappConsent" name="whatsappConsent"
                                                                        checked>
                                                                    <label class="form-check-label"
                                                                        for="whatsappConsent">
                                                                        I consent to receive batch updates, study
                                                                        materials, and notifications on WhatsApp.
                                                                    </label>
                                                                </div>
                                                            </div>

                                                            <div class="text-center">
                                                                <button type="submit"
                                                                    class="btn btn-primary btn-lg px-5 py-3 shadow">
                                                                    <i class="fas fa-paper-plane me-2"></i> Submit
                                                                    Registration
                                                                </button>
                                                                <p class="small text-muted mt-3">
                                                                    <i class="fas fa-lock me-1"></i> Your information is
                                                                    secure and will never be shared with third parties.
                                                                </p>
                                                            </div>
                                                        </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer class="footer-section">
            <div class="footer-main">
                <div class="container">
                    <div class="row g-4">
                        <div class="col-lg-4 col-md-6">
                            <div class="footer-brand">
                                <div class="footer-brand-icon"><i class="fas fa-graduation-cap"></i></div>
                                <span class="text-white fw-bold fs-5">Smitha's Academy</span>
                            </div>
                            <p class="small" style="color:#94a3b8;">Kottayam's premier language &amp; healthcare exam
                                training institute.</p>
                            <div class="footer-social-links">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-youtube"></i></a>
                                <a href="https://wa.me/918921386889" target="_blank"><i class="fab fa-whatsapp"></i></a>
                                <a href="#"><i class="fab fa-linkedin-in"></i></a>
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
                                <li><a href="contact.jsp">Contact Us</a></li>
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
                    </p>
                </div>
            </div>
        </footer>

        <a href="https://wa.me/918921386889" class="whatsapp-float" target="_blank"><i class="fab fa-whatsapp"></i></a>
        <button class="scroll-top" id="scrollTop" onclick="window.scrollTo({top:0,behavior:'smooth'})"
            title="Back to Top"><i class="fas fa-chevron-up"></i></button>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/main.js"></script>
    </body>

    </html>