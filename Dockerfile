FROM ubuntu:latest

RUN apt update && apt install -y unzip maven wget


ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
RUN export JAVA_HOME

RUN wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip

RUN unzip aws-sam-cli-linux-x86_64.zip -d sam-installation

RUN ./sam-installation/install