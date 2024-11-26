# Use a base image with Java runtime
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/spring-petclinic-*.jar app.jar

# Expose the port your app runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "app.jar"]
