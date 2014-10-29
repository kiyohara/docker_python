FROM ubuntu

MAINTAINER Tomokazu Kiyohara "tomokazu.kiyohara@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y python3-dev
RUN apt-get install -y libffi-dev
RUN apt-get install -y libssl-dev

ADD https://raw.github.com/pypa/pip/master/contrib/get-pip.py /tmp/get-pip.py
RUN cat /tmp/get-pip.py | python3

CMD [ "/bin/bash" ]
