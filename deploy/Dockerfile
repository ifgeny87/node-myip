FROM node:18-alpine
WORKDIR /opt/app
COPY src/main.js ./
COPY package.json ./
RUN npm install express
EXPOSE 3001
ENTRYPOINT node main.js
