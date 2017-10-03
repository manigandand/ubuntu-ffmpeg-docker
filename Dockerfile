FROM ubuntu

MAINTAINER Manigandan Dharmalingam <manigandan.jeff@gmail.com>

RUN add-apt-repository ppa:mc3man/trusty-media &&\
    apt-get update &&\
    apt-get install ffmpeg &&\
    apt-get install frei0r-plugins
