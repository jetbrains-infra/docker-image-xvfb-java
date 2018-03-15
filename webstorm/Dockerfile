FROM docker-registry.labs.intellij.net/karashevich/java-xvfb:latest

# set Chrome repo
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# install Chrome
RUN sudo apt-get update
RUN apt-get -y install google-chrome-stable

# install node
RUN apt-get install --yes curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN apt-get install --yes build-essential
