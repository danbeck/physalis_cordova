# VERSION: 0.0.1
FROM ubuntu:14.10
MAINTAINER Daniel Beck "d.danielbeck@googlemail.com"

# Environment variables

RUN apt-get update
RUN apt-get install -y nodejs npm openjdk-8-jdk wget libncurses5 lib32stdc++6 lib32z1 

RUN rm -rf /var/lib/apt/lists/*
RUN apt-get autoremove -y
RUN apt-get clean

# install cordova
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g cordova shelljs


#Download libraries
RUN cd /tmp && cordova create fakeapp && \
 cd /tmp/fakeapp && \
 cordova platform add firefoxos && \
 cordova build && \
 cd ~/ && \
 rm -rf /tmp/fakeapp

VOLUME ["/data"]
WORKDIR /data
ENTRYPOINT ["/usr/local/bin/cordova"]
CMD ["-h"]
