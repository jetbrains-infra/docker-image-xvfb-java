FROM karashevich/java-xvfb:latest

# basics
RUN apt-get update
RUN apt-get install -y openssl libreadline6 libreadline6-dev curl zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion pkg-config

# install RVM(https://github.com/rvm/ubuntu_rvm)
RUN apt-get -y install software-properties-common
RUN apt-add-repository -y ppa:rael-gc/rvm
RUN apt-get update
RUN apt-get -y install rvm
RUN . /usr/share/rvm/scripts/rvm

# install Ruby, bundler
RUN /bin/bash -l -c "rvm install 2.5.0"
RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"