# FROM openjdk:18-jdk-alpine
# WORKDIR /
# ADD target/authorization-micro-service.jar authorization-micro-service.jar
# EXPOSE 8100
# CMD java -jar authorization-micro-service.jar

FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8100
ADD target/*.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]