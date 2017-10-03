# ubuntu-ffmpeg-docker
Docker Image for ffmpeg ubuntu 16.04

This is a minimal Ubuntu 16.04 based ffmpeg image.

This image can be used to execute ffmpeg shell operations

Pull:
> docker pull manigandanjeff/ubuntu-ffmpeg-docker

Start the container:

> docker run -it --name ffmpeg-image manigandanjeff/ubuntu-ffmpeg-docker

Once you exit from the container, re-connect using docker start docker attach:

> docker start ffmpeg-image

followed by

> docker attach ffmpeg-image
