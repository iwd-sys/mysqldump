FROM alpine:3.1
RUN apk add --update mysql-client && rm -rf /var/cache/apk/*
RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN mkdir /sql
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]