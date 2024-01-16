FROM arm64v8/node:12.22.12-alpine3.15

WORKDIR /

RUN set -x \
    && apk add --no-cache git

RUN set -x \
    && git clone https://github.com/ChriD/node-raumserver.git

WORKDIR /node-raumserver

RUN set -x \
    && npm install

EXPOSE 3535

ENTRYPOINT [ "node" ]
CMD [ "raumserver.js" ]