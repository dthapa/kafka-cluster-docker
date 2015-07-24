FROM ubuntu:15.04
MAINTAINER donaththapa@gmail.com

RUN apt-get -y update
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get -y update 
RUN apt-get install -y dialog 
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections 
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections 
RUN apt-get install -y oracle-java8-installer
RUN apt-get install -y vim

EXPOSE 9093

WORKDIR /kafka
RUN wget http://mirror.metrocast.net/apache/kafka/0.8.2.1/kafka_2.11-0.8.2.1.tgz
RUN tar xzf kafka_2.11-0.8.2.1.tgz

WORKDIR /kafka/kafka_2.11-0.8.2.1
ADD ./scripts/start.sh start.sh
ADD ./config/server.properties config/server.properties
CMD ["/bin/bash", "start.sh"]

