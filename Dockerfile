FROM node:12.10.0

RUN mkdir -p /app

WORKDIR /app

ADD package.json /app/

RUN npm install

EXPOSE 5000

COPY . /app/

CMD node index.js