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
RUN apt-get install -y git
RUN echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-get update
RUN apt-get install -y --force-yes sbt

RUN apt-get install -y unzip

ADD ./kafka-manager /
RUN unzip /kafka-manager-1.2.6.zip

ADD ./config/application.conf /kafka-manager-1.2.6/conf/application.conf
ADD ./scripts/start.sh start.sh

EXPOSE 8080

CMD ["/bin/bash", "start.sh"]
