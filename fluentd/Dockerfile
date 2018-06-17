# Use the Ruby base image
FROM ruby:latest

RUN apt-get -y update
RUN gem install fluentd
RUN gem install fluent-plugin-elasticsearch
RUN mkdir -p /fluentd/etc
RUN mkdir -p /var/log/nginx
COPY fluentd.conf /fluentd/etc
EXPOSE 24224
CMD exec fluentd -c /fluentd/etc/fluentd.conf
