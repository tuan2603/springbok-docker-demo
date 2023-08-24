# syntax=docker/dockerfile:1
FROM arm64v8/openjdk:17-oraclelinux8 as base
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve
COPY src ./src

FROM base as development
CMD ["./mvnw", "spring-boot:run", "-Dspring-boot.run.profiles=postgres"]

FROM base as build
RUN ./mvnw package

FROM arm64v8/openjdk:17-oraclelinux8 as production
EXPOSE 8087
COPY --from=build /app/target/talan-*.jar /talan.jar
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/talan.jar"]






