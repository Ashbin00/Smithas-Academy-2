# Smitha's Academy - Development Commands Notepad

## Quick Start (Copy & Paste)

```powershell
# 1. Kill Tomcat
Stop-Process -Name "java" -Force -ErrorAction SilentlyContinue

# 2. Set Java Home
$env:JAVA_HOME="C:\Java"

# 3. Navigate to project
cd "c:\Users\Ashbin George\mynewproject"

# 4. Clean & Compile
C:\Maven\bin\mvn.cmd clean compile

# 5. Start Tomcat
C:\Maven\bin\mvn.cmd tomcat7:run
```

**Application runs at:** http://localhost:8080/

---

## Individual Commands

### Kill Tomcat
```powershell
Stop-Process -Name "java" -Force -ErrorAction SilentlyContinue
```

### Set Java Home (do this once per terminal session)
```powershell
$env:JAVA_HOME="C:\Java"
```

### Navigate to Project
```powershell
cd "c:\Users\Ashbin George\mynewproject"
```

### Compile Code
```powershell
C:\Maven\bin\mvn.cmd clean compile
```

### Build Package (WAR file)
```powershell
C:\Maven\bin\mvn.cmd clean package
```

### Start Tomcat Server
```powershell
C:\Maven\bin\mvn.cmd tomcat7:run
```

### Stop Tomcat (while running)
Press `Ctrl+C` in the terminal

---

## Workflow for Code Changes

### If you edited **JSP, CSS, or JavaScript files:**
1. Save the file in VS Code
2. Refresh browser: `F5` or `Ctrl+R`
3. Done! No recompile needed

### If you edited **Java files** (HomeController.java, Course.java, etc.):
1. Save the file in VS Code
2. Stop Tomcat: Press `Ctrl+C`
3. Recompile: `C:\Maven\bin\mvn.cmd clean compile`
4. Restart: `C:\Maven\bin\mvn.cmd tomcat7:run`
5. Refresh browser: `F5`

### If you edited **pom.xml:**
1. Stop Tomcat: Press `Ctrl+C`
2. Rebuild: `C:\Maven\bin\mvn.cmd clean package`
3. Restart: `C:\Maven\bin\mvn.cmd tomcat7:run`
4. Refresh browser: `F5`

---

## Useful Links

- **Application:** http://localhost:8080/
- **Project Directory:** c:\Users\Ashbin George\mynewproject
- **Java Installation:** C:\Java
- **Maven Installation:** C:\Maven

---

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Port 8080 already in use | `Stop-Process -Name "java" -Force` |
| Cannot delete target folder | Kill Tomcat first, then `mvn clean` |
| JAVA_HOME not defined | `$env:JAVA_HOME="C:\Java"` |
| Maven not found | Use full path: `C:\Maven\bin\mvn.cmd` |

---

**Last Updated:** May 14, 2026
