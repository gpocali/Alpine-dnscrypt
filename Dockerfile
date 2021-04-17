FROM alpine:latest

RUN apk add dnscrypt-proxy

RUN mkdir /data

COPY ./dnscrypt-entry /bin/dnscrypt-entry

RUN chmod +x /bin/dnscrypt-entry

ENTRYPOINT ["/bin/dnscrypt-entry"]
