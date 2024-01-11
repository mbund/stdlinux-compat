FROM centos:7.9.2009

RUN yum install -y gcc gdb make

RUN mkdir /app
WORKDIR /app
