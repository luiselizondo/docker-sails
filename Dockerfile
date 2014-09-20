FROM luis/nodejs
MAINTAINER Luis Elizondo "lelizondo@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN npm install -g sails

RUN rm /etc/supervisor/conf.d/*.conf
ADD ./config/supervisord.conf /etc/supervisor/conf.d/supervisord-nodejs.conf

EXPOSE 3000
EXPOSE 1337

WORKDIR /var/www

VOLUME ["/var/files", "/var/www"]

CMD ["/usr/bin/supervisord", "-n"]
