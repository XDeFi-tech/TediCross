FROM node:14-alpine

WORKDIR /opt/XDEFI/

COPY . .

RUN npm install --production

# The node user (from node:12-alpine) has UID 1000, meaning most people with single-user systems will not have to change UID
USER node

VOLUME /opt/XDEFI/data/

ENTRYPOINT /usr/local/bin/npm start -- -c data/settings.yaml
