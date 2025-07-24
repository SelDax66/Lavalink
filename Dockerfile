FROM eclipse-temurin:17-jdk

RUN apt update && apt install -y git

WORKDIR /app

# Clone Lavalink repo
RUN git clone https://github.com/freyacodes/Lavalink.git . \
 && ./gradlew build --no-daemon

COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
