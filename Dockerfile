FROM ubuntu:14.04

RUN mkdir -p /opt/app
WORKDIR /opt/app
ADD /opt/node_angular_mongo/. /opt/app

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/npm -y && \
    apt-get install -y npm && \
    apt-get clean


EXPOSE 3000
CMD [ "node", "server.js" ]
