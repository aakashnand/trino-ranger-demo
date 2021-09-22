FROM phusion/baseimage:focal-1.0.0
RUN apt-get clean
RUN apt-get update
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install curl vim sudo openjdk-11-jdk wget bc git g++ gcc python python3 python3-pip apt-transport-https ca-certificates
RUN wget -O /usr/share/java/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.2.23.jar
WORKDIR /root
RUN wget https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v2.1.0/ranger-2.1.0-admin.tar.gz
RUN tar xvf ranger-2.1.0-admin.tar.gz
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64