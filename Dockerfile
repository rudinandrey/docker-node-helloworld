FROM node:17-alpine3.14

WORKDIR /usr/src/app

COPY src/package*.json ./
RUN npm install -g npm@8.7.0
RUN npm ci --only=production

COPY src/index.js .
EXPOSE 3000
CMD ["node", "index.js"]
