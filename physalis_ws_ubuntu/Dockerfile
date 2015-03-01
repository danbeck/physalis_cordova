# VERSION: 0.0.2
FROM danielbeck/cordova-ubuntu
MAINTAINER Daniel Beck "d.danielbeck@googlemail.com"

# Environment variables
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Install java. Needed for the the play webservice
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk git

RUN apt-get autoremove -y
RUN apt-get clean


#ENTRYPOINT ["/usr/local/bin/cordova"]
#CMD ["-h"]
#ENTRYPOINT ["/bin/bash"]

