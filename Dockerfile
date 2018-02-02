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

#Expose ports for VNC and remote debug
EXPOSE 5009
EXPOSE 5900

ADD x11vnc-script.sh ./x11vnc-script.sh
RUN chmod +x ./x11vnc-script.sh

ENTRYPOINT xvfb-run --server-args=":99 -screen 0 1920x1080x24 -ac +extension RANDR" ./x11vnc-script.sh

ENV DISPLAY :99