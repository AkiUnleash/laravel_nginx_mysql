FROM nginx:1.20-alpine

ARG ENV

ENV TZ Asia/Tokyo

RUN chmod 755 -R /root

COPY ./docker/web/${ENV}/default.conf /etc/nginx/conf.d/default.conf