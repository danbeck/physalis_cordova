# VERSION: 0.0.1
FROM danielbeck/cordova:latest
MAINTAINER Daniel Beck "d.danielbeck@googlemail.com"

# Environment variables
ENV ANT_VERSION 1.9.4
ENV ANT_HOME /opt/apache-ant-${ANT_VERSION}
ENV ANDROID_HOME /opt/android-sdk-linux
ENV ANDROID_SDK_FILENAME android-sdk_r23.0.2-linux.tgz
ENV ANDROID_SDK_URL http://dl.google.com/android/${ANDROID_SDK_FILENAME}
ENV ANDROID_API_LEVELS android-15,android-16,android-17,android-18,android-19,android-20,android-21 
ENV ANDROID_BUILD_TOOLS_VERSION 21.1.0
ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:${ANT_HOME}/bin

 
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk wget
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get autoremove -y
RUN apt-get clean

# install apache ant
RUN cd /opt && \
    wget -q http://www.us.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz && \
    tar -xzf apache-ant-${ANT_VERSION}-bin.tar.gz && \
    rm apache-ant-${ANT_VERSION}-bin.tar.gz

#install android sdk
RUN cd /opt && \
    wget -q ${ANDROID_SDK_URL} && \
    tar -xzf ${ANDROID_SDK_FILENAME} && \
    rm ${ANDROID_SDK_FILENAME} && \
    echo y | android update sdk --no-ui -a --filter tools,platform-tools,${ANDROID_API_LEVELS},build-tools-${ANDROID_BUILD_TOOLS_VERSION}

# create a build to preload the libraries
RUN cd /tmp && cordova create fakeapp && \
 cd /tmp/fakeapp && \
 cordova platform add android && \
 cordova build && \
 cd ~/ && \
 rm -rf /tmp/fakeapp




VOLUME ["/data"]
WORKDIR /data
ENTRYPOINT ["/usr/local/bin/cordova"]
CMD ["-h"]
