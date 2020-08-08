FROM python:3.6.6

SHELL ["/bin/bash", "-c"]

RUN apt-get update
RUN apt-get -y install vim

RUN mkdir -p /opt/app
RUN pip install --upgrade pip

ENV PYTHONPATH "${PYTHONPATH}:/opt/app/"

ADD . /opt/app
WORKDIR /opt/app
RUN pip install -r requirements.txt
RUN pip install .
