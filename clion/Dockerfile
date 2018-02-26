FROM docker-registry.labs.intellij.net/karashevich/java-xvfb:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential

RUN update-alternatives --install /bin/sh sh /bin/dash 10 \
 && update-alternatives --install /bin/sh sh /bin/bash 100