FROM node:23-alpine3.20

WORKDIR /app

COPY src/package.json src/package-lock.json .

RUN npm install

COPY ./src entry-point.sh .

RUN chmod +x entry-point.sh

ENTRYPOINT ["./entry-point.sh"]
