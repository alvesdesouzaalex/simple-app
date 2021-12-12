FROM openjdk:11-jdk-slim
VOLUME /tpm
LABEL maintainer="alvesdesouzaalex@gmail.com"
EXPOSE 9090
ADD /home/runner/work/simple-app/simple-app/target/simple-app-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]