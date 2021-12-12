FROM adoptopenjdk/openjdk11
LABEL maintainer="alvesdesouzaalex@gmail.com"
EXPOSE 8080
ADD target/simple-app-0.0.1-SNAPSHOT.jar simple-app.jar
RUN printf "IMAGE_VERSION=simple-app" > version.properties
COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]