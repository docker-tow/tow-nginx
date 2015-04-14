FROM debian:jessie
MAINTAINER Nikolay Yurin <yurinnick@outlook.com>

RUN apt-get update && \
    apt-get install -y nginx

RUN rm -rf /var/lib/apt/lists/* && \
    chown -R www-data:www-data /var/lib/nginx

VOLUME /var/www/html
WORKDIR /etc/nginx
EXPOSE 80

ENV CONTENT This text from the CONTENT variable

CMD ["nginx", "-g", "daemon off;"]
