# VERSION: 0.0.1
FROM danielbeck/cordova-base:latest
MAINTAINER Daniel Beck "d.danielbeck@googlemail.com"

# Environment variables

RUN apt-get update
RUN apt-get install -y vim click click-dev schroot
#python-software-properties software-properties-common 

# RUN rm -rf /var/lib/apt/lists/*
RUN apt-get autoremove -y
RUN apt-get clean


# Download libraries
RUN cd /tmp && cordova create fakeapp && cd /tmp/fakeapp && cordova platform add ubuntu

# This does not work, because "build" cannot be runned in the privileged mode.
# RUN click chroot -aarmhf -f ubuntu-sdk-14.04 create
# RUN cordova build 


# Delete fake application, since it isn't needed anymore
RUN cd ~/ && rm -rf /tmp/fakeapp

VOLUME ["/data"]
WORKDIR /data
#ENTRYPOINT ["/usr/local/bin/cordova"]
#CMD ["-h"]
#ENTRYPOINT ["/bin/bash"]

