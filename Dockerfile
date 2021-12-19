FROM node:12-alpine

LABEL org.opencontainers.image.source = "https://github.com/PremoWeb/deploy-to-deploy"

RUN apk add --no-cache git \
 && npm i -g caprover \
 && npm cache clean --force

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh","/entrypoint.sh"]
