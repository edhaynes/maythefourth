FROM registry.access.redhat.com/ubi8/python-38

USER root

RUN yum -y install bash

ENV mode stdout
ENV input_file sample_movies/sw1.txt

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN useradd -ms /bin/bash user1

RUN chown -R user1:user1 /app

EXPOSE 23

USER user1


CMD python ascii_telnet_server.py --$mode -f $input_file && echo ""
