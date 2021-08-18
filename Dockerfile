FROM node:14

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm run test

COPY . .

EXPOSE 3000

CMD ["npm","run","dev"]