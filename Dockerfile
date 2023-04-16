FROM openjdk:latest

WORKDIR /usr/src/app

COPY . .

RUN microdnf install findutils

RUN ./gradlew build

EXPOSE 8080

CMD java -jar build/libs/spring-hello-world-0.0.1-SNAPSHOT.jar