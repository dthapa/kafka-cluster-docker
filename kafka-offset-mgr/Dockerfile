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

EXPOSE 8081

RUN wget https://github.com/quantifind/KafkaOffsetMonitor/releases/download/v0.2.1/KafkaOffsetMonitor-assembly-0.2.1.jar
WORKDIR /
ADD ./scripts/start.sh start.sh
CMD ["/bin/bash", "start.sh"]

