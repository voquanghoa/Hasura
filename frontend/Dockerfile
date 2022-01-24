FROM node:14

WORKDIR /usr/src/app

COPY svelte.config.js ./
COPY package-lock.json ./
COPY package*.json ./
COPY .npmrc ./

COPY src ./src
COPY static ./static

RUN npm install

CMD [ "npm", "run", "dev" ]