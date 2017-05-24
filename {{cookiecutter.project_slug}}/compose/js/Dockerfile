FROM node:7.7.3

COPY ./package.json /package.json

RUN npm install -gq gulp-cli
RUN yarn

WORKDIR /app

CMD ["gulp", "dev"]
