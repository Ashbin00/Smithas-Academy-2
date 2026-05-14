# Smitha's Academy - Language Training Institute Website

A professional Java 8 Maven-based JSP web application for Smitha's Academy, a premier language training institute offering IELTS, OET, German, NCLEX-RN, PROMETRIC/DHA, and other professional courses in Kozhikode, Kerala.

## Project Overview

Smitha's Academy is a language training center specializing in:
- **IELTS** - Academic & General English training
- **OET** - Occupational English Test for healthcare professionals
- **GERMAN** - A1 to B2 Level German courses
- **NCLEX-RN** - Nursing licensure exam preparation
- **PROMETRIC & DHA** - Medical exams preparation
- **TOEFL/PTE** - English proficiency tests

## Technology Stack

- **Backend**: Java 8 with Apache Tomcat
- **Build Tool**: Maven
- **Web Framework**: JSP (JavaServer Pages) & Servlets
- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Database**: MySQL 5.7+ (ready for integration)
- **Templating**: JSTL (JavaServer Pages Standard Tag Library)

## Project Structure

```
smithas-academy/
├── src/main/
│   ├── java/com/smithas/academy/
│   │   ├── controllers/          (Servlet controllers)
│   │   └── models/               (Model classes)
│   └── webapp/
│       ├── WEB-INF/
│       │   ├── jsp/              (JSP pages)
│       │   └── web.xml           (Web application configuration)
│       ├── css/
│       │   ├── style.css         (Main stylesheet)
│       │   └── responsive.css    (Responsive design)
│       ├── js/
│       │   └── main.js           (JavaScript functionality)
│       ├── assets/               (Images, logos, etc.)
│       └── index.jsp             (Home page)
├── pom.xml                       (Maven configuration)
└── README.md                     (This file)
```

## Features

### Homepage
- Professional hero section with academy tagline
- Success statistics (500+ students, 10+ years experience, 99% success rate)
- Course overview cards

### Course Section
- Detailed course listings (6+ courses)
- Course features and benefits
- Interactive course cards with hover effects

### Services
- Exam registration assistance
- Data flow services
- Good standing certificate support
- Eligibility verification

### Batch Management
- Upcoming batch schedules
- Course dates and timings
- Easy registration system

### Success Stories
- Student testimonials
- Success ratings and feedback

### Contact & Enrollment
- Contact form with validation
- Location details (Kozhikode, Kerala)
- Phone: +91 8921 386 389, +91 9074 912 975
- Email: smithasacademy2k25@gmail.com
- Working hours information

### Responsive Design
- Mobile-first approach
- Fully responsive for all devices (Mobile, Tablet, Desktop)
- Optimized performance on all screen sizes

## Prerequisites

- **Java Development Kit (JDK)** 1.8 or higher
- **Maven** 3.6 or higher
- **Apache Tomcat** 7.0 or higher (or use Tomcat Maven Plugin)
- **MySQL** 5.7 or higher (for database integration)
- Modern web browser

## Setup & Installation

### 1. Clone the Repository
```bash
cd c:\Users\Ashbin George\mynewproject
```

### 2. Install Dependencies
```bash
mvn clean install
```

### 3. Compile the Project
```bash
mvn clean compile
```

### 4. Build WAR File
```bash
mvn clean package
```

### 5. Run with Maven Tomcat Plugin
```bash
mvn tomcat7:run
```

The application will be available at: **http://localhost:8080/smithas**

## Configuration

### Context Path
- Default: `/smithas`
- Modify in `pom.xml` under tomcat7-maven-plugin configuration

### Port
- Default: `8080`
- Modify in `pom.xml` if needed

### Database Connection (When ready)
Create a `database.properties` file in `src/main/resources/`:
```properties
db.driver=com.mysql.jdbc.Driver
db.url=jdbc:mysql://localhost:3306/smithas_academy
db.username=root
db.password=your_password
```

## Available Pages

- **index.jsp** - Home page with all sections
- Contact form for inquiries
- Responsive navigation menu
- Mobile-optimized design

## Build Commands

| Command | Description |
|---------|-------------|
| `mvn clean compile` | Compile the project |
| `mvn clean package` | Build WAR file |
| `mvn tomcat7:run` | Run on Tomcat server |
| `mvn clean install` | Install dependencies |

## Development

### Adding a New JSP Page
1. Create file in `src/main/webapp/WEB-INF/jsp/`
2. Update navigation in `index.jsp`
3. Add CSS as needed in `css/` folder

### Adding Java Controllers
1. Create class in `src/main/java/com/smithas/academy/controllers/`
2. Extend `HttpServlet` and override `doGet()` or `doPost()`
3. Map servlet in `web.xml`

### Styling
- Main styles: `src/main/webapp/css/style.css`
- Responsive styles: `src/main/webapp/css/responsive.css`
- Color scheme:
  - Primary: `#1a3a52` (Dark Blue)
  - Secondary: `#ffc107` (Yellow)
  - Accent: `#c2185b` (Pink)

## Deployment

### Local Deployment
```bash
mvn clean package
# Deploy the generated .war file to your Tomcat server
```

### Production Deployment
1. Build the WAR file: `mvn clean package`
2. Copy `target/smithas-academy.war` to Tomcat webapps folder
3. Restart Tomcat server
4. Access at: `http://your-domain:8080/smithas`

## Future Enhancements

- [ ] Admin dashboard for batch management
- [ ] Online enrollment system with payment integration
- [ ] Student login portal
- [ ] Course material upload and management
- [ ] Online exam scheduling
- [ ] Progress tracking system
- [ ] Database integration
- [ ] Email notifications
- [ ] SMS alerts
- [ ] Advanced search functionality
- [ ] Blog section
- [ ] Video tutorials section

## Support & Contact

**Smitha's Academy**
- 📍 Location: Kochuvayalil Building, 1st Floor, Pampady, Kozhikode, Kerala 673001
- 📱 Phone: +91 8921 386 389, +91 9074 912 975
- 📧 Email: smithasacademy2k25@gmail.com
- 🕒 Hours: Mon-Fri 9:00 AM - 9:00 PM, Sat 10:00 AM - 6:00 PM

## License

This project is proprietary to Smitha's Academy. All rights reserved.

## Author

Created for Smitha's Academy, Kozhikode
- Development Year: 2026

---

**Note**: This is a template-based website. Update all course details, contact information, and styling according to your specific requirements.
