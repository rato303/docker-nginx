FROM ubuntu:14.04

MAINTAINER Toshiya Kimura

RUN apt-get install -y curl && \
  touch /etc/apt/sources.list.d/nginx.list && \
  echo "deb http://nginx.org/packages/ubuntu/ precise nginx" >> /etc/apt/sources.list.d/nginx.list && \
  echo "deb-src http://nginx.org/packages/ubuntu/ precise nginx" >> /etc/apt/sources.list.d/nginx.list && \
  curl http://nginx.org/keys/nginx_signing.key | apt-key add - && \
  apt-get update && \
  apt-get install -y nginx && \
  apt-get clean

COPY etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
