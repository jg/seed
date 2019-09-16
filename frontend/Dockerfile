FROM node:8-alpine

RUN npm install -g create-react-app

WORKDIR /srv/frontend
COPY package.json yarn.lock ./
COPY . ./srv/frontend
RUN npm install