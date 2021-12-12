FROM openjdk:11-jdk-slim
VOLUME /tpm
LABEL maintainer="alvesdesouzaalex@gmail.com"
EXPOSE 9090
RUN echo "${LS}"
RUN sleep 30
ARG JAR_FILE=simple-app
COPY ${JAR_FILE} app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]