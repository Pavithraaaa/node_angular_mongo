FROM ubuntu:14.04

RUN mkdir -p /opt/app
WORKDIR /opt/app
ADD /opt/node_angular_mongo/ /opt/app

RUN apt-get update -yq && apt-get upgrade -yq && \
    apt-get install -yq curl git ssh sshpass
#RUN apt-get -q -y install nodejs npm build-essential
#RUN ln -s "$(which nodejs)" /usr/bin/node
RUN npm install


EXPOSE 3000
CMD [ "node", "server.js" ]
