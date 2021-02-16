FROM node:14.10.1
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node_modules/.bin/ng", "test" ]
