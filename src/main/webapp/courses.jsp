<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Smitha's Academy | Courses - IELTS, OET, GERMAN, NCLEX-RN, HAAD, DHA, MOH, CBT, FRENCH, MDS courses at
            Smitha's Academy, Pampady, Kottayam.</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>

        <div class="top-bar py-2">
            <div class="container d-flex justify-content-between align-items-center">
                <div class="contact-info">
                    <a href="tel:+8921386389" class="text-white text-decoration-none me-3"><i
                            class="fas fa-phone-alt me-1"></i> +91 9188168989</a>
                    <span class="text-white d-none d-md-inline-block"><i class="fas fa-map-marker-alt me-1"></i>
                        Pampady, Kottayam, Kerala</span>
                </div>
                <div class="social-links d-none d-md-flex justify-content-center">
                    <a href="#" class="me-3" style="color: orange;"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" class="me-3" style="color: orange;"><i class="fab fa-instagram"></i></a>
                    <a href="https://wa.me/8921386389" style="color: orange;" target="_blank"><i
                            class="fab fa-whatsapp"></i></a>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-light sticky-top shadow-sm">
            <div class="container">
                <a class="navbar-brand d-flex align-items-center gap-2" href="index.jsp">
                    <img src="images/logo.jpg" alt="Logo" width="40" height="40" style="border-radius: 50%;">
                    <div class="brand-text">
                        <span class="brand-name">Smitha's Academy</span><br>
                        <span class="brand-tagline">Excellence in Language Training</span>
                    </div>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navMenu">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0 align-items-lg-center">
                        <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link active dropdown-toggle" href="#" data-bs-toggle="dropdown">Courses</a>
                            <ul class="dropdown-menu shadow">
                                <li><a class="dropdown-item" href="#ielts"><i
                                            class="fas fa-globe-me-2 text-primary"></i> IELTS <span
                                            class="badge bg-primary ms-2 text-white">Top!</span></a></li>
                                <li><a class="dropdown-item" href="#oet"><i
                                            class="fas fa-stethoscope me-2 text-danger"></i> OET <span
                                            class="badge bg-danger ms-2 text-white">Popular</span></a></li>
                                <li><a class="dropdown-item" href="#german"><i
                                            class="fas fa-language me-2 text-warning"></i> GERMAN <span
                                            class="badge bg-warning ms-2 text-white">Hot</span></a></li>
                                <li><a class="dropdown-item" href="#nclex"><i
                                            class="fas fa-user-nurse me-2 text-info"></i> NCLEX-RN</a></li>
                                <li><a class="dropdown-item" href="#prometric"><i
                                            class="fas fa-heartbeat me-2 text-success"></i> PROMETRIC/DHA/HAAD/MOH</a>
                                </li>
                                <li><a class="dropdown-item" href="#cbt-french-mds"><i
                                            class="fas fa-book-medical me-2 text-primary"></i> CBT/FRENCH/MDS</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="index.jsp#success">Success Stories</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact Us</a></li>
                        <li class="nav-item ms-lg-3">
                            <a href="register.jsp" class="btn btn-primary rounded-pill px-4">
                                <i class="fas fa-user-plus me-2"></i> Enroll Now
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="page-header text-white text-center py-5">
            <div class="container">
                <div class="icon-container mb-3">
                    <i class="fas fa-book-open display-4"></i>
                </div>
                <h1 class="display-4 fw-bold mb-3">Explore Our Courses</h1>
                <p class="lead mb-4">Comprehensive language training programs tailored for your success.</p>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center mb-0">
                        <li class="breadcrumb-item"><a href="index.jsp" class="text-white text-decoration-none">Home</a>
                        </li>
                        <li class="breadcrumb-item active text-white-50" aria-current="page">Courses</li>
                    </ol>
                </nav>
            </div>
        </div>

        <div class="course-tabs-nav sticky-top bg-white shadow-sm py-2" style="top: 75px; z-index: 100;">
            <div class="container d-flex justify-content-center flex-wrap gap-2">
                <a href="#ielts" class="tab-link active"><i class="fas fa-globe me-1"></i> IELTS</a>
                <a href="#oet" class="tab-link"><i class="fas fa-heartbeat me-1"></i> OET</a>
                <a href="#german" class="tab-link"><i class="fas fa-language me-1"></i> GERMAN</a>
                <a href="#nclex" class="tab-link"><i class="fas fa-user-nurse me-1"></i> NCLEX-RN</a>
                <a href="#prometric" class="tab-link"><i class="fas fa-hospital me-1"></i> PROMETRIC</a>
                <a href="#cbt-french-mds" class="tab-link"><i class="fas fa-file-medical me-1"></i> CBT/FRENCH/MDS</a>
            </div>
        </div>

        <section id="ielts" class="section-padding bg-light">
            <div class="container">
                <div class="row align-items-center g-5">
                    <div class="col-lg-6 order-2 order-lg-1" data-aos="fade-right">
                        <span class="course-detail-badge badge bg-primary bg-opacity-10 text-primary mb-3">IELTS -
                            International English Language Testing System</span>
                        <h2 class="section-title mb-4">Master the IELTS with Us</h2>
                        <p class="lead mb-4 text-secondary">IELTS is the world's most popular English language
                            proficiency test for higher education and global migration.</p>
                        <p class="mb-4">We offer professional training for both <strong>Academic</strong> (for students)
                            and <strong>General Training</strong> (for migration) modules.</p>

                        <div class="course-info-box shadow-sm mb-4">
                            <div class="table-responsive">
                                <table class="table table-borderless mb-0">
                                    <tbody>
                                        <tr>
                                            <td><i class="fas fa-clock text-primary me-2"></i>
                                                <strong>Duration:</strong></td>
                                            <td>8-10 Weeks (Intensive / Regular)</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-users text-primary me-2"></i> <strong>Batch
                                                    Size:</strong></td>
                                            <td>Limited to 15 Students</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-calendar-alt text-primary me-2"></i>
                                                <strong>Schedule:</strong></td>
                                            <td>Morning / Evening / Weekend / Online</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-chalkboard-teacher text-primary me-2"></i> <strong>Mock
                                                    Tests:</strong></td>
                                            <td>Full-length practice tests weekly</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="text-center mt-3">
                            <a href="register.jsp?course=IELTS" class="btn btn-primary btn-lg px-5 shadow">
                                <i class="fas fa-user-plus me-2"></i> Enroll in IELTS
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left">
                        <div class="row g-4">
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card" data-aos="zoom-in" data-aos-delay="100">
                                    <div class="syllabus-icon bg-primary bg-opacity-10 text-primary mb-3">
                                        <i class="fas fa-headphones"></i>
                                    </div>
                                    <h5>Listening Module</h5>
                                    <ul class="list-unstyled">
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Note completion
                                            techniques</li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Multiple choice
                                            strategies</li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Map & diagram labelling
                                        </li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Sections 1-4 mastery
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card" data-aos="zoom-in" data-aos-delay="200">
                                    <div class="syllabus-icon bg-primary bg-opacity-10 text-primary mb-3">
                                        <i class="fas fa-book-reader"></i>
                                    </div>
                                    <h5>Reading Module</h5>
                                    <ul class="list-unstyled">
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Skimming & scanning
                                        </li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>True/False/Not Given
                                            tips</li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Summary completion</li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Time management tips
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card" data-aos="zoom-in" data-aos-delay="300">
                                    <div class="syllabus-icon bg-primary bg-opacity-10 text-primary mb-3">
                                        <i class="fas fa-pen-alt"></i>
                                    </div>
                                    <h5>Writing Module</h5>
                                    <ul class="list-unstyled">
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Task 1: Graph / Charts
                                        </li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Task 2: Essay writing
                                        </li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Cohesion & coherence
                                        </li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Grammar templates</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card" data-aos="zoom-in" data-aos-delay="400">
                                    <div class="syllabus-icon bg-primary bg-opacity-10 text-primary mb-3">
                                        <i class="fas fa-microphone"></i>
                                    </div>
                                    <h5>Speaking Module</h5>
                                    <ul class="list-unstyled">
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Part 1, 2 & 3
                                            techniques</li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Fluency & pronunciation
                                        </li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>One-on-one mock
                                            interviews</li>
                                        <li><i class="bi bi-check2-circle text-primary me-1"></i>Recorded feedback
                                            sessions</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="oet" class="section-padding bg-white">
            <div class="container">
                <div class="row align-items-center g-5">
                    <div class="col-lg-6" data-aos="fade-right">
                        <span class="course-detail-badge badge bg-danger bg-opacity-10 text-danger mb-3">OET -
                            Occupational English Test</span>
                        <h2 class="section-title mb-4">Dedicated OET Coaching for Healthcare Professionals</h2>
                        <p class="lead mb-4 text-secondary">OET is a healthcare-specific English language test accepted
                            by medical councils, nursing boards, and hospitals in the UK, Ireland, Australia, and more.
                            Smitha's Academy provides specialized OET coaching for nurses, doctors, pharmacists, and
                            other healthcare workers.</p>
                        <div class="row g-2 mb-4">
                            <div class="col-6 col-md-4"><span class="profession-tag"><i
                                        class="fas fa-user-nurse me-1"></i> Nurses</span></div>
                            <div class="col-6 col-md-4"><span class="profession-tag"><i class="fas fa-user-md me-1"></i>
                                    Doctors</span></div>
                            <div class="col-6 col-md-4"><span class="profession-tag"><i class="fas fa-pills me-1"></i>
                                    Pharmacists</span></div>
                            <div class="col-6 col-md-4"><span class="profession-tag"><i class="fas fa-tooth me-1"></i>
                                    Dentists</span></div>
                            <div class="col-6 col-md-4"><span class="profession-tag"><i
                                        class="fas fa-heartbeat me-1"></i> Physiotherapists</span></div>
                        </div>
                        <div class="course-info-box border-danger shadow-sm mb-4">
                            <div class="table-responsive">
                                <table class="table table-borderless mb-0">
                                    <tbody>
                                        <tr>
                                            <td><i class="fas fa-clock text-danger me-2"></i> <strong>Duration:</strong>
                                            </td>
                                            <td>8-10 Weeks</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-star text-danger me-2"></i> <strong>Target
                                                    Grade:</strong></td>
                                            <td>B Grade or above</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-calendar-alt text-danger me-2"></i>
                                                <strong>Schedule:</strong></td>
                                            <td>Morning / Evening / Weekend / Online</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-chalkboard-teacher text-danger me-2"></i> <strong>Mock
                                                    Tests:</strong></td>
                                            <td>Weekly OET Simulation Tests</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="text-center mt-3">
                            <a href="register.jsp?course=OET" class="btn btn-danger btn-lg px-5 shadow">
                                <i class="fas fa-user-plus me-2"></i> Enroll in OET
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-6" data-aos="fade-left">
                        <div class="row g-4">
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card-oet" data-aos="zoom-in" data-aos-delay="100">
                                    <div class="syllabus-icon-oet bg-danger bg-opacity-10 text-danger mb-3">
                                        <i class="fas fa-headphones"></i>
                                    </div>
                                    <h5>Listening</h5>
                                    <ul class="list-unstyled">
                                        <li>Healthcare consultations</li>
                                        <li>Patient interactions</li>
                                        <li>Note-taking practice</li>
                                        <li>Multi-choice practice</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card-oet" data-aos="zoom-in" data-aos-delay="200">
                                    <div class="syllabus-icon-oet bg-danger bg-opacity-10 text-danger mb-3">
                                        <i class="fas fa-book-medical"></i>
                                    </div>
                                    <h5>Reading</h5>
                                    <ul class="list-unstyled">
                                        <li>Medical journal articles</li>
                                        <li>Hospital policy texts</li>
                                        <li>Gap-fill exercises</li>
                                        <li>Speed reading strategies</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card-oet" data-aos="zoom-in" data-aos-delay="300">
                                    <div class="syllabus-icon-oet bg-danger bg-opacity-10 text-danger mb-3">
                                        <i class="fas fa-file-medical-alt"></i>
                                    </div>
                                    <h5>Writing</h5>
                                    <ul class="list-unstyled">
                                        <li>Clinical case notes</li>
                                        <li>Referral letters</li>
                                        <li>Discharge letters</li>
                                        <li>Professional tone writing</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card-oet" data-aos="zoom-in" data-aos-delay="400">
                                    <div class="syllabus-icon-oet bg-danger bg-opacity-10 text-danger mb-3">
                                        <i class="fas fa-comments"></i>
                                    </div>
                                    <h5>Speaking</h5>
                                    <ul class="list-unstyled">
                                        <li>Patient consultation roleplays</li>
                                        <li>Handling difficult cases</li>
                                        <li>Medical terminology</li>
                                        <li>Empathy & clinical language</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="german" class="section-padding bg-light">
            <div class="container">
                <div class="row align-items-center g-5">
                    <div class="col-lg-6 order-2 order-lg-1" data-aos="fade-right">
                        <span class="course-detail-badge badge bg-warning bg-opacity-10 text-dark mb-3">German Language
                            Learning</span>
                        <h2 class="section-title mb-4">Master German for Future Opportunities</h2>
                        <p class="lead mb-4 text-secondary">German is the language of opportunities - for students
                            studying in Germany, professionals seeking jobs, or anyone planning to settle in
                            German-speaking countries. We offer Goethe-aligned training from A1 to B2 levels with expert
                            certified trainers.</p>
                        <div class="level-roadmap-container mb-4">
                            <div class="level-box"><span id="level-a1">A1</span> Beginner</div>
                            <div class="level-box"><span id="level-a2">A2</span> Elementary</div>
                            <div class="level-box"><span id="level-b1">B1</span> Intermediate</div>
                            <div class="level-box"><span id="level-b2">B2</span> Upper-Intermediate</div>
                        </div>
                        <div class="course-info-box border-warning shadow-sm mb-4">
                            <div class="table-responsive">
                                <table class="table table-borderless mb-0">
                                    <tbody>
                                        <tr>
                                            <td><i class="fas fa-clock text-warning me-2"></i>
                                                <strong>Duration:</strong></td>
                                            <td>8-10 Weeks (Per level)</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-users text-warning me-2"></i> <strong>Batch
                                                    Size:</strong></td>
                                            <td>Max 10 Students</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-calendar-alt text-warning me-2"></i>
                                                <strong>Schedule:</strong></td>
                                            <td>Morning / Weekend / Online</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-chalkboard-teacher text-warning me-2"></i>
                                                <strong>Trainers:</strong></td>
                                            <td>Goethe-certified trainers</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="text-center mt-3">
                            <a href="register.jsp?course=GERMAN" class="btn btn-warning text-dark btn-lg px-5 shadow">
                                <i class="fas fa-user-plus me-2"></i> Enroll in German
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left">
                        <div class="row g-4">
                            <div class="col-md-6">
                                <div class="syllabus-card-german" data-aos="zoom-in" data-aos-delay="100">
                                    <span class="badge bg-warning text-dark mb-2">Level A1 - Beginner</span>
                                    <ul class="list-unstyled">
                                        <li>Alphabets & pronunciation</li>
                                        <li>Basic greetings & introductions</li>
                                        <li>Present tense verbs</li>
                                        <li>Simple conversations</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="syllabus-card-german" data-aos="zoom-in" data-aos-delay="200">
                                    <span class="badge bg-warning text-dark mb-2">Level A2 - Elementary</span>
                                    <ul class="list-unstyled">
                                        <li>Past tense & future tense</li>
                                        <li>German grammar basics</li>
                                        <li>Shopping & travel German</li>
                                        <li>Describing experiences</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="syllabus-card-german" data-aos="zoom-in" data-aos-delay="300">
                                    <span class="badge bg-warning text-dark mb-2">Level B1 - Intermediate</span>
                                    <ul class="list-unstyled">
                                        <li>Complex sentence structures</li>
                                        <li>Reading German newspapers</li>
                                        <li>Workplace communication</li>
                                        <li>Goethe exam prep</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="syllabus-card-german" data-aos="zoom-in" data-aos-delay="400">
                                    <span class="badge bg-warning text-dark mb-2">Level B2 - Upper Intermediate</span>
                                    <ul class="list-unstyled">
                                        <li>Advanced grammar & syntax</li>
                                        <li>Academic & professional writing</li>
                                        <li>Fluency in debates & discussions</li>
                                        <li>Goethe/TELC exam prep</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="nclex" class="section-padding bg-white">
            <div class="container">
                <div class="row align-items-center g-5">
                    <div class="col-lg-6" data-aos="fade-right">
                        <span class="course-detail-badge badge bg-info bg-opacity-10 text-info mb-3">NCLEX-RN</span>
                        <h2 class="section-title mb-4">Pass NCLEX-RN on Your First Attempt</h2>
                        <p class="lead mb-4 text-secondary">NCLEX-RN is the globally recognized nursing board exam
                            required to practice as a Registered Nurse in the USA, Canada and Australia. Smitha's
                            Academy offers a comprehensive coaching program.</p>
                        <div class="course-info-box border-info shadow-sm mb-4">
                            <div class="table-responsive">
                                <table class="table table-borderless mb-0">
                                    <tbody>
                                        <tr>
                                            <td><i class="fas fa-clock text-info me-2"></i> <strong>Duration:</strong>
                                            </td>
                                            <td>12-16 Weeks</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-question-circle text-info me-2"></i>
                                                <strong>Format:</strong></td>
                                            <td>CAT (Computerized Adaptive Testing)</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-star text-info me-2"></i> <strong>Focus:</strong></td>
                                            <td>Clinical Judgment & Decision Making</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-chalkboard-teacher text-info me-2"></i>
                                                <strong>Materials:</strong></td>
                                            <td>Saunders/UWorld/Kaplan/HESI based</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="text-center mt-3">
                            <a href="register.jsp?course=NCLEX-RN" class="btn btn-info text-white btn-lg px-5 shadow">
                                <i class="fas fa-user-plus me-2"></i> Enroll in NCLEX-RN
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-6" data-aos="fade-left">
                        <div class="row g-4">
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card-oet" style="border-top: 5px solid #0dcaf0;">
                                    <h5>Clinical Judgment</h5>
                                    <p class="small">Next-Gen NCLEX (NGN) style case studies.</p>
                                </div>
                            </div>
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card-oet" style="border-top: 5px solid #0dcaf0;">
                                    <h5>Pharmacology</h5>
                                    <p class="small">Drug classifications, side effects & calculations.</p>
                                </div>
                            </div>
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card-oet" style="border-top: 5px solid #0dcaf0;">
                                    <h5>Med-Surg Nursing</h5>
                                    <p class="small">System-wise nursing care & pathologies.</p>
                                </div>
                            </div>
                            <div class="col-md-6 col-6">
                                <div class="syllabus-card-oet" style="border-top: 5px solid #0dcaf0;">
                                    <h5>Pediatrics/OBG</h5>
                                    <p class="small">Maternal-newborn care & child development.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="prometric" class="section-padding bg-light">
            <div class="container">
                <div class="row align-items-center g-5">
                    <div class="col-lg-6 order-2 order-lg-1" data-aos="fade-right">
                        <span class="course-detail-badge badge bg-success bg-opacity-10 text-success mb-3">PROMETRIC /
                            DHA / HAAD / MOH</span>
                        <h2 class="section-title mb-4">Start Your Healthcare Career in the Middle East</h2>
                        <p class="lead mb-4 text-secondary">These exams are required for healthcare professionals
                            working in Gulf countries.</p>
                        <p>We provide focused coaching for DHA (Dubai), HAAD (Abu Dhabi), MOH (UAE), OMSB (Oman), SCFHS
                            (Saudi Arabia) and more.</p>
                        <div class="row g-2 mb-4">
                            <div class="col-6 col-md-4"><span class="profession-tag-2">DHA - Dubai</span></div>
                            <div class="col-6 col-md-4"><span class="profession-tag-2">HAAD - Abu Dhabi</span></div>
                            <div class="col-6 col-md-4"><span class="profession-tag-2">MOH - UAE/Kuwait</span></div>
                            <div class="col-6 col-md-4"><span class="profession-tag-2">OMSB - Oman</span></div>
                            <div class="col-6 col-md-4"><span class="profession-tag-2">SCFHS - Saudi Arabia</span></div>
                            <div class="col-6 col-md-4"><span class="profession-tag-2">NHRA - Bahrain</span></div>
                        </div>
                        <div class="course-info-box border-success shadow-sm mb-4">
                            <div class="table-responsive">
                                <table class="table table-borderless mb-0">
                                    <tbody>
                                        <tr>
                                            <td><i class="fas fa-clock text-success me-2"></i>
                                                <strong>Duration:</strong></td>
                                            <td>8-10 Weeks</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-user-nurse text-success me-2"></i>
                                                <strong>Audience:</strong></td>
                                            <td>Nurses, Doctors, Allied Health</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-check-circle text-success me-2"></i> <strong>Mock
                                                    Exams:</strong></td>
                                            <td>Daily Practice MCQ sets</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-file-invoice text-success me-2"></i>
                                                <strong>Dataflow:</strong></td>
                                            <td>Registration & Dataflow assistance</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="text-center mt-3">
                            <a href="register.jsp?course=PROMETRIC" class="btn text-white btn-lg px-5 shadow"
                                style="background-color: #208e4c;">
                                <i class="fas fa-user-plus me-2"></i> Enroll Now
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left">
                        <div class="syllabus-card shadow-sm"
                            style="background-color: #f8f9fa; border-left: 5px solid #208e4c;">
                            <h5 class="mb-3 text-success">Professionals We Support:</h5>
                            <ul class="list-group list-group-flush bg-transparent">
                                <li class="list-group-item bg-transparent"><i
                                        class="fas fa-user-nurse text-success me-2"></i> Nurses (RN/PN)</li>
                                <li class="list-group-item bg-transparent"><i
                                        class="fas fa-user-md text-success me-2"></i> Doctors (GP/Specialist)</li>
                                <li class="list-group-item bg-transparent"><i
                                        class="fas fa-pills text-success me-2"></i> Pharmacists</li>
                                <li class="list-group-item bg-transparent"><i class="fas fa-vial text-success me-2"></i>
                                    Lab Technicians</li>
                                <li class="list-group-item bg-transparent"><i
                                        class="fas fa-tooth text-success me-2"></i> Dentists</li>
                                <li class="list-group-item bg-transparent"><i
                                        class="fas fa-microscope text-success me-2"></i> Physiotherapists</li>
                                <li class="list-group-item bg-transparent"><i
                                        class="fas fa-notes-medical text-success me-2"></i> Radiographers</li>
                            </ul>
                            <div class="mt-3 p-3 bg-white rounded border">
                                <h6 class="fw-bold mb-2"><i class="fas fa-laptop-code me-2"></i> MCQ Question Bank:</h6>
                                <p class="small mb-0">Get access to 5000+ latest MCQs and previous year questions
                                    updated for 2024 exams.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="cbt-french-mds" class="section-padding bg-white">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
                        <div class="syllabus-card h-100" style="background: #fdf2f2; border-top: 5px solid #dc3545;">
                            <div class="syllabus-icon bg-danger text-white mb-3 shadow-sm">
                                <i class="fas fa-laptop-medical"></i>
                            </div>
                            <h4 class="mb-3">CBT (NMC UK)</h4>
                            <p class="text-secondary">Computer Based Test for Nurses seeking UK Registration. Focus on
                                Clinical, Professional, and Patient Safety domains.</p>
                            <ul class="list-unstyled mb-4">
                                <li><i class="fas fa-check text-danger me-2"></i>NMC Learning Modules</li>
                                <li><i class="fas fa-check text-danger me-2"></i>Clinical Case Scenarios</li>
                                <li><i class="fas fa-check text-danger me-2"></i>Practice MCQ Exams</li>
                                <li><i class="fas fa-check text-danger me-2"></i>10 Days Intensive Batch</li>
                            </ul>
                            <a href="register.jsp?course=CBT" class="btn btn-outline-danger w-100 mt-auto">Enroll
                                Now</a>
                        </div>
                    </div>

                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                        <div class="syllabus-card h-100" style="background: #f2f7fd; border-top: 5px solid #0d6efd;">
                            <div class="syllabus-icon bg-primary text-white mb-3 shadow-sm">
                                <i class="fas fa-language"></i>
                            </div>
                            <h4 class="mb-3">FRENCH</h4>
                            <p class="text-secondary">Learn French for Canada Migration (TEF/TCF) or personal interest.
                                Certified training for A1, A2 & B1 levels.</p>
                            <ul class="list-unstyled mb-4">
                                <li><i class="fas fa-check text-primary me-2"></i>DELF/TEF/TCF Focus</li>
                                <li><i class="fas fa-check text-primary me-2"></i>Grammar & Vocabulary</li>
                                <li><i class="fas fa-check text-primary me-2"></i>Listening & Speaking</li>
                                <li><i class="fas fa-check text-primary me-2"></i>Customized Batch Timing</li>
                            </ul>
                            <a href="register.jsp?course=FRENCH" class="btn btn-outline-primary w-100 mt-auto">Enroll
                                Now</a>
                        </div>
                    </div>

                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="300">
                        <div class="syllabus-card h-100" style="background: #f2fdf5; border-top: 5px solid #198754;">
                            <div class="syllabus-icon bg-success text-white mb-3 shadow-sm">
                                <i class="fas fa-tooth"></i>
                            </div>
                            <h4 class="mb-3">MDS Preparation</h4>
                            <p class="text-secondary">Entrance coaching for Dental Graduates seeking Master of Dental
                                Surgery. Subject-wise expert guidance.</p>
                            <ul class="list-unstyled mb-4">
                                <li><i class="fas fa-check text-success me-2"></i>Subject-wise MCQ focus</li>
                                <li><i class="fas fa-check text-success me-2"></i>Mock Test Series</li>
                                <li><i class="fas fa-check text-success me-2"></i>Previous Year Papers</li>
                                <li><i class="fas fa-check text-success me-2"></i>Expert Faculty Guidance</li>
                            </ul>
                            <a href="register.jsp?course=MDS" class="btn btn-outline-success w-100 mt-auto">Enroll
                                Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="cta-section section-padding text-white text-center">
            <div class="container">
                <h2 class="display-5 fw-bold mb-4">Ready to Start Your Journey?</h2>
                <p class="lead mb-5">Join thousands of successful students from Pampady, Kottayam and across Kerala.</p>
                <div class="d-flex flex-column flex-md-row justify-content-center gap-3">
                    <a href="register.jsp" class="btn btn-light btn-lg px-5 py-3">
                        <i class="fas fa-user-plus me-2"></i> Enroll Now
                    </a>
                    <a href="tel:+8921386389" class="btn btn-outline-light btn-lg px-5 py-3">
                        <i class="fas fa-phone-alt me-2"></i> Free Counseling
                    </a>
                </div>
            </div>
        </section>

        <footer class="footer-section">
            <div class="footer-bottom">
                <div class="container text-center">
                    <p class="mb-0">&copy; 2024 Smitha's Academy, Pampady, Kottayam, Kerala. All Rights Reserved.</p>
                </div>
            </div>
        </footer>

        <a href="https://wa.me/8921386389" class="whatsapp-float" target="_blank">
            <i class="fab fa-whatsapp"></i>
        </a>

        <button class="scroll-top" id="scrollTopBtn"><i class="fas fa-arrow-up"></i></button>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
        <script src="js/main.js"></script>
    </body>

    </html>