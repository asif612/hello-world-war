FROM ubuntu
WORKDIR /app
RUN apt-get update -y
RUN apt-get install default-jre -y
RUN apt-get install maven -y
COPY . .
RUN mvn clean package
