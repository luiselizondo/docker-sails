FROM luis/nodejs
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

RUN npm install -g sails

EXPOSE 1337
EXPOSE 3000
