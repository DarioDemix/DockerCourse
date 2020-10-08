FROM node:alpine AS myBase

WORKDIR "/app"

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

FROM nginx

COPY --from=myBase /app/build /usr/share/nginx/html

