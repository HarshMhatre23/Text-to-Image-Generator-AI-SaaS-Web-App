FROM node:22-alpine

WORKDIR /app

RUN apk add --no-cache python3 make g++

COPY server/package*.json ./

RUN npm install

COPY server .

EXPOSE 4000

CMD ["npm","start"]