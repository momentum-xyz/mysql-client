FROM alpine:3.15.3

ARG UID=1000
ARG GID=1000
RUN addgroup -g $GID -S user && adduser -u $UID -H -S user -G user

RUN apk add --update mysql-client xz && rm -rf /var/cache/apk/*

USER user
ENTRYPOINT ["mysql"]
CMD ["--help"]
