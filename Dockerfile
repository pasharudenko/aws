FROM node:20-alpine

WORKDIR /app

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY index.js .

EXPOSE 3000

CMD ["node", "index.js"] 