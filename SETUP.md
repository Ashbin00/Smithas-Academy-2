# Setup Guide - Smitha's Academy Project

## Prerequisites Installation

This project requires Java JDK and Maven to be installed on your system.

### 1. Install Java Development Kit (JDK)

#### Windows

**Option A: Download from Oracle**
1. Visit: https://www.oracle.com/java/technologies/downloads/#java8
2. Download JDK 8 for Windows (x64)
3. Run the installer and follow the installation wizard
4. Note the installation path (typically `C:\Program Files\Java\jdk1.8.0_xxx`)

**Option B: Download from OpenJDK**
1. Visit: https://adoptopenjdk.net/ or https://jdk.java.net/
2. Download Java 8 for Windows
3. Extract and install to a suitable location

**Verify Installation:**
```bash
java -version
javac -version
```

### 2. Install Maven

#### Windows

1. Visit: https://maven.apache.org/download.cgi
2. Download Apache Maven 3.8.1 or higher
3. Extract to a folder (e.g., `C:\Apache\maven`)
4. Add to Environment Variables:
   - Right-click "This PC" > Properties > Advanced system settings
   - Click "Environment Variables"
   - New System Variable:
     - Variable name: `MAVEN_HOME`
     - Variable value: `C:\Apache\maven` (your installation path)
   - Edit `Path` variable and add: `%MAVEN_HOME%\bin`
5. Restart your computer or terminal

**Verify Installation:**
```bash
mvn -version
```

You should see Maven version info.

### 3. Setup Project

#### Prerequisites Check
Before proceeding, ensure:
- Java 8+ is installed
- Maven is installed and in your PATH
- You have at least 1GB free disk space

#### Project Directory
```
c:\Users\Ashbin George\mynewproject\
```

## Building the Project

### Step 1: Navigate to Project Directory
```bash
cd "c:\Users\Ashbin George\mynewproject"
```

### Step 2: Clean and Install Dependencies
```bash
mvn clean install
```
This will download all required dependencies from Maven Central Repository.

### Step 3: Compile the Project
```bash
mvn clean compile
```
This compiles the Java source files (currently none, but structure is ready).

### Step 4: Build WAR Package
```bash
mvn clean package
```
This creates a deployable WAR file at: `target/smithas-academy.war`

### Step 5: Run on Tomcat
```bash
mvn tomcat7:run
```
The application will start on `http://localhost:8080/smithas`

## Troubleshooting

### Maven: Command Not Found
- **Cause**: Maven not installed or not in PATH
- **Solution**: Follow Maven installation steps above and restart terminal/IDE

### Java: Command Not Found
- **Cause**: Java not installed or not in PATH
- **Solution**: Follow Java installation steps above

### Connection Timeout During Build
- **Cause**: Internet connectivity issue or Maven Central Repository unavailable
- **Solution**: Check internet connection, try again later

### Permission Denied (on Mac/Linux)
```bash
chmod +x mvn
```

### Port 8080 Already in Use
- **Cause**: Another service is using port 8080
- **Solution**: Change port in `pom.xml`:
  ```xml
  <port>8081</port>
  ```
  or kill the process using port 8080

## IDE Setup

### VS Code
1. Install extensions:
   - Extension Pack for Java (Microsoft)
   - Maven for Java (Microsoft)
   - Apache Tomcat for Java (Microsoft)

2. Open project folder in VS Code
3. Maven will automatically detect `pom.xml`
4. Run tasks from VS Code terminal

### Eclipse
1. File > Import > Existing Maven Projects
2. Select the project directory
3. Eclipse will configure the project automatically

### IntelliJ IDEA
1. File > Open
2. Select the project directory
3. IDEA will recognize the Maven project and configure it

## Running the Application

### Method 1: Maven Tomcat Plugin (Recommended for Development)
```bash
mvn tomcat7:run
```
- Application URL: `http://localhost:8080/smithas`
- Press `Ctrl+C` to stop

### Method 2: Deploy to External Tomcat
1. Build: `mvn clean package`
2. Copy `target/smithas-academy.war` to `TOMCAT_HOME/webapps/`
3. Start Tomcat
4. Access: `http://localhost:8080/smithas`

## Project Status

✅ **Completed**
- Project structure created
- pom.xml configured
- Homepage (index.jsp) created
- CSS styling (responsive design)
- JavaScript functionality
- README.md documentation
- web.xml configuration

📋 **Ready for**
- Java controller development
- Database integration
- Enrollment system implementation
- Admin dashboard

## Next Steps

1. **Install Java & Maven** (if not already installed)
2. **Run Maven build**: `mvn clean install`
3. **Start the application**: `mvn tomcat7:run`
4. **Open browser**: Visit `http://localhost:8080/smithas`
5. **Start development**: Add Java controllers as needed

## Support

For issues or questions, refer to:
- Maven Documentation: https://maven.apache.org/
- Java Documentation: https://docs.oracle.com/javase/8/
- Tomcat Documentation: https://tomcat.apache.org/

---

**Note**: All paths use forward slashes on Mac/Linux, backslashes on Windows. Use appropriate path separators for your OS.
