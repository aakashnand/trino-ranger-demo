FROM phusion/baseimage:focal-1.0.0
RUN apt-get clean
RUN apt-get update
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install sudo wget bc python apt-transport-https gnupg
RUN wget -O /root/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.2.23.jar
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
RUN curl -O https://cdn.azul.com/zulu/bin/zulu-repo_1.0.0-2_all.deb
RUN sudo apt-get -y install ./zulu-repo_1.0.0-2_all.deb && sudo apt-get -y update && sudo apt-get -y install zulu11-jdk
WORKDIR /root
ADD https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-2.1.0-admin.tar.gz /root
ENV JAVA_HOME=/usr/lib/jvm/zulu11
