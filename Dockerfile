FROM node:6.1

RUN apt-get update
RUN apt-get install nano

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN npm install --silent; exit 0

ENTRYPOINT npm start

EXPOSE 3000
EXPOSE 3001
