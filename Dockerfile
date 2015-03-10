FROM luis/nodejs
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

RUN npm install -g sails

RUN rm /etc/supervisor/conf.d/*.conf
ADD ./config/supervisord.conf /etc/supervisor/conf.d/supervisord-nodejs.conf

EXPOSE 1337
