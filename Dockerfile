FROM ubuntu

MAINTAINER Manigandan Dharmalingam <manigandan.jeff@gmail.com>

RUN apt-get update
RUN apt-get install -y ffmpeg

ENTRYPOINT ["ffmpeg"]
