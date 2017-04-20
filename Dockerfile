FROM ubuntu:latest


#RUN npm run autoupdate

EXPOSE 80 3306 3000 27017

#CMD ["mysqld"]

#CMD ["nginx", "-g", "daemon off;"]

CMD ["node", "server.js"]
