# Use the official Eclipse Temurin (OpenJDK) image for Java 21
FROM eclipse-temurin:21


WORKDIR /opt/app


ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Expose the port your application runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]