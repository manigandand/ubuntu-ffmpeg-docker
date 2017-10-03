FROM partlab/ubuntu

MAINTAINER Manigandan Dharmalingam <manigandan.jeff@gmail.com>

#RUN apt-get update
#RUN apt-get install -y ffmpeg
#ENTRYPOINT ["ffmpeg"]
#-----------------------------------

ENV DEBIAN_FRONTEND noninteractive
ENV GOVERSION 1.8.3

RUN cd /opt && wget https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz && \
    tar zxf go${GOVERSION}.linux-amd64.tar.gz && rm go${GOVERSION}.linux-amd64.tar.gz && \
    mv go /usr/local/
#-----------------------------------
# Set environment variables.
ENV INITRD No
ENV LANG en_US.UTF-8

ENV GOROOT /usr/local/go
ENV GOPATH /go
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH

# install golang - glide
RUN curl https://glide.sh/get | sh
#-----------------------------------

#CMD ["/usr/bin/go"]
