# VERSION: 0.0.1
FROM ubuntu:14.10
MAINTAINER Daniel Beck "d.danielbeck@googlemail.com"

# Environment variables

#Installing necessary binaries 
RUN apt-get update -y
RUN apt-get install -y python-software-properties software-properties-common click-dev schroot
RUN add-apt-repository ppa:cordova-ubuntu/ppa
RUN apt-get update -y
RUN apt-get install cordova-cli -y
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get autoremove -y
RUN apt-get clean

#create a click chroot for the armhf architecture
RUN click chroot -a armhf create

#Download libraries
RUN cd /tmp && cordova create fakeapp && \
 cd /tmp/fakeapp && \
 cordova platform add ubuntu && \
 cordova build && \
 cd ~/ && \
 rm -rf /tmp/fakeapp

VOLUME ["/data"]
WORKDIR /data
ENTRYPOINT ["cordova"]
CMD ["-h"]
