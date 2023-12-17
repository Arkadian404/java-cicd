FROM openjdk:17-alpine
LABEL maintainer="Zafu"
EXPOSE 8080
ARG JAR_FILE=target/cicd.jar
ADD ${JAR_FILE} cicd.jar
ENTRYPOINT ["java","-jar","/cicd.jar"]