FROM maven:latest
RUN maven -r requirement
WORKDIR /APP
COPY . .
ENTRYPOINT ["java","-jre","target/class/jenkin/App.class"]