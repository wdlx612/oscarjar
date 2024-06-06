# Use a lightweight base image
FROM adoptopenjdk/openjdk11:alpine-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY OscarMovieProject-0.0.1-SNAPSHOT.jar /app/OscarMovieProject.jar

# Expose the port the app runs on
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "OscarMovieProject.jar"]
