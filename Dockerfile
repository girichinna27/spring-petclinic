# Use a base image with Java runtime
#FROM openjdk:17-jdk-alpine
FROM bellsoft/liberica-openjre-alpine-musl:17

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
## New Code
