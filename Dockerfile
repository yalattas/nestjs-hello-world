FROM node:16-alpine

WORKDIR /app

COPY package*.json .
RUN apk add --no-cache curl

RUN npm install --quite

COPY . .

EXPOSE 3000

ENTRYPOINT ["npm", "run", "start:prod"]