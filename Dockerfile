FROM node:10

WORKDIR /webapp
RUN npm i @dollarshaveclub/cloudworker
COPY ./dist /webapp/dist

CMD ["/webapp/node_modules/.bin/cloudworker", "/webapp/dist/index.js"]
