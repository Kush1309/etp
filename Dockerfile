FROM maven:latest
RUN mvn clean compile
WORKDIR /APP
COPY . .
ENTRYPOINT ["java","-jre","target/class/jenkin/App.class"]