# Use Maven to build the project
FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Use OpenJDK 17 Slim for running the application
FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# Expose port 8081
EXPOSE 8081

# Command to run the application
CMD ["java", "-jar", "app.jar"]
