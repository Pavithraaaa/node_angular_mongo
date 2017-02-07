FROM ubuntu:latest

RUN mkdir -p /opt/app

WORKDIR /opt/app

ADD $WORKSPACE/. /opt/app

RUN apt-get update && apt-get install -y nginx

ADD node-v6.9.4-linux-x64.tar.gz /opt/

RUN chmod -R 755 /opt/node-v6.9.4-linux-x64

RUN ln -s /opt/node-v6.9.4-linux-x64/bin/node /usr/bin/node

RUN ln -s /opt/node-v6.9.4-linux-x64/bin/npm /usr/bin/npm

RUN npm install

#RUN npm run autoupdate

EXPOSE 80 3306 3000 27017

#CMD ["mysqld"]

#CMD ["nginx", "-g", "daemon off;"]

CMD ["node", "server.js"]
