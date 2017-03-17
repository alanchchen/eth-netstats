FROM node:6-alpine
MAINTAINER Alan Chen <alan@am.is>

ADD . /eth-netstats
RUN apk add --update git && \
    cd /eth-netstats && npm install && \
    npm install -g grunt-cli && \
    grunt

WORKDIR /eth-netstats

CMD ["npm", "start"]
