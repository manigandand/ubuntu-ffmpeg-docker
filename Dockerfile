#!/bin/bash
FROM jheise/ubuntu-golang

MAINTAINER Manigandan Dharmalingam <manigandan.jeff@gmail.com>

#RUN apt-get update
#RUN apt-get install -y ffmpeg
#ENTRYPOINT ["ffmpeg"]
#-----------------------------------
# Install Go
#RUN curl -O https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz && \
    #tar -xvf go1.8.linux-amd64.tar.gz && \
    #mv go /usr/local

#RUN export PATH=$PATH:/usr/local/go/bin
#RUN echo "go env"
#RUN go version && go env

#CMD ["/usr/bin/go"]
#-----------------------------------
# install golang - glide
RUN curl https://glide.sh/get | sh
