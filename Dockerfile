FROM openjdk:8-jdk-alpine

ARG JAR_FILE

RUN mkdir -p /apps
COPY ./target/${JAR_FILE} /apps/app.jar
COPY ./entrypoint.sh /apps/entrypoint.sh

RUN chmod +x /apps/entrypoint.sh
CMD ["/apps/entrypoint.sh"]
#FROM maven:3.8.4
#
#COPY /target/simpleapi-0.0.1-SNAPSHOT.jar myapi.jar
#ENTRYPOINT ["java", "-Djava.security.edg=file:/dev/./urandom", "-jar", "/myapi.jar"]