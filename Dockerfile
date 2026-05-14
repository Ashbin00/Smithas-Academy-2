# Use Maven with Java 8 to build and run
FROM maven:3.8.6-openjdk-8

# Set working directory
WORKDIR /app

# Copy project files
COPY pom.xml .
COPY src ./src

# Build the project (skip tests for faster build)
RUN mvn clean package -DskipTests -q

# Expose port (Railway will set $PORT env var)
EXPOSE 8080

# Run Tomcat on port 8080 (Railway requires binding to 0.0.0.0)
CMD ["mvn", "tomcat7:run"]
