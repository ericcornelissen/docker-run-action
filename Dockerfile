FROM docker:20.10

RUN apk add --no-cache bash && \
    rm -rf /lib/apk/db/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
