FROM partlab/ubuntu

MAINTAINER Manigandan Dharmalingam <manigandan.jeff@gmail.com>

#RUN apt-get update
#RUN apt-get install -y ffmpeg
#ENTRYPOINT ["ffmpeg"]
#-----------------------------------

ENV DEBIAN_FRONTEND noninteractive
ENV INITRD No
ENV LANG en_US.UTF-8
ENV GOVERSION 1.8.3
ENV GOROOT /opt/go
ENV GOPATH /root/.go

RUN cd /opt && wget https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz && \
    tar zxf go${GOVERSION}.linux-amd64.tar.gz && rm go${GOVERSION}.linux-amd64.tar.gz && \
    ln -s /opt/go/bin/go /usr/bin/ && \
    mkdir $GOPATH

CMD ["/usr/bin/go"]

# install golang - glide
RUN curl https://glide.sh/get | sh
