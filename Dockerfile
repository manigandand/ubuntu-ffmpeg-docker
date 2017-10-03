FROM ubuntu

MAINTAINER Manigandan Dharmalingam <manigandan.jeff@gmail.com>

#RUN apt-get update
#RUN apt-get dist-upgrade -y
#RUN apt-get install software-properties-common python-software-properties

#RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
#RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties
#RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common

#RUN add-apt-repository ppa:mc3man/trusty-media
RUN apt-get update
RUN apt-get install -y ffmpeg
