<<<<<<< HEAD
# Use Maven to build the project
=======
# Use Maven image to build the application
>>>>>>> f8b43cf179fba3b65133b49f1c5d1e65a5eff49e
FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

<<<<<<< HEAD
# Use OpenJDK 17 Slim for running the application
=======
# Use OpenJDK 17 slim for running the application
>>>>>>> f8b43cf179fba3b65133b49f1c5d1e65a5eff49e
FROM openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# Expose port 8081
EXPOSE 8081

# Command to run the application
CMD ["java", "-jar", "app.jar"]
<<<<<<< HEAD
=======



# Copy the pom.xml and source code


# Build the Maven project


# Stage 2: Run the project


# Copy the JAR file from the build stage


# Expose the port the app runs on


# Run the JAR file
>>>>>>> f8b43cf179fba3b65133b49f1c5d1e65a5eff49e
