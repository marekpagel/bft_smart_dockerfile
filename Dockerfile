FROM ubuntu:16.04
RUN apt-get update -y
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update -y
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java7-installer git

RUN git clone https://github.com/bft-smart/library.git
