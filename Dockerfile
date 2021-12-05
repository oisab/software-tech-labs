FROM maven:3.8.4

COPY /target/simpleapi-0.0.1-SNAPSHOT.jar myapi.jar
ENTRYPOINT ["java", "-Djava.security.edg=file:/dev/./urandom","-jar", "/myapi.jar"]
