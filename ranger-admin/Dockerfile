FROM phusion/baseimage:focal-1.0.0
RUN apt-get clean
RUN apt-get update
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install ca-certificates curl sudo wget bc apt-transport-https gnupg python-is-python3 python3-venv
RUN curl -s https://repos.azul.com/azul-repo.key | sudo gpg --dearmor -o /usr/share/keyrings/azul.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" | sudo tee /etc/apt/sources.list.d/zulu.list
RUN wget -O /root/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.2.23.jar
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
RUN sudo apt-get -y update && sudo apt-get -y install zulu11-jdk
WORKDIR /root
ADD https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-3.0.0-SNAPSHOT-admin.tar.gz /root
ENV JAVA_HOME=/usr/lib/jvm/zulu11
