FROM ubuntu

MAINTAINER Manigandan Dharmalingam <manigandan.jeff@gmail.com>

RUN apt-get update
RUN apt-get dist-upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-commo

RUN add-apt-repository ppa:mc3man/trusty-media
RUN apt-get update
RUN apt-get install ffmpeg
