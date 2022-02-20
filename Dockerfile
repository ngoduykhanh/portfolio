# build stage
FROM arm32v7/node:lts-alpine as build-stage
WORKDIR /app
COPY package.json ./
COPY yarn.lock ./
RUN yarn install
COPY . .
RUN yarn run build

# production stage
FROM arm32v7/nginx:stable-alpine as production-stage
COPY --from=build-stage /app/files/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build-stage /app/files/pgp.asc /usr/share/nginx/html/pgp.asc
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
