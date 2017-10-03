FROM ubuntu

MAINTAINER Manigandan Dharmalingam <manigandan.jeff@gmail.com>

RUN sudo add-apt-repository ppa:mc3man/trusty-media
RUN apt-get update
RUN apt-get install ffmpeg
