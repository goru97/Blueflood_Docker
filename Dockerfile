FROM java:7

MAINTAINER gaurav.bajaj@rackspace.com

RUN apt-get update
ADD ./configs/ .

RUN wget https://github.com/rackerlabs/blueflood/releases/download/rax-release-v1.0.1956/blueflood-all-2.0.0-SNAPSHOT-jar-with-dependencies.jar

CMD ["/startBlueflood.sh"]

EXPOSE 19000
EXPOSE 20000