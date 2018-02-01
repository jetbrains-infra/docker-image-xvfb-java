FROM ubuntu:latest

# Install VNC and xvfb
RUN apt-get update -y \
  && apt-get -y install \
    xvfb \
    x11vnc \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*


#Update system
RUN apt-get update -qqy \
  && apt-get -qqy --no-install-recommends install \
    bzip2 \
    ca-certificates \
    default-jre \
    sudo \
    unzip \
    wget

#Install default JRE
RUN sudo apt-get -y install default-jre

EXPOSE 5901
EXPOSE 5900

ENV DISPLAY :1