FROM eclipse-temurin:17
WORKDIR workspace
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} dispatcher-service.jar
ENTRYPOINT ["java", "-jar", "dispatcher-service.jar"]