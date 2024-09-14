# First stage: Build the application
FROM ubuntu:latest AS build

# Update package lists and install JDK and other necessary packages
RUN apt-get update && apt-get install -y openjdk-17-jdk curl

# Set the working directory for the build
WORKDIR /app

# Copy the project files into the container
COPY . .

# Make the Gradle wrapper executable
RUN chmod +x ./gradlew

# Build the project using the Gradle wrapper (without daemon to save memory)
RUN ./gradlew bootJar --no-daemon

# Second stage: Run the application
FROM openjdk:17-jdk-slim

# Set the working directory for the runtime
WORKDIR /app

# Expose the application port (you mentioned 8888)
EXPOSE 8080

# Copy the jar file from the build stage
COPY --from=build /app/build/libs/*.jar app.jar

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
