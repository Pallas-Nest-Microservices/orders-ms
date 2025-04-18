FROM node:21-alpine3.19

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npx prisma generate
RUN npx prisma migrate

EXPOSE 3000