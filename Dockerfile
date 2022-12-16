FROM node:7-onbuild

EXPOSE 8080

ONBUILD ARG NODE_ENV
ONBUILD ENV NODE_ENV $NODE_ENV
ONBUILD COPY package.json
ONBUILD RUN npm install && npm cache clean
ONBUILD COPY .

COPY server.js .

CMD node server.js
