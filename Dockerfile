FROM ubuntu:latest

MAINTAINER Manigandan Dharmalingam <manigandan.jeff@gmail.com>

RUN apt-get update
RUN apt-get install -y wget gcc curl
#-----------------------------------
# Install ffmpeg
RUN wget -P /tmp https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz
RUN tar -C /tmp -xzf /tmp/ffmpeg-release-64bit-static.tar.xz
RUN cd /tmp && ls
RUN cd /tmp/ffmpeg-3.3.2-64bit-static && \
    cp ffmpeg /usr/bin/ffmpeg && \
    cp ffprobe /usr/bin/ffprobe && \
    chmod +x /usr/bin/ffmpeg && \
    chmod +x /usr/bin/ffprobe
#-----------------------------------
# Install Golang
RUN wget -P /tmp https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf /tmp/go1.8.3.linux-amd64.tar.gz
RUN rm /tmp/go1.8.3.linux-amd64.tar.gz

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

WORKDIR $GOPATH
#-----------------------------------
# Install golang - glide
RUN curl https://glide.sh/get | sh
