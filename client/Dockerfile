FROM node:24 AS build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm ci
RUN npm test

ARG VITE_BACKEND_URL=/api
ENV VITE_BACKEND_URL=$VITE_BACKEND_URL

RUN npm run build

FROM nginx:1.29-alpine

COPY --from=build-stage /usr/src/app/dist /usr/share/nginx/html