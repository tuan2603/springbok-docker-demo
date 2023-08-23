# syntax=docker/dockerfile

FROM arm64v8/openjdk:17-ea-17-jdk

# thu muc lam viec
# working directory
WORKDIR /app

#copy from your Host(PC) to container
COPY .mvn/ .mvn
COPY mvnw ./
COPY pom.xml ./

#run this inside the image
RUN ./mvnw dependency:go-offline
COPY src ./src
CMD ["./mvnw spring-boot:run"]






