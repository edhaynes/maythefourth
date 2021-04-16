FROM registry.access.redhat.com/ubi8/python-38
#FROM python:3.7-alpine
USER root
ENV mode stdout
ENV input_file sample_movies/sw1.txt

RUN yum -y install bash
RUN mkdir /app
WORKDIR /app
COPY . /app

EXPOSE 23

CMD python ascii_telnet_server.py --$mode -f $input_file && echo ""
