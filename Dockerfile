FROM node:16.10-slim AS build

WORKDIR /nextapp

COPY package.json ./
RUN npm install
COPY . .

RUN npm run build
RUN npm run export

FROM nginx

COPY --from=build /nextapp/exported-webapp /usr/share/nginx/html