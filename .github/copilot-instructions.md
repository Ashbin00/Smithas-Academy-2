<!-- Smitha's Academy - Java 8 Maven JSP Project Setup -->

# Smitha's Academy Project Setup

This is a Java 8 Maven project for Smitha's Academy - a professional language training institute website.

## Project Details
- **Framework**: Java 8 with Maven
- **Web Technology**: JSP (JavaServer Pages)
- **Courses**: IELTS, OET, German
- **Location**: Kozhikode, Kerala

## Scaffolding Status
- [x] Project directories created
- [x] pom.xml configured for Java 8 with JSP, Servlets, and JSTL
- [x] Web pages (index.jsp) created with professional homepage
- [x] Styling and responsive CSS added
- [x] JavaScript functionality implemented
- [x] Controllers and models developed (sample templates included)
- [ ] Database integration (ready for MySQL connection)
- [ ] Application compiled and tested (requires Java 8 & Maven)
- [ ] Running and verified in browser (ready to run)

## Build and Run Commands
```bash
# Compile the project
mvn clean compile

# Build WAR file
mvn clean package

# Run with Tomcat
mvn tomcat7:run
```

## Project Structure
```
src/main/
  ├── java/com/smithas/academy/
  │   ├── controllers/
  │   └── models/
  ├── webapp/
  │   ├── WEB-INF/
  │   │   ├── jsp/
  │   │   └── web.xml
  │   ├── css/
  │   ├── js/
  │   └── assets/
```

## Default Access
- Application URL: http://localhost:8080/smithas
- Context Path: /smithas
