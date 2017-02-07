FROM ubuntu:14.04

RUN mkdir -p /opt/app
WORKDIR /opt/app
ADD $WORKSPACE/. /opt/app

#RUN apt-get update && \
#    apt-get upgrade -y && \
 #   apt-get install -y  software-properties-common && \
RUN npm install   

EXPOSE 3000
CMD [ "node", "server.js" ]
