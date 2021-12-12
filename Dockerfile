FROM openjdk:11-jdk-slim
VOLUME /tpm
LABEL maintainer="alvesdesouzaalex@gmail.com"
EXPOSE 9090
ARG JAR_FILE="/home/runner/work/simple-app/simple-app/target/simple-app-0.0.1-SNAPSHOT.jar"
COPY ${JAR_FILE} app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]